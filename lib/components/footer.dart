import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  final bool chat;
  const Footer({super.key, this.chat = false});

  static const _socials = [
    (
      'LinkedIn',
      'https://www.linkedin.com/company/cuapps/',
      'M20.45 20.45h-3.56v-5.57c0-1.33-.02-3.04-1.85-3.04-1.85 0-2.14 1.45-2.14 2.94v5.67H9.35V9h3.41v1.56h.05c.48-.9 1.64-1.85 3.37-1.85 3.6 0 4.27 2.37 4.27 5.46v6.28ZM5.34 7.43a2.06 2.06 0 1 1 0-4.13 2.06 2.06 0 0 1 0 4.13ZM7.12 20.45H3.56V9h3.56v11.45ZM22.22 0H1.77C.79 0 0 .77 0 1.73v20.54C0 23.23.79 24 1.77 24h20.45c.98 0 1.78-.77 1.78-1.73V1.73C24 .77 23.2 0 22.22 0Z',
    ),
    (
      'X (Twitter)',
      'https://twitter.com/CreditUnionApps',
      'M18.9 1.15h3.68l-8.04 9.19L24 22.85h-7.4l-5.8-7.58-6.63 7.58H.49l8.6-9.83L0 1.15h7.59l5.24 6.93 6.07-6.93Zm-1.29 19.5h2.04L6.48 3.24H4.3l13.31 17.41Z',
    ),
    (
      'Instagram',
      'https://www.instagram.com/cu_apps/',
      'M12 2.16c3.2 0 3.58.01 4.85.07 1.17.05 1.8.25 2.23.41.56.22.96.48 1.38.9.42.42.68.82.9 1.38.16.42.36 1.06.41 2.23.06 1.27.07 1.65.07 4.85s-.01 3.58-.07 4.85c-.05 1.17-.25 1.8-.41 2.23-.22.56-.48.96-.9 1.38-.42.42-.82.68-1.38.9-.42.16-1.06.36-2.23.41-1.27.06-1.65.07-4.85.07s-3.58-.01-4.85-.07c-1.17-.05-1.8-.25-2.23-.41a3.72 3.72 0 0 1-1.38-.9 3.72 3.72 0 0 1-.9-1.38c-.16-.42-.36-1.06-.41-2.23C2.17 15.58 2.16 15.2 2.16 12s.01-3.58.07-4.85c.05-1.17.25-1.8.41-2.23.22-.56.48-.96.9-1.38.42-.42.82-.68 1.38-.9.42-.16 1.06-.36 2.23-.41C8.42 2.17 8.8 2.16 12 2.16ZM12 0C8.74 0 8.33.01 7.05.07 5.78.13 4.9.33 4.14.63a5.88 5.88 0 0 0-2.13 1.38A5.88 5.88 0 0 0 .63 4.14C.33 4.9.13 5.78.07 7.05.01 8.33 0 8.74 0 12s.01 3.67.07 4.95c.06 1.27.26 2.15.56 2.91.31.79.72 1.46 1.38 2.13a5.88 5.88 0 0 0 2.13 1.38c.76.3 1.64.5 2.91.56C8.33 23.99 8.74 24 12 24s3.67-.01 4.95-.07c1.27-.06 2.15-.26 2.91-.56a5.88 5.88 0 0 0 2.13-1.38 5.88 5.88 0 0 0 1.38-2.13c.3-.76.5-1.64.56-2.91.06-1.28.07-1.69.07-4.95s-.01-3.67-.07-4.95c-.06-1.27-.26-2.15-.56-2.91a5.88 5.88 0 0 0-1.38-2.13A5.88 5.88 0 0 0 19.86.63C19.1.33 18.22.13 16.95.07 15.67.01 15.26 0 12 0Zm0 5.84a6.16 6.16 0 1 0 0 12.32 6.16 6.16 0 0 0 0-12.32ZM12 16a4 4 0 1 1 0-8 4 4 0 0 1 0 8Zm6.4-11.85a1.44 1.44 0 1 0 0 2.88 1.44 1.44 0 0 0 0-2.88Z',
    ),
    (
      'Facebook',
      'https://fb.me/creditunionapps',
      'M24 12.07C24 5.41 18.63 0 12 0S0 5.4 0 12.07C0 18.1 4.39 23.1 10.13 24v-8.44H7.08v-3.49h3.04V9.41c0-3.02 1.8-4.7 4.54-4.7 1.31 0 2.68.24 2.68.24v2.97h-1.5c-1.5 0-1.96.93-1.96 1.89v2.26h3.33l-.53 3.5h-2.8V24C19.62 23.1 24 18.1 24 12.07Z',
    ),
  ];

  @override
  Component build(BuildContext context) {
    return footer(classes: 'site-footer', [
      div(classes: 'site-container footer-grid footer-grid-wide', [
        div(classes: 'footer-brand', [
          a(href: '/', [
            img(
              src: '/images/cu_logo.webp',
              alt: 'CU Apps home',
              width: 180,
              height: 42,
            ),
          ]),
          p([
            Component.text(
              'Digital member experiences, made for credit unions.',
            ),
          ]),
          div(classes: 'footer-social', [
            for (final (label, href, icon) in _socials)
              a(
                href: href,
                target: Target.blank,
                attributes: {
                  'aria-label': 'CU Apps on $label',
                  'rel': 'noopener',
                },
                [
                  svg(
                    viewBox: '0 0 24 24',
                    attributes: {'aria-hidden': 'true'},
                    [path(d: icon, [])],
                  ),
                ],
              ),
          ]),
        ]),
        div(classes: 'footer-links', [
          p(classes: 'footer-label', [Component.text('Products')]),
          for (final (label, href, _) in [
            ...memberProducts,
            ...chatProducts,
            ...operationsProducts,
          ])
            a(href: href, [Component.text(label)]),
        ]),
        div(classes: 'footer-links', [
          p(classes: 'footer-label', [Component.text('Company')]),
          a(href: '/case-studies', [Component.text('Client stories')]),
          a(href: '/about', [Component.text('About CU Apps')]),
          a(href: '/contact-us', [Component.text('Contact the team')]),
          a(href: '/free-demo', [Component.text('Book a call')]),
          a(href: 'mailto:hello@cuapps.co.uk', [
            Component.text('hello@cuapps.co.uk'),
          ]),
        ]),
        div(classes: 'footer-links', [
          p(classes: 'footer-label', [Component.text('Product sheets')]),
          a(
            href: 'https://cu.chat/downloads/CU-Chat-Product-Info.pdf',
            target: Target.blank,
            attributes: {'rel': 'noopener'},
            [Component.text('CU Chat (PDF)'), linkArrow(ArrowKind.out)],
          ),
          a(
            href:
                'https://cu.chat/downloads/Internal-Knowledge-Agent-Product-Info.pdf',
            target: Target.blank,
            attributes: {'rel': 'noopener'},
            [
              Component.text('Internal Knowledge Agent (PDF)'),
              linkArrow(ArrowKind.out),
            ],
          ),
        ]),
        div(classes: 'footer-links footer-trust', [
          p(classes: 'footer-label', [Component.text('Trust & security')]),
          a(href: trustCenterUrl, target: Target.blank, [
            Component.text('Trust Center'),
            linkArrow(ArrowKind.out),
          ]),
          a(href: statusPageUrl, target: Target.blank, [
            Component.text('Status page'),
            linkArrow(ArrowKind.out),
          ]),
          a(href: trustCenterUrl, target: Target.blank, [isoBadge(size: 96)]),
        ]),
      ]),
      div(classes: 'site-container footer-bottom', [
        p([Component.text('© ${DateTime.now().year} CU Apps')]),
        p([Component.text('Built for the mutual sector.')]),
      ]),
    ]);
  }
}
