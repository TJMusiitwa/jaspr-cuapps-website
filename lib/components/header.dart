import 'package:jaspr/jaspr.dart';

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield header([
      nav([
        div(classes: 'navbar bg-base-300 text-base-content', [
          div(classes: 'navbar-start', [
            a([
              img(
                  src: 'images/cu_logo.png',
                  alt: 'CU Apps',
                  classes: 'h-8 w-auto')
            ], href: '#', classes: '-m-1.5 p-1.5'),
          ]),
          div(classes: 'navbar-end', [
            div(classes: 'dropdown dropdown-left', [
              div(classes: 'btn btn-ghost lg:hidden', attributes: {
                'tabindex': '0',
                'role': 'button',
              }, [
                svg(classes: 'h-5 w-5', viewBox: '0 0 24 24', attributes: {
                  'fill': 'none',
                  'stroke': 'currentColor',
                  'xmlns': 'http://www.w3.org/2000/svg',
                }, [
                  path(
                      strokeWidth: '2',
                      d: 'M4 6h16M4 12h8m-8 6h16',
                      attributes: {
                        'stroke-linecap': 'round',
                        'stroke-linejoin': 'round',
                      },
                      []),
                ]),
              ]),
              ul(
                  classes:
                      'menu menu-sm dropdown-content bg-base-100 rounded-box z-[1] mt-3 w-52 p-2 shadow',
                  attributes: {
                    'tabindex': '0'
                  },
                  [
                    for (var route in [
                      (label: 'Home', path: '/'),
                      (label: 'Features', path: '/app-features'),
                      (label: 'About Us', path: '/about'),
                      (label: 'Free Demo', path: '/free-demo'),
                      (label: 'Contact Us', path: '/contact-us'),
                      (label: 'CU Chat', path: 'https://cuapps.co.uk/cuchat/'),
                    ])
                      if (route.label == 'CU Chat')
                        ul(classes: 'menu menu-horizontal px-1', [
                          li([
                            a([text(route.label)],
                                href: route.path,
                                target: Target.blank,
                                classes:
                                    'p-2 flex items-center text-sm font-semibold leading-6 text-gray-900 hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100')
                          ]),
                        ])
                      else
                        ul(classes: 'menu menu-horizontal px-1', [
                          li([
                            a(
                              classes: 'btn btn-ghost',
                              href: route.path,
                              [text(route.label)],
                            ),
                          ]),
                        ]),
                  ]),
            ]),
            for (var route in [
              (label: 'Home', path: '/'),
              (label: 'Features', path: '/app-features'),
              (label: 'About Us', path: '/about'),
              (label: 'Free Demo', path: '/free-demo'),
              (label: 'Contact Us', path: '/contact-us'),
              (label: 'CU Chat', path: 'https://cuapps.co.uk/cuchat/'),
            ])
              if (route.label == 'CU Chat')
                ul(classes: 'menu menu-horizontal px-1', [
                  li([
                    a([text(route.label)],
                        href: route.path,
                        target: Target.blank,
                        classes:
                            'text-secondary p-2 flex items-center text-sm font-semibold leading-6 text-gray-900 hover:bg-gray-100 rounded-lg focus:outline-none focus:bg-gray-100')
                  ]),
                ])
              else
                ul(classes: 'menu menu-horizontal px-1', [
                  li([
                    a(
                      classes: 'btn btn-ghost',
                      href: route.path,
                      [text(route.label)],
                    ),
                  ]),
                ]),
          ]),
        ]),
      ]),
    ]);
  }
}
