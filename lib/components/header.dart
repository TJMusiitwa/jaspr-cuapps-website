import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = RouteState.of(context).location;
    yield header([
      Banner(),
      nav([
        div(classes: 'flex lg:flex-1', [
          a([
            span(classes: 'sr-only', [text('CU Apps')]),
            img(
                src: 'images/cu_logo.png',
                alt: 'CU Apps',
                classes: 'h-8 w-auto')
          ], href: '#', classes: '-m-1.5 p-1.5')
        ]),
        div(classes: 'flex lg:hidden', [
          button(
              type: ButtonType.button,
              classes:
                  '-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700',
              [
                span(classes: 'sr-only', [text('Open main menu')]),
                svg(classes: 'h-6 w-6', viewBox: '0 0 24 24', [
                  path([],
                      d: 'M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5',
                      stroke: Color.named('currentColor'),
                      strokeWidth: '1.5',
                      attributes: {
                        'fill': 'none',
                        'stroke-linecap': 'round',
                        'stroke-linejoin': 'round'
                      })
                ])
              ])
        ]),
        div(classes: ' hidden lg:flex lg:gap-x-12', [
          for (var route in [
            (label: 'Home', path: '/'),
            (label: 'Features', path: '/app-features'),
            (label: 'About Us', path: '/about'),
            (label: 'Contact Us', path: '/contact-us'),
          ])
            a([
              text(route.label),
              if (route.path == activePath)
                div(
                    classes: 'text-sm font-semibold leading-6 text-gray-900',
                    [])
            ], href: route.path),
          a(
            [
              text('CU Chat'),
              div(classes: 'text-sm font-semibold leading-6 text-gray-900', [])
            ],
            href: 'https://cuapps.co.uk/cuchat/',
            target: Target.blank,
          )
        ]),
      ], classes: 'flex items-center justify-between p-6 lg:px-8'),
      div(classes: 'hidden lg-hidden', attributes: {
        'role': 'dialog',
        'aria-modal': 'true'
      }, [
        div(classes: 'fixed inset-0 z-50', []),
        div(
            classes:
                'fixed inset-y-0 right-0 z-50 w-full overflow-y-auto bg-white px-6 py-6 sm:max-w-sm sm:ring-1 sm:ring-gray-900/10',
            [
              div(classes: 'flex items-center justify-between p-6 lg:px-8', [
                a([
                  span(classes: 'sr-only', [text('CU Apps')]),
                  img(
                      src: 'images/cu_logo.png',
                      alt: 'CU Apps',
                      classes: 'h-8 w-auto')
                ], href: '#', classes: '-m-1.5 p-1.5'),
                button(
                    type: ButtonType.button,
                    classes:
                        '-m-2.5 inline-flex items-center justify-center rounded-md p-2.5 text-gray-700',
                    [
                      span(classes: 'sr-only', [text('Close main menu')]),
                      svg(classes: 'h-6 w-6', viewBox: '0 0 24 24', [
                        path([],
                            d: 'M19.25 6.75l-12 12M19.25 18.75l-12-12',
                            stroke: Color.named('currentColor'),
                            strokeWidth: '1.5',
                            attributes: {
                              'fill': 'none',
                              'stroke-linecap': 'round',
                              'stroke-linejoin': 'round'
                            })
                      ])
                    ])
              ]),
              div(classes: 'mt-6 flow-root', [
                div(classes: '-my-6 divide-y divide-gray-500/10', [
                  div(classes: 'space-y-2 py-6', [
                    for (var route in [
                      (label: 'Home', path: '/'),
                      (label: 'Features', path: '/app-features'),
                      (label: 'About Us', path: '/about'),
                      (label: 'Contact Us', path: '/contact-us'),
                    ])
                      a([
                        text(route.label),
                        if (route.path == activePath)
                          div(
                              classes:
                                  'text-sm font-semibold leading-6 text-gray-900',
                              [])
                      ],
                          href: route.path,
                          classes:
                              '-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50')
                  ]),
                  a([text('CU Chat')],
                      href: 'https://cuapps.co.uk/cuchat/',
                      target: Target.blank,
                      classes:
                          '-mx-3 block rounded-lg px-3 py-2 text-base font-semibold leading-7 text-gray-900 hover:bg-gray-50')
                ])
              ])
            ])
      ])
    ], classes: 'absolute inset-x-0 top-0 z-50');
  }
}

class Banner extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      div([
        div([],
            styles: Styles.raw({
              'clip-path':
                  'polygon(74.8% 41.9%, 97.2% 73.2%, 100% 34.9%, 92.5% 0.4%, 87.5% 0%, 75% 28.6%, 58.5% 54.6%, 50.1% 56.8%, 46.9% 44%, 48.3% 17.4%, 24.7% 53.9%, 0% 27.9%, 11.9% 74.2%, 24.9% 54.1%, 68.6% 100%, 74.8% 41.9%)'
            }),
            classes:
                'aspect-[577/310] w-[36.0625rem] bg-gradient-to-r from-[#35a0d9] to-[#47346c] opacity-30')
      ],
          attributes: {
            'aria-hidden': 'true'
          },
          classes:
              'absolute left-[max(-7rem,calc(50%-52rem))] top-1/2 -z-10 -translate-y-1/2 transform-gpu blur-2xl'),
      div([
        div([],
            styles: Styles.raw({
              'clip-path':
                  'polygon(74.8% 41.9%, 97.2% 73.2%, 100% 34.9%, 92.5% 0.4%, 87.5% 0%, 75% 28.6%, 58.5% 54.6%, 50.1% 56.8%, 46.9% 44%, 48.3% 17.4%, 24.7% 53.9%, 0% 27.9%, 11.9% 74.2%, 24.9% 54.1%, 68.6% 100%, 74.8% 41.9%)'
            }),
            classes:
                'aspect-[577/310] w-[36.0625rem] bg-gradient-to-r from-[#35a0d9] to-[#47346c] opacity-30')
      ],
          attributes: {
            'aria-hidden': 'true'
          },
          classes:
              'absolute left-[max(45rem,calc(50%+8rem))] top-1/2 -z-10 -translate-y-1/2 transform-gpu blur-2xl'),
      div([
        div([
          span([
            svg([
              path(
                  strokeWidth: '1.5',
                  d:
                      'M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 0 0 2.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 0 1-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 0 0-1.091-.852H4.5A2.25 2.25 0 0 0 2.25 4.5v2.25Z',
                  [],
                  styles: Styles.raw(
                      {'stroke-linecap': "round", 'stroke-linejoin': "round"}))
            ],
                viewBox: '0 0 24 24',
                classes: 'w-5 h-5',
                styles: Styles.raw({'fill': 'none', 'stroke': 'currentColor'}))
          ]),
          a(
              classes: 'text-sm leading-6 px-3',
              [text('🇬🇧 0141 266 0189')],
              href: 'tel:0141 266 0189'),
          a(
              classes: 'text-sm leading-6 px-3',
              [text('🇮🇪 074 970 7869')],
              href: 'tel:0749707869'),
          a(
              classes: 'text-sm leading-6 px-3',
              [text('🇺🇸 031 330 61560')],
              href: 'tel:03133061560'),
          span([
            svg([
              path(
                  strokeWidth: '1.5',
                  d:
                      'M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75',
                  [],
                  styles: Styles.raw(
                      {'stroke-linecap': "round", 'stroke-linejoin': "round"}))
            ],
                viewBox: '0 0 24 24',
                classes: 'w-5 h-5 leading-6',
                styles: Styles.raw({'fill': 'none', 'stroke': 'currentColor'}))
          ]),
          a(
              classes: 'text-sm leading-6',
              [text('hello@cuapps.co.uk')],
              href: 'mailto:hello@cuapps.co.uk')
        ], classes: 'flex flex-1 justify-start')
      ], classes: 'flex flex-wrap items-center gap-x-4 gap-y-2'),
    ],
        classes:
            'relative isolate flex items-center gap-x-6 overflow-hidden px-6 py-2.5 sm:px-3.5 sm:before:flex-1');
  }
}
