import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    var activePath = RouteState.of(context).location;
    yield header([
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
