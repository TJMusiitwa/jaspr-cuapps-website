import 'package:cuapps_website/components/ui.dart';
import 'package:cuapps_website/pages/cu_chat/ai_chatbot.dart';
import 'package:cuapps_website/pages/cu_chat/knowledge_agent.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// CU Chat overview at `/cu-chat`: the member chatbot and the internal
/// knowledge agent, side by side.
class CuChatPage extends StatelessComponent {
  const CuChatPage({super.key});

  @override
  Component build(BuildContext context) {
    return main_(classes: 'cu-chat-page product-page-chat chat-overview', [
      section(classes: 'product-hero chat-overview-hero', [
        div(classes: 'site-container product-hero-grid', [
          div(classes: 'product-hero-copy chat-overview-copy', [
            p(classes: 'eyebrow', [Component.text('CU Chat')]),
            h1(classes: 'page-title', [
              Component.text('Two AI products.'),
              Component.text(' '),
              em([Component.text('One platform.')]),
            ]),
            p(classes: 'hero-lede', [
              Component.text(
                'CU Chat brings AI to every part of your credit union, from a Member-Facing AI Chatbot on your website to an Internal Knowledge Agent that helps your staff find answers fast.',
              ),
            ]),
            div(classes: 'hero-actions', [
              primaryLink('Book a call', chat: true),
              quietLink('Compare the products', '#products'),
              quietLink('Meet the chatbots', '/cu-chat/stories'),
            ]),
            ul(classes: 'product-highlights', [
              li([Component.text('Free demo')]),
              li([Component.text('Prototype chatbot based on your website')]),
              li([Component.text('Available separately or together')]),
            ]),
          ]),
          div(
            classes: 'product-mockup-stage',
            attributes: {
              'role': 'img',
              'aria-label':
                  'CU Chat as one platform: a member chatbot and a staff knowledge agent, both answering from your credit union’s own information',
            },
            [
              div(attributes: {'aria-hidden': 'true'}, [_platformVisual()]),
            ],
          ),
        ]),
      ]),
      section(id: 'products', classes: 'site-section chat-products-section', [
        div(classes: 'site-container', [
          sectionIntro(
            eyebrow: 'Choose what you need',
            title: 'AI for your members and for your staff.',
            body:
                'Available separately or together, so your credit union chooses exactly what it needs.',
          ),
          div(classes: 'chat-products', [
            _productCard(
              eyebrow: 'For members',
              title: 'Member-Facing AI Chatbot',
              body:
                  'A 24/7 chatbot for your website that answers member questions, calculates loan repayments and frees up your phone lines.',
              href: '/cu-chat/ai-chatbot',
              linkLabel: 'Explore the chatbot',
              mockup: chatbotMockup(compact: true),
              mockupLabel:
                  'A branded member chatbot showing a loan calculator in the conversation',
            ),
            _productCard(
              eyebrow: 'For staff',
              title: 'Internal Knowledge Agent',
              body:
                  'Give your staff one place to ask questions and get answers from your credit union’s own policies, procedures and documents.',
              href: '/cu-chat/knowledge-agent',
              linkLabel: 'Explore the Knowledge Agent',
              mockup: knowledgeAgentMockup(compact: true),
              mockupLabel:
                  'A staff workspace answering a policy question with a cited source',
            ),
          ]),
        ]),
      ]),
      section(classes: 'chat-protect', [
        div(classes: 'site-container chat-protect-grid', [
          div([
            p(classes: 'eyebrow eyebrow-light', [
              Component.text('Your data, protected'),
            ]),
            h2([Component.text('Your data never trains someone else’s AI.')]),
            p([
              Component.text(
                'CU Apps has secured an enterprise-level AI agreement that keeps your information protected. Your documents and conversations are never used to train external AI models.',
              ),
            ]),
          ]),
          div(classes: 'chat-protect-list', [
            _protect(
              'Enterprise-level agreement',
              'Backed by an enterprise-level agreement with our AI provider, giving your credit union contractual assurance over how data is handled.',
            ),
            _protect(
              'Never used for training',
              'Your documents and conversations are never used to train external AI models. Your information stays your information.',
            ),
            _protect(
              'Private to your credit union',
              'Your data stays isolated and confidential, never shared or pooled with other organisations.',
            ),
          ]),
        ]),
      ]),
      section(classes: 'site-section chat-steps-section', [
        div(classes: 'site-container', [
          sectionIntro(
            eyebrow: 'Getting started',
            title: 'Talk to us and get started with CU Chat.',
          ),
          div(classes: 'chat-steps', [
            _chatStep(
              '01',
              'Book a call',
              'We show you the features improving member service at other credit unions, and how they could help yours.',
              'A 45-minute call',
            ),
            _chatStep(
              '02',
              'Customise your setup',
              'From loan calculation features to naming your chatbot, we tailor CU Chat to your credit union’s needs.',
              'Shaped around you',
            ),
            _chatStep(
              '03',
              'Grow with 24/7 support',
              'Once launched, you can redeploy staff to focus on building your member base and increasing revenue.',
              'Available around the clock',
            ),
          ]),
        ]),
      ]),
      trustBand(chat: true),
      closingCta(
        eyebrow: 'See it in context',
        title: 'Bring your questions to a demo.',
        body:
            'We will show how CU Chat could support your members, your staff and the way your team works.',
        label: 'Book a call',
        chat: true,
      ),
    ]);
  }

  // Hero diagram: two audiences served by one platform and one knowledge base.
  Component _platformVisual() {
    Component audience(
      String label,
      String who,
      String question,
      String answer,
    ) {
      return div(classes: 'mock-window mock-window-sm mock-platform-audience', [
        div(classes: 'mock-row', [
          span(classes: 'mock-label', [Component.text(label)]),
          span(classes: 'mock-pill mock-pill-chat', [Component.text(who)]),
        ]),
        div(classes: 'mock-thread', [
          p(classes: 'mock-bubble mock-bubble-user mock-bubble-chat', [
            Component.text(question),
          ]),
          p(classes: 'mock-bubble', [Component.text(answer)]),
        ]),
      ]);
    }

    return div(classes: 'mock-platform', [
      div(classes: 'mock-platform-audiences', [
        audience(
          'AI Chatbot',
          'Members',
          'Can I apply for a loan online?',
          'Yes. Here’s how to apply…',
        ),
        audience(
          'Knowledge Agent',
          'Staff',
          'Where’s the complaints procedure?',
          'Section 3 of the Complaints Policy…',
        ),
      ]),
      div(classes: 'mock-platform-links', [span([]), span([])]),
      div(classes: 'mock-window mock-platform-hub', [
        img(
          src: '/images/cu_chat_logo.webp',
          alt: '',
          width: 800,
          height: 320,
          classes: 'mock-platform-logo',
        ),
        span(classes: 'mock-label', [
          Component.text('Answers from your own information'),
        ]),
        div(classes: 'mock-platform-sources', [
          for (final source in [
            'Products & rates',
            'Branches',
            'Policies',
            'Procedures',
          ])
            span([Component.text(source)]),
        ]),
        p(classes: 'mock-platform-private', [
          Component.text(
            'Private to your credit union · Never used for training',
          ),
        ]),
      ]),
    ]);
  }

  Component _productCard({
    required String eyebrow,
    required String title,
    required String body,
    required String href,
    required String linkLabel,
    required Component mockup,
    required String mockupLabel,
  }) {
    return article(classes: 'chat-product-card', [
      div(
        classes: 'chat-product-visual',
        attributes: {'role': 'img', 'aria-label': mockupLabel},
        [
          div(attributes: {'aria-hidden': 'true'}, [mockup]),
        ],
      ),
      p(classes: 'eyebrow', [Component.text(eyebrow)]),
      h3([Component.text(title)]),
      p([Component.text(body)]),
      div(classes: 'hero-actions', [
        primaryLink(linkLabel, href: href, chat: true),
        quietLink('Book a call', '/free-demo'),
      ]),
    ]);
  }

  Component _protect(String title, String body) {
    return div([
      h3([Component.text(title)]),
      p([Component.text(body)]),
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
