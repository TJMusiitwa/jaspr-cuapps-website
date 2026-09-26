import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// The one label used for every booking call to action.
const bookingLabel = 'Book a call';

/// A drawn arrow for links: `out` leaves the site, `down` jumps within the
/// page, `forward` goes to another page on the site.
enum ArrowKind { forward, down, out }

ArrowKind _arrowFor(String href) => href.startsWith('http')
    ? ArrowKind.out
    : (href.startsWith('#') ? ArrowKind.down : ArrowKind.forward);

Component linkArrow(ArrowKind kind) {
  final d = switch (kind) {
    ArrowKind.forward => 'M4 12h15m-5.5-5.5L19 12l-5.5 5.5',
    ArrowKind.down => 'M12 4v15m-5.5-5.5L12 19l5.5-5.5',
    ArrowKind.out => 'M7 17 17 7M9 7h8v8',
  };
  return svg(
    viewBox: '0 0 24 24',
    classes: 'link-arrow',
    attributes: {'aria-hidden': 'true', 'focusable': 'false'},
    [
      path(
        d: d,
        fill: Color('none'),
        stroke: Color('currentColor'),
        strokeWidth: '1.8',
        styles: Styles(
          raw: {'stroke-linecap': 'round', 'stroke-linejoin': 'round'},
        ),
        [],
      ),
    ],
  );
}

Component primaryLink(
  String label, {
  String href = '/free-demo',
  bool chat = false,
}) {
  return a(
    href: href,
    classes: 'button button-primary${chat ? ' button-chat' : ''}',
    [Component.text(label), linkArrow(_arrowFor(href))],
  );
}

Component quietLink(String label, String href) {
  return a(href: href, classes: 'text-link', [
    Component.text(label),
    linkArrow(_arrowFor(href)),
  ]);
}

Component sectionIntro({
  required String eyebrow,
  required String title,
  String? body,
}) {
  return div(classes: 'section-intro', [
    p(classes: 'eyebrow', [Component.text(eyebrow)]),
    h2(classes: 'section-title', [Component.text(title)]),
    if (body != null) p(classes: 'section-copy', [Component.text(body)]),
  ]);
}

/// A capability: icon name (see [lineIcon]), title and body.
typedef Capability = (String icon, String title, String body);

/// Editorial capability index: the intro holds the left column while the
/// capabilities run as ruled rows on the right. Replaces card grids.
Component capabilityList({
  required Component intro,
  required List<Capability> items,
  String? id,

  /// Set when the list sits under an `h3` group heading.
  bool nested = false,
}) {
  return div(id: id, classes: 'capability-layout', [
    div(classes: 'capability-intro', [intro]),
    ul(classes: 'capability-list', [
      for (final (icon, title, body) in items)
        li(classes: 'capability', [
          span(classes: 'capability-icon', [lineIcon(icon)]),
          div([
            nested ? h4([Component.text(title)]) : h3([Component.text(title)]),
            p([Component.text(body)]),
          ]),
        ]),
    ]),
  ]);
}

Component closingCta({
  required String eyebrow,
  required String title,
  required String body,
  String label = bookingLabel,
  bool chat = false,
}) {
  return section(classes: 'closing-cta${chat ? ' closing-cta-chat' : ''}', [
    div(classes: 'site-container closing-cta-inner', [
      div([
        p(classes: 'eyebrow eyebrow-light', [Component.text(eyebrow)]),
        h2([Component.text(title)]),
        p([Component.text(body)]),
      ]),
      primaryLink(label, chat: chat),
    ]),
  ]);
}

Component clientLogoRow() {
  const logos = [
    ('Pennine Community Credit Union', 'pccu'),
    ('Scottish Police Credit Union', 'spcu'),
    ('Enterprise Credit Union', 'ecu'),
    ('Citysave Credit Union', 'cscu'),
    ('Manchester Credit Union', 'macu'),
    ('Hoot Credit Union', 'hocu'),
    ('Thistle Credit Union', 'thistle'),
    ('NHS Credit Union', 'nhscu'),
    ('No1 CopperPot Credit Union', 'n1cpcu'),
    ('London Plus Credit Union', 'lopcu'),
    ('Advance Credit Union', 'adcu'),
    ('GMB Credit Union', 'gmbcu'),
    ('London Community Bank', 'lcbcu'),
    ('Leeds Credit Union', 'lecu'),
    ('Donore Credit Union', 'donore'),
    ('First Choice Credit Union', 'fccu'),
    ('Savvi Credit Union', 'savvi'),
    ('St. Paul’s Garda Credit Union', 'stpcu'),
    ('Synergy Credit Union', 'sycu'),
  ];

  // Two identical sets side by side; the track slides left by one set and
  // loops seamlessly. The second set is hidden from assistive technology.
  Component set({required bool copy}) => div(
    classes: 'logo-row',
    attributes: copy ? {'aria-hidden': 'true'} : null,
    [
      for (final logo in logos)
        div(classes: 'logo-cell', [
          img(
            src: '/images/clients/${logo.$2}.webp',
            alt: copy ? '' : logo.$1,
            loading: MediaLoading.lazy,
          ),
        ]),
    ],
  );

  return div(classes: 'logo-marquee', [
    div(classes: 'logo-track', [set(copy: false), set(copy: true)]),
  ]);
}

Component lineIcon(String name) {
  final shape = switch (name) {
    'join' =>
      'M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2M9 11a4 4 0 1 0 0-8 4 4 0 0 0 0 8ZM19 8v6m-3-3h6',
    'referral' => 'M8 12h8m-3-3 3 3-3 3M4 4h16v16H4z',
    'fingerprint' =>
      'M7 9a5 5 0 0 1 10 0v3M5 9a7 7 0 0 1 14 0v4M9 10v3a8 8 0 0 1-2 5m5-8v5a10 10 0 0 1-2 6m5-11v5a13 13 0 0 1-2 6m5-5a17 17 0 0 1-2 5',
    'profile' => 'M3 5h18v14H3zM7 10h4m-4 4h9',
    'sparkle' =>
      'm12 3 1.7 5.3L19 10l-5.3 1.7L12 17l-1.7-5.3L5 10l5.3-1.7L12 3Zm7 13 .8 2.2L22 19l-2.2.8L19 22l-.8-2.2L16 19l2.2-.8L19 16Z',
    'lock' => 'M5 10h14v11H5zM8 10V7a4 4 0 0 1 8 0v3m-4 4v3',
    'wallet' => 'M3 6h17v14H3zM3 6l3-3h12l2 3m-4 7h4',
    'transfer' => 'M4 7h16m-4-4 4 4-4 4M20 17H4m4-4-4 4 4 4',
    'statement' => 'M6 3h9l3 3v15H6zM9 10h6m-6 4h6m-6 4h4',
    'loan' => 'M4 4h16v16H4zM8 9h8m-8 4h8m-8 4h5',
    'calculator' =>
      'M5 3h14v18H5zM8 7h8M8 11h1m3 0h1m3 0h1M8 15h1m3 0h1m3 0h1M8 19h1m3 0h1m3 0h1',
    'check' => 'M12 3a9 9 0 1 0 0 18 9 9 0 0 0 0-18Zm-4 9 3 3 5-6',
    'target' =>
      'M12 3a9 9 0 1 0 0 18 9 9 0 0 0 0-18Zm0 4a5 5 0 1 0 0 10 5 5 0 0 0 0-10Zm0 3a2 2 0 1 0 0 4 2 2 0 0 0 0-4Z',
    'bell' => 'M18 8a6 6 0 0 0-12 0c0 7-3 7-3 9h18c0-2-3-2-3-9ZM10 21h4',
    'news' =>
      'M3 4h14v15H5a2 2 0 0 1-2-2V4Zm14 3h4v10a2 2 0 0 1-4 0M6 8h8M6 12h8M6 16h5',
    'survey' => 'M6 4h12v17H6zM9 8h6m-6 4h6m-6 4h4M9 2h6',
    'help' =>
      'M12 3a9 9 0 1 0 0 18 9 9 0 0 0 0-18Zm-2.5 6a2.5 2.5 0 1 1 4 2c-1 .8-1.5 1.3-1.5 2.5M12 17h.01',
    'stream' => 'M3 5h18v12H3zM8 21h8M12 17v4M10 8.5v5l4-2.5-4-2.5Z',
    'vote' => 'M4 13h16v8H4zM8 13V9l4-6 4 6v4M9 17h6',
    'question' =>
      'M4 5h16v11H9l-5 4V5Zm8 4.5a1.5 1.5 0 1 1 1.5 1.5c-.8 0-1.5.6-1.5 1.3M12 14h.01',
    'settings' =>
      'M12 9a3 3 0 1 0 0 6 3 3 0 0 0 0-6ZM12 2v3m0 14v3M4.9 4.9l2.1 2.1m10 10 2.1 2.1M2 12h3m14 0h3M4.9 19.1 7 17m10-10 2.1-2.1',
    'phone' => 'M7 2h10v20H7zM11 18h2',
    'browser' => 'M3 4h18v16H3zM3 9h18M7 6.5h.01M10 6.5h.01',
    'users' =>
      'M17 21v-2a4 4 0 0 0-4-4H7a4 4 0 0 0-4 4v2M10 11a4 4 0 1 0 0-8 4 4 0 0 0 0 8Zm11 10v-2a4 4 0 0 0-3-3.9M16 3.1a4 4 0 0 1 0 7.8',
    'link' =>
      'M10 14a4 4 0 0 0 5.7 0l3-3a4 4 0 0 0-5.7-5.7l-1 1M14 10a4 4 0 0 0-5.7 0l-3 3a4 4 0 0 0 5.7 5.7l1-1',
    'layers' => 'm12 3 9 5-9 5-9-5 9-5Zm-9 9 9 5 9-5M3 16l9 5 9-5',
    'form' => 'M5 3h14v18H5zM8 8h8M8 12h8M8 16h3',
    'database' =>
      'M12 3c4.4 0 8 1.3 8 3s-3.6 3-8 3-8-1.3-8-3 3.6-3 8-3Zm8 3v12c0 1.7-3.6 3-8 3s-8-1.3-8-3V6m16 6c0 1.7-3.6 3-8 3s-8-1.3-8-3',
    'shield' =>
      'M12 3 4 6v6c0 5 3.5 8 8 9 4.5-1 8-4 8-9V6l-8-3Zm-3.5 9 2.5 2.5 4.5-5',
    'inbox' => 'M3 13h5l1.5 3h5l1.5-3h5M5 5h14l2 8v6H3v-6l2-8Z',
    'search' => 'M11 4a7 7 0 1 0 0 14 7 7 0 0 0 0-14Zm9 16-4-4',
    'compare' => 'M4 4h7v16H4zM13 4h7v16h-7zM7 9h1m-1 4h1m8-4h1m-1 4h1',
    'document' => 'M6 3h9l3 3v15H6zM15 3v3h3M9 11h6m-6 4h6',
    'upload' => 'M12 16V4m-4 4 4-4 4 4M4 16v4h16v-4',
    'calendar' => 'M4 5h16v16H4zM4 10h16M8 3v4m8-4v4',
    'alert' => 'M12 3 2 20h20L12 3Zm0 7v4m0 3h.01',
    'chat' => 'M4 4h16v12H8l-4 4V4Zm4 5h8m-8 3h5',
    'globe' =>
      'M12 3a9 9 0 1 0 0 18 9 9 0 0 0 0-18ZM3 12h18M12 3c2.5 2.5 3.5 5.5 3.5 9s-1 6.5-3.5 9c-2.5-2.5-3.5-5.5-3.5-9s1-6.5 3.5-9Z',
    'palette' =>
      'M12 3a9 9 0 0 0 0 18c1 0 1.5-.7 1.5-1.5 0-1.2-1-1.5-1-2.5s.8-1.5 1.8-1.5H17a4 4 0 0 0 4-4c0-4.7-4-8.5-9-8.5ZM7.5 11h.01M10 7.5h.01M14.5 7.5h.01',
    'headset' =>
      'M4 14v-2a8 8 0 0 1 16 0v2M4 14h3v6H4zM17 14h3v6h-3zM20 20a3 3 0 0 1-3 2h-3',
    'chart' => 'M4 20V4M4 20h16M8 16v-4m4 4V8m4 8v-6',
    _ => 'M4 4h16v16H4z',
  };

  return svg(
    viewBox: '0 0 24 24',
    attributes: {'aria-hidden': 'true'},
    [
      path(
        d: shape,
        fill: Color('none'),
        stroke: Color('currentColor'),
        strokeWidth: '1.7',
        styles: Styles(
          raw: {'stroke-linecap': 'round', 'stroke-linejoin': 'round'},
        ),
        [],
      ),
    ],
  );
}

const trustCenterUrl = 'https://trust.cuapps.com/';
const statusPageUrl = 'https://status.cuapps.com/';

Component isoBadge({int size = 160}) {
  return img(
    src: '/images/iso-27001-2022-certified.webp',
    alt: 'ISO/IEC 27001:2022 certified by Insight Assurance',
    width: size,
    height: size,
    loading: MediaLoading.lazy,
    classes: 'iso-badge',
  );
}

/// ISO/IEC 27001 certification band with a route to the Trust Center.
Component trustBand({bool chat = false}) {
  return section(classes: 'trust-band${chat ? ' trust-band-chat' : ''}', [
    div(classes: 'site-container trust-band-inner', [
      isoBadge(),
      div(classes: 'trust-band-copy', [
        p(classes: 'eyebrow', [Component.text('Independently certified')]),
        h2([Component.text('ISO/IEC 27001:2022 certified')]),
        p([
          Component.text(
            'CU Apps’ information security management system is independently certified to ISO/IEC 27001:2022, the international standard for managing information security.',
          ),
        ]),
      ]),
      div(classes: 'trust-band-links', [
        a(href: trustCenterUrl, target: Target.blank, classes: 'text-link', [
          Component.text('Visit our Trust Center'),
          linkArrow(ArrowKind.out),
        ]),
        a(href: statusPageUrl, target: Target.blank, classes: 'text-link', [
          Component.text('Check service status'),
          linkArrow(ArrowKind.out),
        ]),
      ]),
    ]),
  ]);
}

/// A product in the site navigation: label, route and one-line summary.
typedef ProductLink = (String label, String href, String summary);

const memberProducts = <ProductLink>[
  (
    'Member app',
    '/app-features',
    'A bespoke mobile app in your credit union’s brand.',
  ),
];

const chatProducts = <ProductLink>[
  (
    'AI Chatbot',
    '/cu-chat/ai-chatbot',
    '24/7 answers for members on your website.',
  ),
  (
    'Internal Knowledge Agent',
    '/cu-chat/knowledge-agent',
    'Instant answers for staff from your own policies.',
  ),
  (
    'CU Voice',
    '/cu-chat/voice',
    'A phone line members can talk to, day or night.',
  ),
];

const operationsProducts = <ProductLink>[
  (
    'AGM Hub',
    '/agm-hub',
    'Live stream, secure voting and questions in one place.',
  ),
  (
    'Loan Calculators',
    '/loan-calculators',
    'Branded calculators that lead straight to applications.',
  ),
  (
    'Origination & Applications',
    '/member-origination',
    'Prefilled, validated member and loan applications.',
  ),
  ('CU Flow', '/cu-flow', 'Describe a form and publish it inside your app.'),
];

/// Compact certification note for pages where visitors share details.
Component trustNote() {
  return div(classes: 'trust-note', [
    isoBadge(size: 64),
    div([
      p([
        strong([Component.text('ISO/IEC 27001:2022 certified')]),
      ]),
      a(href: trustCenterUrl, target: Target.blank, [
        Component.text('Visit our Trust Center'),
        linkArrow(ArrowKind.out),
      ]),
    ]),
  ]);
}
