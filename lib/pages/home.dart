import 'package:cuapps_website/components/ui.dart';
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
                span([Component.text('01 / MEMBER APP')]),
                p([Component.text('Your brand. In every member’s hand.')]),
              ]),
              img(
                src: '/images/app_hero.webp',
                alt: 'CU Apps mobile banking sign-in screen',
                width: 1206,
                height: 2622,
                classes: 'hero-phone',
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
          p(classes: 'eyebrow', [Component.text('The opportunity')]),
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
          div(classes: 'product-grid', [
            article(classes: 'product-panel app-panel', [
              div(classes: 'product-panel-copy', [
                p(classes: 'eyebrow', [Component.text('01 / Mobile apps')]),
                h3([
                  Component.text(
                    'Give members a reason to open your app every day.',
                  ),
                ]),
                p([
                  Component.text(
                    'From secure account access to loans, news and notifications, your app is shaped around your members and your brand.',
                  ),
                ]),
                quietLink('Explore member apps', '/app-features'),
              ]),
              div(classes: 'product-panel-visual app-panel-visual', [
                img(
                  src: '/images/app_hero.webp',
                  alt: 'CU Apps mobile banking sign-in screen',
                  width: 1206,
                  height: 2622,
                  loading: MediaLoading.lazy,
                ),
              ]),
            ]),
            article(classes: 'product-panel chat-panel', [
              div(classes: 'product-panel-copy', [
                p(classes: 'eyebrow', [Component.text('02 / CU Chat AI')]),
                h3([
                  Component.text('AI that helps your members and your team.'),
                ]),
                p([
                  Component.text(
                    'A 24/7 AI Chatbot answers member questions on your website. An Internal Knowledge Agent gives staff instant answers from your own policies and procedures.',
                  ),
                ]),
                div(classes: 'product-panel-links', [
                  quietLink('AI Chatbot', '/cu-chat/ai-chatbot'),
                  quietLink(
                    'Internal Knowledge Agent',
                    '/cu-chat/knowledge-agent',
                  ),
                ]),
              ]),
              div(classes: 'product-panel-visual chat-panel-visual', [
                img(
                  src: '/images/chat_mobile_hero.webp',
                  alt: 'CU Chat answering a member question on mobile',
                  width: 560,
                  height: 1212,
                  loading: MediaLoading.lazy,
                ),
              ]),
            ]),
          ]),
          div(classes: 'product-suite', [
            _suiteCard(
              '03 / AGM Hub',
              'A better AGM for every member.',
              'Live stream, secure voting and questions in one place.',
              '/agm-hub',
              agmHubMockup(compact: true),
            ),
            _suiteCard(
              '04 / Loan Calculators',
              'Turn loan interest into applications.',
              'Branded calculators that lead into your application journey.',
              '/loan-calculators',
              loanCalculatorMockup(compact: true),
            ),
            _suiteCard(
              '05 / Origination',
              'Applications members want to complete.',
              'Prefilled, validated journeys connected to your systems.',
              '/member-origination',
              originationMockup(compact: true),
            ),
            _suiteCard(
              '06 / CU Flow',
              'Describe the form. CU Flow builds it.',
              'AI-built forms that live inside your app.',
              '/cu-flow',
              cuFlowMockup(compact: true),
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
            eyebrow: 'Working together',
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
        eyebrow: 'Start with a conversation',
        title: 'Tell us what your members need next.',
        body:
            'We will help you explore the right digital experience for your credit union.',
      ),
    ]);
  }

  Component _suiteCard(
    String eyebrow,
    String title,
    String body,
    String href,
    Component mockup,
  ) {
    return article(classes: 'suite-card', [
      div(
        classes: 'suite-card-visual',
        attributes: {'aria-hidden': 'true'},
        [mockup],
      ),
      p(classes: 'eyebrow', [Component.text(eyebrow)]),
      h3([Component.text(title)]),
      p([Component.text(body)]),
      quietLink('Explore ${eyebrow.split(' / ').last}', href),
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
