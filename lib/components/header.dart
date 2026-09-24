import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header(classes: 'site-header', [
      // Qualified with the current path: a bare "#content" resolves
      // against the site's <base href="/">, sending every non-home page
      // to the homepage instead of skipping in place.
      a(href: '${context.url}#content', classes: 'skip-link', [
        Component.text('Skip to content'),
      ]),
      div(classes: 'site-container site-header-inner', [
        a(href: '/', classes: 'brand-link', [
          img(
            src: '/images/cu_logo.webp',
            alt: 'CU Apps home',
            width: 180,
            height: 42,
          ),
        ]),
        nav(
          classes: 'desktop-nav',
          attributes: {'aria-label': 'Main navigation'},
          [
            _productsMenu(),
            a(href: '/case-studies', [Component.text('Client stories')]),
            a(href: '/about', [Component.text('About')]),
            a(href: '/contact-us', [Component.text('Contact')]),
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
              a(href: '/cu-chat', [Component.text('CU Chat overview')]),
              a(href: '/cu-chat/stories', [
                Component.text('CU Chat client stories'),
              ]),
              for (final product in chatProducts) _mobileLink(product),
              p(classes: 'mobile-nav-label', [
                Component.text('Lending & operations'),
              ]),
              for (final product in operationsProducts) _mobileLink(product),
              div(classes: 'mobile-nav-divider', []),
              a(href: '/case-studies', [Component.text('Client stories')]),
              a(href: '/about', [Component.text('About')]),
              a(href: '/contact-us', [Component.text('Contact')]),
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
    return div(classes: 'nav-products', [
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
              a(href: '/cu-chat', classes: 'nav-products-overview', [
                Component.text('CU Chat overview'),
                linkArrow(ArrowKind.forward),
              ]),
              a(href: '/cu-chat/stories', classes: 'nav-products-overview', [
                Component.text('Client stories'),
                linkArrow(ArrowKind.forward),
              ]),
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
          a(href: href, classes: 'nav-product-link', [
            strong([Component.text(title)]),
            span([Component.text(summary)]),
          ]),
        ?footer,
      ],
    );
  }

  Component _mobileLink(ProductLink product) {
    return a(href: product.$2, [Component.text(product.$1)]);
  }
}
