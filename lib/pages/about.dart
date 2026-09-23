import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return main_([
      section(classes: 'page-hero about-hero', [
        div(classes: 'site-container about-hero-grid', [
          div([
            p(classes: 'eyebrow', [Component.text('About CU Apps')]),
            h1(classes: 'page-title', [
              Component.text('Credit unions are our entire focus.'),
            ]),
          ]),
          div(classes: 'about-hero-aside', [
            p([
              Component.text(
                'We design and build digital experiences for mutuals and the members who rely on them. That focus shapes the questions we ask, the products we make and the support we give after launch.',
              ),
            ]),
            dl(classes: 'about-facts', [
              div([
                dt([Component.text('Founded')]),
                dd([Component.text('2012')]),
              ]),
              div([
                dt([Component.text('Credit unions worked with')]),
                dd([Component.text('40+')]),
              ]),
              div([
                dt([Component.text('Based in')]),
                dd([Component.text('Glasgow')]),
              ]),
            ]),
            primaryLink('Book a call'),
          ]),
        ]),
      ]),
      section(classes: 'site-section about-statement', [
        div(classes: 'site-container statement-grid', [
          p(classes: 'eyebrow', [Component.text('Why we do this')]),
          div([
            h2(classes: 'statement-title', [
              Component.text(
                'Good technology makes a mutual feel closer, not further away.',
              ),
            ]),
            p(classes: 'section-copy', [
              Component.text(
                'Members deserve clear, convenient ways to manage their finances. Credit union teams deserve a partner who understands their work and helps them keep improving the experience.',
              ),
            ]),
          ]),
        ]),
      ]),
      section(classes: 'about-method', [
        div(classes: 'site-container', [
          sectionIntro(
            eyebrow: 'Our approach',
            title: 'Close collaboration, from the first conversation onward.',
          ),
          div(classes: 'method-grid', [
            _method(
              '01',
              'Listen closely',
              'We start with your members, staff and the systems that already shape their experience.',
            ),
            _method(
              '02',
              'Make it yours',
              'The product is designed around your brand and the services your credit union offers.',
            ),
            _method(
              '03',
              'Stay alongside',
              'Launch is a milestone. We continue to support the product and the people using it.',
            ),
          ]),
        ]),
      ]),
      section(classes: 'site-section team-section', [
        div(classes: 'site-container', [
          sectionIntro(
            eyebrow: 'The people behind the work',
            title: 'A team you can get to know.',
            body:
                'Product, design and engineering work best when the people doing it stay close to the people using it.',
          ),
          div(classes: 'team-grid', [
            _person(
              'Declan McGallagly',
              'CEO & Co-Founder',
              'declan',
              'declan-mcgallagly',
            ),
            _person('Eden King', 'Product Manager', 'eden', 'eden-king'),
            _person(
              'Hugh McGrade',
              'Software Engineer & Co-Founder',
              'hugh',
              'hugh-mcgrade',
            ),
            _person(
              'Jack Allison',
              'Software Engineer & Co-Founder',
              'jack',
              'jack-allison',
            ),
            _person(
              'Jonathan Musiitwa',
              'Software Engineer',
              'jonathan',
              'jonathan-musiitwa',
            ),
            _person('Colin McKay', 'Consultant', 'colin', 'colin-mckay'),
          ]),
        ]),
      ]),
      section(classes: 'client-strip', [
        div(classes: 'site-container', [
          p(classes: 'eyebrow', [Component.text('In good company')]),
          clientLogoRow(),
        ]),
      ]),
      closingCta(
        eyebrow: 'Work with CU Apps',
        title: 'Let’s meet and talk through your goals.',
        body:
            'A first conversation is the simplest way to see whether we are the right partner for your mutual.',
        label: 'Book a call',
      ),
    ]);
  }

  Component _method(String number, String title, String body) {
    return article([
      span(classes: 'step-number', [Component.text(number)]),
      h3([Component.text(title)]),
      p([Component.text(body)]),
    ]);
  }

  Component _person(String name, String role, String slug, String linkedIn) {
    return figure(classes: 'team-person', [
      img(
        src: '/images/team/$slug.webp',
        alt: name,
        width: 800,
        height: 800,
        loading: MediaLoading.lazy,
      ),
      figcaption([
        div([
          strong([Component.text(name)]),
          span([Component.text(role)]),
        ]),
        div(classes: 'team-links', [
          _personLink('mailto:$slug@cuapps.co.uk', 'Email $name', _mailIcon),
          _personLink(
            'https://www.linkedin.com/in/$linkedIn/',
            '$name on LinkedIn',
            _linkedInIcon,
            external: true,
          ),
        ]),
      ]),
    ]);
  }

  Component _personLink(
    String href,
    String label,
    String icon, {
    bool external = false,
  }) {
    return a(
      href: href,
      target: external ? Target.blank : null,
      attributes: {'aria-label': label, if (external) 'rel': 'noopener'},
      [
        svg(
          viewBox: '0 0 24 24',
          attributes: {'aria-hidden': 'true'},
          [path(d: icon, [])],
        ),
      ],
    );
  }

  static const _mailIcon =
      'M3 5h18a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1Zm1 2.4V17h16V7.4l-8 5.1-8-5.1ZM5.6 7 12 11.1 18.4 7H5.6Z';
  static const _linkedInIcon =
      'M20.45 20.45h-3.56v-5.57c0-1.33-.02-3.04-1.85-3.04-1.85 0-2.14 1.45-2.14 2.94v5.67H9.35V9h3.41v1.56h.05c.48-.9 1.64-1.85 3.37-1.85 3.6 0 4.27 2.37 4.27 5.46v6.28ZM5.34 7.43a2.06 2.06 0 1 1 0-4.13 2.06 2.06 0 0 1 0 4.13ZM7.12 20.45H3.56V9h3.56v11.45ZM22.22 0H1.77C.79 0 0 .77 0 1.73v20.54C0 23.23.79 24 1.77 24h20.45c.98 0 1.78-.77 1.78-1.73V1.73C24 .77 23.2 0 22.22 0Z';
}
