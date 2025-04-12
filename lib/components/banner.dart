import 'package:jaspr/jaspr.dart';

class Banner extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      [
        div([
          svg(
            [
              path(
                strokeWidth: '1.5',
                d: 'M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 0 0 2.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 0 1-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 0 0-1.091-.852H4.5A2.25 2.25 0 0 0 2.25 4.5v2.25Z',
                [],
              ),
            ],
            width: Unit.pixels(24),
            height: Unit.pixels(24),
            viewBox: '0 0 24 24',
            attributes: {
              'fill': 'none',
              'stroke': 'currentColor',
              'stroke-width': '2',
              'stroke-linecap': 'round',
              'stroke-linejoin': 'round',
            },
            classes: 'shrink-0 size-3.5',
          ),
          a([text('🇬🇧 0141 266 0189')], href: 'tel:0141 266 0189'),
          a([text('🇮🇪 074 970 7869')], href: 'tel:0749707869'),
          a([text('🇺🇸 031 330 61560')], href: 'tel:03133061560'),
          a(
            classes: 'inline-flex justify-center items-center gap-x-2',
            [
              svg(
                [
                  path(
                    [],
                    d: 'M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75',
                    strokeWidth: '1.5',
                  ),
                ],
                width: Unit.pixels(24),
                height: Unit.pixels(24),
                viewBox: '0 0 24 24',
                attributes: {
                  'fill': 'none',
                  'stroke': 'currentColor',
                  'stroke-width': '2',
                  'stroke-linecap': 'round',
                  'stroke-linejoin': 'round',
                },
                classes: 'shrink-0 size-3.5',
              ),
              text('hello@cuapps.co.uk'),
            ],
            href: 'mailto:hello@cuapps.co.uk',
          ),
        ], classes: 'flex-1 flex items-center justify-end gap-x-3 pt-2'),
      ],
      styles: Styles(backgroundColor: Color.rgba(0, 105, 255, 1)),
      classes: 'mx-auto w-full px-4 sm:px-6 lg:px-8 text-base-200',
    );
  }
}
