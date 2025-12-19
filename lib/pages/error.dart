import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Error404 extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(
      id: '404_page',
      // Make two columns from md upwards (content + image). Hide image on < md.
      classes:
          'grid min-h-screen grid-cols-1 bg-white md:grid-cols-[max(50%,36rem),1fr]',
      [
        // Logo
        div(classes: 'absolute top-4 left-4 z-10', [
          a([
            img(src: 'images/cu_logo.webp', alt: 'CU Apps', classes: 'h-8'),
          ], href: '/'),
        ]),
        // Main content (left column on md+)
        main_(
          classes:
              'w-full px-6 py-24 mx-auto sm:py-32 md:col-start-1 md:row-start-1 md:flex md:h-full md:items-center md:px-16 lg:px-24',
          [
            div(classes: 'max-w-lg', [
              p(classes: 'text-base font-semibold leading-8 text-primary', [
                Component.text('404'),
              ]),
              h1(
                classes:
                    'mt-4 text-3xl font-bold tracking-tight text-gray-900 sm:text-5xl',
                [Component.text('Page not found')],
              ),
              p(classes: 'mt-6 text-base leading-7 text-gray-600', [
                Component.text(
                  'Sorry, we couldn’t find the page you’re looking for.',
                ),
              ]),
              div(classes: 'mt-10', [
                a(
                  classes:
                      'inline-flex items-center text-base font-medium text-accent hover:text-secondary-content',
                  [
                    svg(
                      [
                        path(
                          [],
                          attributes: {
                            'd': 'M15 19l-7-7 7-7',
                            'stroke': 'currentColor',
                            'stroke-width': '2',
                            'fill': 'none',
                            'stroke-linecap': 'round',
                            'stroke-linejoin': 'round',
                          },
                        ),
                      ],
                      width: Unit.pixels(16),
                      height: Unit.pixels(16),
                      viewBox: '0 0 24 24',
                      classes: 'mr-2',
                    ),
                    Component.text('Back to home'),
                  ],
                  href: '/',
                ),
              ]),
            ]),
          ],
        ),
        // Image (right column md+, hidden on small)
        div(
          classes: 'hidden md:relative md:block md:col-start-2 md:row-start-1',
          [
            img(
              src: 'images/error_image.webp',
              alt: 'Error page image',
              classes: 'absolute inset-0 w-full h-full object-cover',
            ),
          ],
        ),
      ],
    );
  }
}
