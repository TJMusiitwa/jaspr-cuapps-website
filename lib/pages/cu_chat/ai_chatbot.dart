import 'package:cuapps_website/components/product_page.dart';
import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// CU Chat Member-Facing AI Chatbot landing page at `/cu-chat/ai-chatbot`.
class AiChatbotPage extends StatelessComponent {
  const AiChatbotPage({super.key});

  @override
  Component build(BuildContext context) {
    return ProductPage(
      slug: 'ai-chatbot',
      chat: true,
      eyebrow: 'CU Chat / Member-Facing AI Chatbot',
      title: 'Answers for members.',
      titleAccent: 'More time for your team.',
      lede:
          'A front-line chatbot that understands your members’ needs. It learns everything about your credit union and gives members a personalised response, every time, at any hour.',
      highlights: const [
        'Available 24/7',
        'Unlimited members',
        'Staff take-over when needed',
      ],
      mockup: chatbotMockup(),
      mockupLabel:
          'A branded credit union chatbot answering a loan question with an in-chat loan calculator',
      featuresEyebrow: 'Chatbot features',
      featuresTitle: 'A front-line chatbot built around your credit union.',
      featuresBody:
          'Interactive loan calculator, bespoke branding, lead capture, weekly insights, unlimited members and staff take-over when needed. Available on its own or alongside the Internal Knowledge Agent.',
      features: const [
        (
          'headset',
          'Free up phone lines',
          'The chatbot handles the simple, frequently asked questions members often phone about, so staff can focus on more complex queries.',
        ),
        (
          'palette',
          'Bespoke colours and branding',
          'Colours, chatbot name, icons, loan and savings products and branch details are all bespoke to your credit union.',
        ),
        (
          'chat',
          '24/7 access to information',
          'Members can have a conversation at any time. Often the chatbot resolves the query; if not, it explains the next steps.',
        ),
        (
          'globe',
          'Multiple languages',
          'Members can talk to the chatbot in their preferred language, so everyone can get help with confidence.',
        ),
        (
          'calculator',
          'Loan calculator in the chat',
          'A built-in loan calculator lets members estimate repayments by adjusting the amount and term, without leaving the conversation.',
        ),
        (
          'sparkle',
          'Bespoke design and greetings',
          'Personalise the logo, animations and greetings on each page of your website, and update them for new or seasonal products.',
        ),
      ],
      afterFeatures: [_howItHelps(), _onYourWebsite()],
      spotlightEyebrow: 'Included with your chatbot',
      spotlightTitle: 'Manage it all with the CU Chat Admin Portal.',
      spotlightBody:
          'A secure login area gives your team oversight of every conversation, analytics on how members use your chatbot and full control over its greetings, knowledge and settings, so governance is never an afterthought.',
      spotlightPoints: const [
        'Two-factor authentication on every account',
        'Oversight of every member conversation',
        'Analytics on volume, ratings, topics and time saved',
        'Control of greetings, knowledge and settings',
        'Regular insight emails for your team',
      ],
      spotlightNote:
          'Knowledge base updates go live within around 20 minutes, so the chatbot keeps pace with your products and policies.',
      stepsTitle: 'From demo to 24/7 support.',
      steps: const [
        (
          'Book a call',
          'We show you the features helping other credit unions, with a prototype chatbot based on your website.',
        ),
        (
          'Customise your chatbot',
          'From loan calculation features to naming your chatbot, we tailor it to your credit union.',
        ),
        (
          'Launch on your website',
          'Your chatbot goes live in your colours, with greetings set for the pages members visit.',
        ),
        (
          'Grow with 24/7 support',
          'Once launched, you can redeploy staff to focus on building your member base and increasing revenue.',
        ),
      ],
      faqs: const [
        (
          'Can the chatbot use our own information?',
          'Yes. It is tailored to your credit union’s products, services, branches and member questions. If you have queries unique to your credit union, we can add these too.',
        ),
        (
          'What happens when a member needs a person?',
          'Staff can take over a conversation when needed, and a callback request can be offered when a member needs further help from your team.',
        ),
        (
          'Can we review conversations and performance?',
          'Yes. The CU Chat Admin Portal gives authorised staff access to conversations, member ratings, topics and usage trends.',
        ),
        (
          'How is member data handled?',
          'Members are asked for consent before a chat that processes personal data. A Data Processing Agreement sets out how data is handled, and the current service stores data in Frankfurt, Germany.',
        ),
        (
          'Is our data used to train AI models?',
          'No. CU Apps has an enterprise-level AI agreement, and your conversations are never used to train external AI models.',
        ),
        (
          'What service commitment do we get?',
          'The contract sets out the service level agreement and availability target.',
        ),
        (
          'Is there an upfront development fee?',
          'The current CU Chat offer has no upfront development fee. Ask us about pricing and contract terms for your region.',
        ),
      ],
      closingTitle: 'Bring your member questions to a demo.',
      closingBody:
          'We will show how the chatbot could fit your services and the way your team works.',
    );
  }

  Component _howItHelps() {
    return section(id: 'how-it-helps', classes: 'site-section chat-steps-section', [
      div(classes: 'site-container', [
        sectionIntro(
          eyebrow: 'How the chatbot helps',
          title: 'A clearer path from question to answer.',
          body:
              'Members get help with the everyday questions. Your team stays available for the conversations that need them.',
        ),
        div(classes: 'chat-steps', [
          _chatStep(
            '01',
            'A member asks',
            'A member asks a question on your website, any time of day.',
            'Available around the clock',
          ),
          _chatStep(
            '02',
            'Your information guides the answer',
            'The chatbot uses information about your savings, loans, branches and services to give a relevant response.',
            'Shaped around your credit union',
          ),
          _chatStep(
            '03',
            'Your team stays in the loop',
            'Callback requests and staff take-over give members a route to a person. The Admin Portal helps your team review conversations and usage.',
            'A clear path to your team',
          ),
        ]),
      ]),
    ]);
  }

  Component _onYourWebsite() {
    return section(classes: 'chat-context', [
      div(classes: 'site-container chat-context-grid', [
        div([
          p(classes: 'eyebrow eyebrow-light', [
            Component.text('On your website'),
          ]),
          h2([Component.text('Support that feels part of your credit union.')]),
          p([
            Component.text(
              'Bespoke branding keeps the experience consistent as members move from your social media or website to the chatbot.',
            ),
          ]),
        ]),
        figure([
          img(
            src: '/images/chat_website_hero.webp',
            alt: 'CU Chat displayed on a credit union website',
            width: 1366,
            height: 768,
            loading: MediaLoading.lazy,
          ),
          figcaption([
            Component.text(
              'Example chatbot placement on a credit union website.',
            ),
          ]),
        ]),
      ]),
    ]);
  }

  Component _chatStep(String number, String title, String body, String note) {
    return article(classes: 'chat-step', [
      span(classes: 'chat-step-number', [Component.text(number)]),
      div(classes: 'chat-step-copy', [
        h3([Component.text(title)]),
        p([Component.text(body)]),
      ]),
      p(classes: 'chat-step-note', [Component.text(note)]),
    ]);
  }
}

/// Static HTML mockup of a branded member chatbot with an in-chat loan
/// calculator. [compact] trims it for small card visuals.
Component chatbotMockup({bool compact = false}) {
  return div(
    classes: 'mock-window mock-chat${compact ? ' mock-window-sm' : ''}',
    [
      div(classes: 'mock-head mock-chat-head', [
        span(classes: 'mock-chat-avatar', [Component.text('CU')]),
        div(classes: 'mock-chat-name', [
          span(classes: 'mock-title', [Component.text('Your CU assistant')]),
          if (!compact)
            span(classes: 'mock-muted', [Component.text('Replies instantly')]),
        ]),
        span(classes: 'mock-pill mock-pill-chat mock-chat-online', [
          Component.text('Online'),
        ]),
      ]),
      div(classes: 'mock-thread', [
        if (!compact)
          div(classes: 'mock-bubble', [
            Component.text(
              'Hi! I can help with loans, savings and branch details.',
            ),
          ]),
        div(classes: 'mock-bubble mock-bubble-user mock-bubble-chat', [
          Component.text('What would a £3,000 loan cost over 2 years?'),
        ]),
        if (!compact)
          div(classes: 'mock-bubble', [
            Component.text('Here’s an estimate. Adjust it to suit you.'),
          ]),
        div(classes: 'mock-chat-calc', [
          div(classes: 'mock-row', [
            span(classes: 'mock-label', [Component.text('Loan calculator')]),
            span(classes: 'mock-chat-example', [Component.text('Example')]),
          ]),
          div(classes: 'mock-chat-slider', [
            div(classes: 'mock-row', [
              span([Component.text('Amount')]),
              strong([Component.text('£3,000')]),
            ]),
            div(classes: 'mock-bar', [span([])]),
          ]),
          if (!compact)
            div(classes: 'mock-chat-slider', [
              div(classes: 'mock-row', [
                span([Component.text('Term')]),
                strong([Component.text('24 months')]),
              ]),
              div(classes: 'mock-bar mock-chat-bar-term', [span([])]),
            ]),
          div(classes: 'mock-row mock-chat-result', [
            span([Component.text('Monthly repayment')]),
            strong([Component.text('£138.40')]),
          ]),
        ]),
      ]),
      if (!compact)
        div(classes: 'mock-chat-chips', [
          span([Component.text('Apply for a loan')]),
          span([Component.text('Savings accounts')]),
          span([Component.text('Request a callback')]),
        ]),
    ],
  );
}
