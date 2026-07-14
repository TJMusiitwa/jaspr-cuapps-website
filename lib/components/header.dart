import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

const _routes = [
  (label: 'Home', path: '/'),
  (label: 'Features', path: '/app-features'),
  (label: 'About Us', path: '/about'),
  (label: 'Free Demo', path: '/free-demo'),
  (label: 'Contact Us', path: '/contact-us'),
  (label: 'CU Chat', path: '/cu-chat'),
];

class Header extends StatelessComponent {
  const Header({super.key});

  @override
  Component build(BuildContext context) {
    return header(
      classes:
          'sticky top-0 z-50 w-full bg-white/80 backdrop-blur-md transition-all border-b border-[#132139]/5',
      [
        nav([
          div(classes: 'navbar text-base-content px-4 lg:px-8', [
            div(classes: 'navbar-start', [
              a(href: '/', classes: '-m-1.5 p-1.5', [
                img(
                  src: 'images/cu_logo.webp',
                  alt: 'CU Apps',
                  classes: 'h-8 w-auto',
                ),
              ]),
            ]),
            div(classes: 'navbar-end', [
              div(classes: 'dropdown dropdown-left', [
                div(
                  classes: 'btn btn-ghost lg:hidden',
                  attributes: {'tabindex': '0', 'role': 'button'},
                  [
                    svg(
                      classes: 'h-5 w-5',
                      viewBox: '0 0 24 24',
                      attributes: {
                        'fill': 'none',
                        'stroke': 'currentColor',
                        'xmlns': 'http://www.w3.org/2000/svg',
                      },
                      [
                        path(
                          strokeWidth: '2',
                          d: 'M4 6h16M4 12h8m-8 6h16',
                          attributes: {
                            'stroke-linecap': 'round',
                            'stroke-linejoin': 'round',
                          },
                          [],
                        ),
                      ],
                    ),
                  ],
                ),
                ul(
                  classes:
                      'menu menu-sm dropdown-content bg-base-100 rounded-box z-[1] mt-3 w-52 p-2 shadow',
                  attributes: {'tabindex': '0'},
                  [
                    for (var route in _routes)
                      ul(classes: 'menu menu-horizontal px-1', [
                        li([_navLink(route)]),
                      ]),
                  ],
                ),
              ]),
              for (var route in _routes)
                ul(classes: 'menu menu-horizontal px-1 hidden lg:flex', [
                  li([_navLink(route)]),
                ]),
            ]),
          ]),
        ]),
      ],
    );
  }

  Component _navLink(({String label, String path}) route) {
    if (route.label == 'CU Chat') {
      return a(
        href: route.path,
        classes:
            'p-2 flex items-center hover:bg-secondary/10 rounded-lg focus:outline-none focus:bg-secondary/10',
        [
          img(
            src: 'images/cu_chat_logo.webp',
            alt: 'CU Chat',
            classes: 'h-6 w-auto',
          ),
        ],
      );
    }
    return a(classes: 'btn btn-ghost', href: route.path, [
      Component.text(route.label),
    ]);
  }
}
