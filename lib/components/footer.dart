import 'package:jaspr/jaspr.dart';

class Footer extends StatelessComponent {
  const Footer({super.key});
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield footer([
      div(
        classes: 'flex items-center justify-between p-6 lg:px-8',
        [
          div(classes: 'flex lg:flex-1', [
            a([
              span(classes: 'sr-only', [text('CU Apps')]),
              img(
                  src: 'images/cu_logo.png',
                  alt: 'CU Apps',
                  classes: 'h-8 w-auto')
            ], href: '#', classes: '-m-1.5 p-1.5'),
            span([
              text(
                  'Copyright © ${DateTime.now().year} CU Apps. All rights reserved.'),
            ], classes: 'mx-auto mt-2 text-sm font-medium text-gray-500')
          ]),
          div(classes: 'flex items-center space-x-4', [
            a([
              svg([
                path(
                    strokeWidth: '1.5',
                    d:
                        'm19 4-5.93 6.93M5 20l5.93-6.93m0 0 5.795 6.587c.19.216.483.343.794.343h1.474c.836 0 1.307-.85.793-1.435L13.07 10.93m-2.14 2.14L4.214 5.435C3.7 4.85 4.17 4 5.007 4h1.474c.31 0 .604.127.794.343l5.795 6.587',
                    [],
                    styles: Styles.raw({
                      'stroke-linecap': "round",
                      'stroke-linejoin': "round"
                    }))
              ],
                  viewBox: '0 0 24 24',
                  classes: 'w-6 h-6',
                  styles:
                      Styles.raw({'fill': 'none', 'stroke': 'currentColor'}))
            ],
                href: 'https://twitter.com/CreditUnionApps',
                classes: 'transition fill-black hover:text-blue-500'),
            a([
              svg([
                path(
                    strokeWidth: '1.5',
                    d:
                        'M8 16.375V10.75m4 5.625V13.5m0 0v-2.75m0 2.75c0-1.288 1.222-2 2.4-2 1.6 0 1.6 1.375 1.6 2.875v2m-8-8.75v.5',
                    [],
                    styles: Styles.raw({
                      'stroke-linecap': "round",
                      'stroke-linejoin': "round"
                    })),
                path(
                    strokeWidth: '1.5',
                    d:
                        'M3 9.4c0-2.24 0-3.36.436-4.216a4 4 0 0 1 1.748-1.748C6.04 3 7.16 3 9.4 3h5.2c2.24 0 3.36 0 4.216.436a4 4 0 0 1 1.748 1.748C21 6.04 21 7.16 21 9.4v5.2c0 2.24 0 3.36-.436 4.216a4 4 0 0 1-1.748 1.748C17.96 21 16.84 21 14.6 21H9.4c-2.24 0-3.36 0-4.216-.436a4 4 0 0 1-1.748-1.748C3 17.96 3 16.84 3 14.6z',
                    [],
                    styles: Styles.raw({
                      'stroke-linecap': "round",
                      'stroke-linejoin': "round"
                    })),
              ],
                  viewBox: '0 0 24 24',
                  classes: 'w-6 h-6',
                  styles:
                      Styles.raw({'fill': 'none', 'stroke': 'currentColor'}))
            ],
                href: 'https://www.linkedin.com/company/cuapps/',
                classes: 'transition fill-black hover:text-blue-500'),
            a([
              svg([
                path(
                    strokeWidth: '1.5',
                    d:
                        'M6.5 10v4h3v7h4v-7h3l1-4h-4V8c0-.545.455-1 1-1h3V3h-3c-2.723 0-5 2.277-5 5v2z',
                    [],
                    styles: Styles.raw({
                      'stroke-linecap': "round",
                      'stroke-linejoin': "round"
                    }))
              ],
                  viewBox: '0 0 24 24',
                  classes: 'w-6 h-6',
                  styles:
                      Styles.raw({'fill': 'none', 'stroke': 'currentColor'}))
            ],
                href: 'https://fb.me/creditunionapps',
                classes: 'transition fill-black hover:text-blue-500'),
          ])
        ],
      ),
    ], classes: 'absolute inset-x-0 bottom-0 z-50');
  }
}
