import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Error404 extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(
      id: '404_page',
      classes: 'relative min-h-[100dvh] flex flex-col overflow-hidden',
      styles: Styles(
        raw: {
          // Brand gradient: CU Apps navy through CU Chat purple.
          'background-image':
              'linear-gradient(135deg, #132139 0%, #281254 55%, #433067 100%)',
        },
      ),
      [
        // Soft lilac and blue glows over the gradient
        div(
          classes: 'absolute inset-0 pointer-events-none',
          styles: Styles(
            raw: {
              'background-image':
                  'radial-gradient(45% 40% at 80% 15%, rgba(170, 145, 216, 0.25), transparent 70%), radial-gradient(50% 45% at 15% 85%, rgba(37, 156, 226, 0.22), transparent 70%)',
            },
          ),
          [],
        ),

        // Logo
        div(classes: 'relative z-10 px-6 pt-6 lg:px-8', [
          a(href: '/', classes: 'inline-block', [
            img(
              src: 'images/cu_logo.webp',
              alt: 'CU Apps',
              classes: 'h-8 w-auto rounded-lg bg-white/90 p-1',
            ),
          ]),
        ]),

        // Main content
        main_(
          classes:
              'relative z-10 flex-1 flex items-center justify-center px-6 py-16 lg:px-8',
          [
            div(classes: 'max-w-xl text-center', [
              p(
                classes:
                    'text-8xl sm:text-9xl font-bold tracking-tight text-[#C6E6FF]/25 leading-none select-none',
                [Component.text('404')],
              ),
              h1(
                classes:
                    'mt-4 text-3xl font-bold tracking-tight text-white sm:text-5xl',
                [Component.text('Page not found')],
              ),
              p(classes: 'mt-6 text-lg leading-8 text-white/70', [
                Component.text(
                  'Sorry, we couldn’t find the page you’re looking for.',
                ),
              ]),
              div(classes: 'mt-10 flex items-center justify-center gap-x-6', [
                a(
                  classes: 'btn btn-primary shadow-lg shadow-[#259CE2]/25',
                  href: '/',
                  [Component.text('Back to home')],
                ),
                a(
                  classes:
                      'text-sm font-semibold leading-6 text-[#C6E6FF] hover:text-white transition-colors',
                  href: '/contact-us',
                  [
                    Component.text('Contact us '),
                    span(
                      attributes: {'aria-hidden': 'true'},
                      [Component.text('→')],
                    ),
                  ],
                ),
              ]),
            ]),
          ],
        ),
      ],
    );
  }
}
