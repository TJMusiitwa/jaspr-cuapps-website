import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AppFeatures extends StatelessComponent {
  const AppFeatures({super.key});

  @override
  Component build(BuildContext context) {
    return main_([
      section(classes: 'page-hero app-hero', [
        div(classes: 'site-container page-hero-grid', [
          div([
            p(classes: 'eyebrow', [Component.text('Bespoke member apps')]),
            h1(classes: 'page-title', [
              Component.text('Your credit union, in your members’ hands.'),
            ]),
            p(classes: 'hero-lede', [
              Component.text(
                'A mobile experience shaped around your brand, your services and the everyday things members need to do.',
              ),
            ]),
            div(classes: 'hero-actions', [
              primaryLink('Book a call'),
              quietLink('See client stories', '/case-studies'),
            ]),
          ]),
          figure(classes: 'page-device-stage', [
            img(
              src: '/images/app_hero.webp',
              alt: 'CU Apps mobile banking sign-in screen',
              width: 1206,
              height: 2622,
            ),
            figcaption([
              Component.text(
                'A familiar, branded starting point for your members.',
              ),
            ]),
          ]),
        ]),
      ]),
      section(classes: 'client-strip', [
        div(classes: 'site-container', [
          p(classes: 'eyebrow', [
            Component.text('Built with credit unions, for their members'),
          ]),
          clientLogoRow(),
        ]),
      ]),
      section(classes: 'site-section capabilities-section', [
        div(classes: 'site-container', [
          sectionIntro(
            eyebrow: 'Inside a member app',
            title: 'One app. More ways to serve your members.',
            body:
                'Explore the capabilities we can shape around your credit union. The right mix depends on your members, services and existing systems.',
          ),
          _featureGroup('Start & secure', 'A welcome that feels like yours.', [
            (
              'Digital joining',
              'Let new members get started in the app.',
              'join',
            ),
            (
              'Join & refer',
              'Make it easy to invite someone to the credit union.',
              'referral',
            ),
            (
              'Biometric login',
              'Offer quick access with Face ID or fingerprint.',
              'fingerprint',
            ),
            (
              'Member details',
              'Put membership information within easy reach.',
              'profile',
            ),
            (
              'Personalised experience',
              'Show content that matters to each member.',
              'sparkle',
            ),
            (
              'Security settings',
              'Let members manage PINs and passwords.',
              'lock',
            ),
          ]),
          _featureGroup(
            'Everyday money',
            'The useful things, all in one place.',
            [
              (
                'Balances & accounts',
                'Give members a clear view of their money.',
                'wallet',
              ),
              (
                'Pay in & withdraw',
                'Make everyday money movements simpler.',
                'transfer',
              ),
              (
                'Statements',
                'Keep transaction history easy to find.',
                'statement',
              ),
              (
                'Loan applications',
                'Help members apply and follow progress.',
                'loan',
              ),
              (
                'Loan calculator',
                'Explore repayments before applying.',
                'calculator',
              ),
              (
                'Eligibility check',
                'Help members understand their borrowing options.',
                'check',
              ),
            ],
          ),
          _featureGroup('Grow & connect', 'Keep the relationship moving.', [
            (
              'Savings calculator',
              'Help members plan what they could save.',
              'calculator',
            ),
            (
              'Savings goals',
              'Let members set a target and track progress.',
              'target',
            ),
            (
              'Push notifications',
              'Send timely updates directly to members.',
              'bell',
            ),
            ('News & updates', 'Bring credit union news into the app.', 'news'),
            (
              'Member surveys',
              'Collect feedback and invite participation.',
              'survey',
            ),
            (
              'Support & FAQs',
              'Put answers and support routes close at hand.',
              'help',
            ),
          ]),
        ]),
      ]),
      section(classes: 'app-promise', [
        div(classes: 'site-container app-promise-grid', [
          div([
            p(classes: 'eyebrow eyebrow-light', [
              Component.text('Made to fit'),
            ]),
            h2([
              Component.text('Your brand belongs at the centre of the app.'),
            ]),
          ]),
          div([
            p([
              Component.text(
                'We work with your team to shape the experience around your existing services, your visual identity and the people who use it. From design to app store launch, there is a clear path forward.',
              ),
            ]),
            quietLink('How we work', '/about'),
          ]),
        ]),
      ]),
      section(classes: 'site-section', [
        div(classes: 'site-container quote-feature', [
          img(
            src: '/images/clients/hocu.webp',
            alt: 'Hoot Credit Union',
            loading: MediaLoading.lazy,
          ),
          blockquote([
            p([
              Component.text(
                '“Our members love the app and the ability to access their account so easily. The app is an essential tool for us in our member communication.”',
              ),
            ]),
            footer([Component.text('Chris Canham, CEO · Hoot Credit Union')]),
          ]),
        ]),
      ]),
      closingCta(
        eyebrow: 'See what is possible',
        title: 'Let’s walk through an app together.',
        body:
            'Tell us about your members and the services you want to bring closer to them.',
        label: 'Book a call',
      ),
    ]);
  }

  Component _featureGroup(
    String label,
    String title,
    List<(String, String, String)> features,
  ) {
    return section(classes: 'feature-group', [
      capabilityList(
        nested: true,
        intro: div(classes: 'feature-group-heading', [
          p(classes: 'eyebrow', [Component.text(label)]),
          h3([Component.text(title)]),
        ]),
        items: [
          for (final (title, body, icon) in features) (icon, title, body),
        ],
      ),
    ]);
  }
}
