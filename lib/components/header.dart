import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key, this.chat = false, this.path = ''});

  final bool chat;

  /// The current route, used to mark its links with aria-current.
  final String path;

  /// CU Chat pages send Client stories to the chatbot stories instead.
  String get storiesHref => chat ? '/cu-chat/stories' : '/case-studies';

  static String _normalise(String path) => path.length > 1 && path.endsWith('/')
      ? path.substring(0, path.length - 1)
      : path;

  String get _path => _normalise(Uri.parse(path).path);

  /// Every product route, including CU Chat pages outside the dropdown.
  bool get _onProductPage =>
      [
        ...memberProducts,
        ...chatProducts,
        ...operationsProducts,
      ].any((product) => product.$2 == _path) ||
      (_path.startsWith('/cu-chat') && _path != '/cu-chat/stories') ||
      _path == '/ai-assistant-for-members';

  Map<String, String> _current(String href) =>
      _normalise(href) == _path ? {'aria-current': 'page'} : {};

  Component _navLink(String href, String label, {String? classes}) => a(
    href: href,
    classes: classes,
    attributes: _current(href),
    [Component.text(label)],
  );

  @override
  Component build(BuildContext context) {
    return header(classes: 'site-header', [
      div(classes: 'site-container site-header-inner', [
        a(href: '/', classes: 'brand-link', [
          img(
            src: chat ? '/images/cu_chat_logo.webp' : '/images/cu_logo.webp',
            alt: chat ? 'CU Chat home' : 'CU Apps home',
            width: 180,
            height: 42,
          ),
        ]),
        nav(
          classes: 'desktop-nav',
          attributes: {'aria-label': 'Main navigation'},
          [
            _productsMenu(),
            _navLink(storiesHref, 'Client stories'),
            _navLink('/about', 'About'),
            _navLink('/contact-us', 'Contact'),
          ],
        ),
        div(classes: 'desktop-action', [primaryLink(bookingLabel)]),
        // web/nav.js closes this on Escape, outside taps and link taps, and
        // swaps the label between Menu and Close.
        details(classes: 'mobile-menu', [
          summary([
            span(classes: 'mobile-menu-label', [Component.text('Menu')]),
            span(
              classes: 'mobile-menu-icon',
              attributes: {'aria-hidden': 'true'},
              [],
            ),
          ]),
          nav(
            attributes: {'aria-label': 'Mobile navigation'},
            [
              p(classes: 'mobile-nav-label', [Component.text('Member apps')]),
              for (final product in memberProducts) _mobileLink(product),
              p(classes: 'mobile-nav-label', [Component.text('CU Chat AI')]),
              _navLink('/cu-chat', 'CU Chat overview'),
              for (final product in chatProducts) _mobileLink(product),
              p(classes: 'mobile-nav-label', [
                Component.text('Lending & operations'),
              ]),
              for (final product in operationsProducts) _mobileLink(product),
              div(classes: 'mobile-nav-divider', []),
              _navLink(storiesHref, 'Client stories'),
              _navLink('/about', 'About'),
              _navLink('/contact-us', 'Contact'),
            ],
          ),
        ]),
      ]),
    ]);
  }

  // Opens on hover and on keyboard focus, so it works without JavaScript on
  // the static build and closes as soon as focus leaves. web/nav.js adds
  // aria-expanded and Escape to dismiss.
  Component _productsMenu() {
    // The trigger is underlined like a current link while on a product page;
    // the page's own entry in the panel carries aria-current.
    return div(classes: 'nav-products${_onProductPage ? ' is-current' : ''}', [
      button(
        type: ButtonType.button,
        attributes: {'aria-haspopup': 'true', 'aria-expanded': 'false'},
        [Component.text('Products')],
      ),
      div(classes: 'nav-products-panel', [
        div(classes: 'nav-products-col', [
          _group('Member apps', memberProducts),
          _group(
            'CU Chat AI',
            chatProducts,
            chat: true,
            footer: div(classes: 'nav-products-footer', [
              a(
                href: '/cu-chat',
                classes: 'nav-products-overview',
                attributes: _current('/cu-chat'),
                [
                  Component.text('CU Chat overview'),
                  linkArrow(ArrowKind.forward),
                ],
              ),
            ]),
          ),
        ]),
        _group('Lending & operations', operationsProducts),
      ]),
    ]);
  }

  Component _group(
    String label,
    List<ProductLink> products, {
    bool chat = false,
    Component? footer,
  }) {
    return div(
      classes: 'nav-products-group${chat ? ' nav-products-group-chat' : ''}',
      [
        p(classes: 'nav-products-label', [Component.text(label)]),
        for (final (title, href, summary) in products)
          a(
            href: href,
            classes: 'nav-product-link',
            attributes: _current(href),
            [
              strong([Component.text(title)]),
              span([Component.text(summary)]),
            ],
          ),
        ?footer,
      ],
    );
  }

  Component _mobileLink(ProductLink product) {
    return a(href: product.$2, [Component.text(product.$1)]);
  }
}
