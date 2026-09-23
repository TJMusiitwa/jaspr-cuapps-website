import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Error404 extends StatelessComponent {
  const Error404({super.key});

  @override
  Component build(BuildContext context) {
    return main_(classes: 'error-page', [
      div(classes: 'site-container error-inner', [
        div(classes: 'error-copy', [
          p(classes: 'eyebrow', [Component.text('Error 404')]),
          h1(classes: 'page-title', [
            Component.text('We can’t find that page.'),
          ]),
          p(classes: 'hero-lede', [
            Component.text(
              'The link may be out of date, or the address may have a typo. Everything we offer is listed here, or we can talk it through on a call.',
            ),
          ]),
          div(classes: 'hero-actions', [
            primaryLink(bookingLabel),
            quietLink('Go to the homepage', '/'),
          ]),
        ]),
        nav(
          classes: 'error-routes',
          attributes: {'aria-label': 'Products and pages'},
          [
            for (final (label, products) in [
              ('Member apps', memberProducts),
              ('CU Chat AI', chatProducts),
              ('Lending & operations', operationsProducts),
            ])
              div(classes: 'error-route-group', [
                p(classes: 'nav-products-label', [Component.text(label)]),
                for (final (title, href, summary) in products)
                  a(href: href, classes: 'nav-product-link', [
                    strong([Component.text(title)]),
                    span([Component.text(summary)]),
                  ]),
              ]),
          ],
        ),
      ]),
    ]);
  }
}
