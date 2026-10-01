import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Disclosure strip above the header: this site is a demo, not the real one.
/// It scrolls away with the page (the header is the sticky element) but is
/// never dismissible, so every visitor sees it on arrival.
class DemoBanner extends StatelessComponent {
  const DemoBanner({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'demo-banner',
      attributes: {'role': 'region', 'aria-label': 'Demo site notice'},
      [
        div(classes: 'site-container demo-banner-inner', [
          p(classes: 'demo-banner-text', [
            strong([Component.text('This is not the official website. ')]),
            Component.text(
              'The CU Apps and CU Chat brands are used with permission to demo this site.',
            ),
          ]),
          div(classes: 'demo-banner-actions', [
            _officialLink('cuapps.co.uk', 'https://cuapps.co.uk'),
            _officialLink('cu.chat', 'https://cu.chat', chat: true),
          ]),
        ]),
      ],
    );
  }

  Component _officialLink(String label, String href, {bool chat = false}) {
    return a(
      href: href,
      target: Target.blank,
      classes: 'demo-banner-link${chat ? ' demo-banner-link-chat' : ''}',
      attributes: {
        'rel': 'noopener',
        'aria-label': 'Visit the official site, $label (opens in a new tab)',
      },
      [Component.text(label), linkArrow(ArrowKind.out)],
    );
  }
}
