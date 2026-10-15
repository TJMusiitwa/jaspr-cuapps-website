import 'package:cuapps_website/components/mockups.dart';
import 'package:cuapps_website/components/ui.dart';
import 'package:cuapps_website/pages/cu_chat/ai_chatbot.dart';
import 'package:cuapps_website/pages/products/agm_hub.dart';
import 'package:cuapps_website/pages/products/cu_flow.dart';
import 'package:cuapps_website/pages/products/loan_calculators.dart';
import 'package:cuapps_website/pages/products/member_origination.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return main_([
      section(classes: 'home-hero', [
        div(classes: 'site-container hero-grid', [
          div(classes: 'hero-copy', [
            p(classes: 'eyebrow', [
              Component.text('Digital products for mutuals'),
            ]),
            h1(classes: 'display-title', [
              Component.text('Member banking that feels '),
              em([Component.text('built for you.')]),
            ]),
            p(classes: 'hero-lede', [
              Component.text(
                'Bespoke mobile apps and a credit union AI assistant that put your members first, from the first tap to the next conversation.',
              ),
            ]),
            div(classes: 'hero-actions', [
              primaryLink('Book a call'),
              quietLink('See client stories', '/case-studies'),
            ]),
          ]),
          figure(classes: 'hero-art', [
            div(classes: 'hero-art-stage', [
              div(classes: 'hero-art-caption', [
                span([Component.text('Member app')]),
                p([Component.text('Your brand. In every member’s hand.')]),
              ]),
              div(
                classes: 'hero-phone-stage',
                attributes: {
                  'role': 'img',
                  'aria-label':
                      'A credit union mobile app signing a member in, then showing their accounts and a loan application',
                },
                [mobileAppMockup(hero: true)],
              ),
            ]),
          ]),
        ]),
      ]),
      section(classes: 'client-strip', [
        div(classes: 'site-container', [
          p(classes: 'eyebrow', [
            Component.text(
              'Trusted by credit unions across the UK and Ireland',
            ),
          ]),
          clientLogoRow(),
        ]),
      ]),
      section(classes: 'site-section', [
        div(classes: 'site-container statement-grid', [
          div([
            h2(classes: 'statement-title', [
              Component.text(
                'Your members live on their phones. Their credit union should be there with them.',
              ),
            ]),
            p(classes: 'section-copy', [
              Component.text(
                'We design the tools that make everyday banking easier for members and more manageable for the teams who serve them.',
              ),
            ]),
          ]),
        ]),
      ]),
      section(classes: 'product-showcase', [
        div(classes: 'site-container', [
          sectionIntro(
            eyebrow: 'The CU Apps suite',
            title: 'A better experience on every side of the conversation.',
            body:
                'Start with the product your members need most. Each one works on its own and fits together with the rest.',
          ),
          // The suite's signature: one stage holds every product, and as each
          // chapter scrolls through the middle of the screen the stage turns
          // to that product (web/showcase.js). The chapters carry all the
          // content; the stage is illustration and stays out of the
          // accessibility tree.
          div(classes: 'showcase', [
            div(classes: 'showcase-chapters', [
              for (final (i, chapter) in _chapters.indexed)
                article(
                  id: 'suite-${chapter.slug}',
                  classes: 'showcase-chapter',
                  attributes: {
                    'data-chapter': '$i',
                    if (chapter.chat) 'data-register': 'chat',
                  },
                  [
                    p(classes: 'eyebrow', [Component.text(chapter.name)]),
                    h3([Component.text(chapter.title)]),
                    p([Component.text(chapter.body)]),
                    div(classes: 'showcase-links', [
                      for (final (label, href) in chapter.links)
                        quietLink(label, href),
                    ]),
                  ],
                ),
            ]),
            div(
              classes: 'showcase-stage',
              attributes: {
                'aria-hidden': 'true',
                'inert': '',
                'data-active': '0',
              },
              [
                ol(classes: 'showcase-index', [
                  for (final chapter in _chapters)
                    li([Component.text(chapter.short)]),
                ]),
                div(classes: 'showcase-layers', [
                  for (final chapter in _chapters)
                    div(
                      classes: 'showcase-layer showcase-layer-${chapter.slug}',
                      [chapter.mockup()],
                    ),
                ]),
              ],
            ),
          ]),
        ]),
      ]),
      section(classes: 'proof-section', [
        div(classes: 'site-container proof-grid', [
          div(classes: 'proof-number', [
            p(classes: 'eyebrow', [Component.text('In their words')]),
            p(classes: 'proof-stat', [Component.text('32%')]),
            p([
              Component.text(
                'fewer calls and enquiries reported by Thistle Credit Union after introducing its mobile app.',
              ),
            ]),
          ]),
          blockquote([
            p([
              Component.text(
                '“Introducing the mobile app has drastically changed how we operate. We are better placed to serve without any additional resources.”',
              ),
            ]),
            footer([Component.text('Aaron Kerr, CEO · Thistle Credit Union')]),
            quietLink('Read client stories', '/case-studies'),
          ]),
        ]),
      ]),
      trustBand(),
      section(classes: 'site-section process-section', [
        div(classes: 'site-container', [
          sectionIntro(
            title: 'From first conversation to what comes next.',
            body:
                'We learn how your mutual works, build around your members, and stay close after launch.',
          ),
          ol(classes: 'process-list', [
            _step(
              '01',
              'Understand',
              'We listen to your goals, your members and the systems you already use.',
            ),
            _step(
              '02',
              'Design',
              'We shape a clear experience around the journeys that matter most.',
            ),
            _step(
              '03',
              'Build and launch',
              'We handle delivery, testing and the details of going live.',
            ),
            _step(
              '04',
              'Keep improving',
              'We support your team and refine the product as needs change.',
            ),
          ]),
        ]),
      ]),
      closingCta(
        title: 'Tell us what your members need next.',
        body:
            'We will help you explore the right digital experience for your credit union.',
      ),
    ]);
  }

  Component _step(String number, String title, String body) {
    return li([
      span(classes: 'step-number', [Component.text(number)]),
      h3([Component.text(title)]),
      p([Component.text(body)]),
    ]);
  }
}

/// One product in the home suite showcase.
typedef _Chapter = ({
  String slug,
  String name,
  String short,
  String title,
  String body,
  List<(String, String)> links,
  bool chat,
  Component Function() mockup,
});

final List<_Chapter> _chapters = [
  (
    slug: 'app',
    name: 'Mobile apps',
    short: 'App',
    title: 'Give members a reason to open your app every day.',
    body:
        'From secure account access to loans, news and notifications, your app is shaped around your members and your brand.',
    links: [('Explore member apps', '/app-features')],
    chat: false,
    mockup: mobileAppMockup,
  ),
  (
    slug: 'chat',
    name: 'CU Chat AI',
    short: 'CU Chat',
    title: 'AI that helps your members and your team.',
    body:
        'A 24/7 AI Chatbot answers member questions on your website. An Internal Knowledge Agent gives staff instant answers from your own policies and procedures.',
    links: [
      ('Member-facing AI Chatbot', '/cu-chat/ai-chatbot'),
      ('Internal Knowledge Agent', '/cu-chat/knowledge-agent'),
    ],
    chat: true,
    mockup: chatbotMockup,
  ),
  (
    slug: 'agm',
    name: 'AGM Hub',
    short: 'AGM',
    title: 'A better AGM for every member.',
    body:
        'Live stream, secure voting and questions in one place. Members join through your app or a branded web page.',
    links: [('Explore AGM Hub', '/agm-hub')],
    chat: false,
    mockup: agmHubMockup,
  ),
  (
    slug: 'loans',
    name: 'Loan Calculators',
    short: 'Loans',
    title: 'Turn loan interest into applications.',
    body:
        'Branded calculators for every loan product, leading straight into your application journey.',
    links: [('Explore Loan Calculators', '/loan-calculators')],
    chat: false,
    mockup: loanCalculatorMockup,
  ),
  (
    slug: 'origination',
    name: 'Origination',
    short: 'Apply',
    title: 'Applications members want to complete.',
    body:
        'Prefilled, validated journeys connected to your core and third-party systems, with no repeat questions.',
    links: [('Explore Origination', '/member-origination')],
    chat: false,
    mockup: originationMockup,
  ),
  (
    slug: 'flow',
    name: 'CU Flow',
    short: 'Flow',
    title: 'Describe the form. CU Flow builds it.',
    body:
        'Describe the form you need and place it inside your app. Known member details are filled in for them.',
    links: [('Explore CU Flow', '/cu-flow')],
    chat: false,
    mockup: cuFlowMockup,
  ),
];
