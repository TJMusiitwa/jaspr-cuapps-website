import 'package:cuapps_website/components/ui.dart';
import 'package:cuapps_website/pages/cu_chat/ai_chatbot.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

const _helpsWith = <Capability>[
  (
    'form',
    'How to apply for a loan',
    'Find out how to apply and what you need, and estimate repayments with the built-in loan calculator.',
  ),
  (
    'calendar',
    'Opening hours and branch details',
    'Check when your credit union is open and where to find it.',
  ),
  (
    'browser',
    'Accessing your online account',
    'Get pointed to the right place to log in or get started online.',
  ),
  (
    'chart',
    'Savings options',
    'Learn about the savings accounts on offer and how they work.',
  ),
  (
    'chat',
    'General questions about services',
    'Ask about anything your credit union offers, in your own words.',
  ),
  (
    'globe',
    'Support in multiple languages',
    'Ask in the language you are most comfortable with and get an answer in the same language.',
  ),
];

const _howItWorks = <(String, String)>[
  (
    'Access to information 24/7',
    'Quickly access information at any time. In many cases the chatbot can fully resolve your query, or signpost you to the right place.',
  ),
  (
    'Natural replies',
    'The chatbot understands what you mean and replies naturally, so it feels more like a conversation than a rigid list of options.',
  ),
  (
    'General enquiries',
    'The chatbot is excellent at answering frequently asked questions, giving you a reliable place to get help.',
  ),
  (
    'Interactive loan calculator',
    'A built-in loan calculator helps you work out repayments quickly, so you can make informed financial decisions.',
  ),
  (
    'Language support',
    'The chatbot can understand and respond in multiple languages, so language is never a barrier to getting help.',
  ),
  (
    'Product information',
    'Get clear details on products and services, including the features and benefits of each option your credit union offers.',
  ),
];

const _faqs = <(String, String)>[
  (
    'What makes this chatbot different from unhelpful chatbots?',
    'It uses generative AI to understand a wide range of questions in a natural, conversational way. Unlike basic chatbots that follow prewritten scripts, it gives more accurate and relevant answers and improves over time.',
  ),
  (
    'Is it safe to use?',
    'Yes. Your credit union prioritises privacy and security, using robust encryption and data protection measures. The chatbot does not have access to your personal account details.',
  ),
  (
    'What personal information is collected?',
    'For general questions, the chatbot does not need any personal details. Conversations are kept for review and improvement. If you submit a contact request, those details are passed to your credit union’s team and handled under its privacy policy.',
  ),
  (
    'Are my conversations with the chatbot recorded?',
    'Conversations are recorded for quality assurance and improvement. Logs are treated as confidential, with restricted access and high privacy standards. Unless you submit a contact request, your conversation is anonymous.',
  ),
  (
    'Does the chatbot use cookies?',
    'No. The chatbot and chat window do not use cookies.',
  ),
];

/// Member-facing explainer at `/ai-assistant-for-members`, linked from the
/// chat widget itself, so it speaks to members rather than credit unions.
class ForMembersPage extends StatelessComponent {
  const ForMembersPage({super.key});

  @override
  Component build(BuildContext context) {
    return main_(
      classes:
          'product-page product-page-members cu-chat-page product-page-chat',
      [
        section(classes: 'product-hero', [
          div(classes: 'site-container product-hero-grid', [
            div(classes: 'product-hero-copy', [
              p(classes: 'eyebrow', [Component.text('CU Chat / For members')]),
              h1(classes: 'page-title', [
                Component.text('Your 24/7'),
                Component.text(' '),
                em([Component.text('digital helper.')]),
              ]),
              p(classes: 'hero-lede', [
                Component.text(
                  'You may have heard of or used ChatGPT. Your credit union’s chatbot is a bit like that: it understands your questions and helps you find information when you need it, day or night.',
                ),
              ]),
              div(classes: 'hero-actions', [
                quietLink('What it can help with', '${context.url}#features'),
              ]),
              ul(classes: 'product-highlights', [
                li([Component.text('Available 24/7')]),
                li([Component.text('Replies in your language')]),
                li([Component.text('No cookies')]),
              ]),
            ]),
            div(
              classes: 'product-mockup-stage',
              attributes: {
                'role': 'img',
                'aria-label':
                    'A credit union chatbot answering a loan question with an in-chat loan calculator',
              },
              [
                div(attributes: {'aria-hidden': 'true'}, [chatbotMockup()]),
              ],
            ),
          ]),
        ]),
        section(id: 'features', classes: 'site-section product-features', [
          div(classes: 'site-container', [
            capabilityList(
              intro: div([
                sectionIntro(
                  eyebrow: 'What it can do',
                  title: 'Help with a wide range of questions.',
                  body:
                      'Your credit union’s friendly chatbot is ready to help whenever you need it.',
                ),
                p(classes: 'members-note', [
                  Component.text(
                    'The chatbot can’t answer personal questions about your account. For those, contact your credit union directly.',
                  ),
                ]),
              ]),
              items: _helpsWith,
            ),
          ]),
        ]),
        section(classes: 'site-section product-steps-section', [
          div(classes: 'site-container', [
            sectionIntro(
              eyebrow: 'How it works',
              title: 'How your digital assistant works.',
            ),
            ol(classes: 'process-list', [
              for (final (index, step) in _howItWorks.indexed)
                li([
                  span(classes: 'step-number', [
                    Component.text((index + 1).toString().padLeft(2, '0')),
                  ]),
                  h3([Component.text(step.$1)]),
                  p([Component.text(step.$2)]),
                ]),
            ]),
          ]),
        ]),
        section(classes: 'product-spotlight', [
          div(classes: 'site-container product-spotlight-grid', [
            div([
              p(classes: 'eyebrow eyebrow-light', [
                Component.text('Getting started'),
              ]),
              h2([Component.text('How do I speak with the chatbot?')]),
              p([
                Component.text(
                  'Type your question in the chat window on your credit union’s website. The chatbot replies straight away with guidance, information or the next best step.',
                ),
              ]),
            ]),
            ul(classes: 'product-spotlight-list', [
              for (final point in const [
                'Open the chat window on your credit union’s website',
                'Ask your question in your own words',
                'Get an instant answer or the next step',
              ])
                li([
                  span(
                    attributes: {'aria-hidden': 'true'},
                    [Component.text('✓')],
                  ),
                  Component.text(point),
                ]),
            ]),
          ]),
        ]),
        section(classes: 'site-section faq-section product-faq', [
          div(classes: 'site-container faq-grid', [
            div([
              sectionIntro(eyebrow: 'Questions', title: 'What members ask us.'),
              p(classes: 'members-note', [
                Component.text('Run a credit union? '),
                a(href: '/cu-chat/ai-chatbot', [
                  Component.text('See the Member-facing AI Chatbot'),
                ]),
                Component.text('.'),
              ]),
            ]),
            div(classes: 'faq-list', [
              for (final faq in _faqs)
                details([
                  summary([Component.text(faq.$1)]),
                  p([Component.text(faq.$2)]),
                ]),
            ]),
          ]),
        ]),
      ],
    );
  }
}
