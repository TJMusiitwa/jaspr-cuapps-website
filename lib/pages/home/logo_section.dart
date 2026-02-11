import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class LogoSection extends StatelessComponent {
  const LogoSection({super.key});

  @override
  Component build(BuildContext context) {
    const logos = [
      'images/clients/pccu.webp',
      'images/clients/spcu.webp',
      'images/clients/ecu.webp',
      'images/clients/nhscu.webp',
      'images/clients/n1cpcu.webp',
      'images/clients/cscu.webp',
      'images/clients/thistle.webp',
      'images/clients/macu.webp',
      'images/clients/hocu.webp',
      'images/clients/adcu.webp',
      'images/clients/gmbcu.webp',
      'images/clients/lcbcu.webp',
      'images/clients/lopcu.webp',
      'images/clients/lecu.webp',
    ];

    return div(classes: 'bg-base-200 py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl text-center mb-16', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [Component.text('Trusted by leading credit unions in the UK')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            Component.text(
              'We are proud to have worked with some of the leading credit unions in the UK, helping them to revolutionise their digital presence and provide a better service to their members.',
            ),
          ]),
        ]),
        div(
          classes:
              'flex flex-wrap justify-center items-center gap-x-12 gap-y-16',
          [
            for (var logo in logos)
              div(classes: 'flex items-center justify-center w-40 h-20', [
                img(
                  src: logo,
                  alt: 'Client Logo',
                  classes:
                      'max-h-full max-w-full object-contain transition-transform duration-300 hover:scale-110',
                ),
              ]),
          ],
        ),
      ]),
    ]);
  }
}
