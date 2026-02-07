import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class LogoSection extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div([
      div([
        // Main container with flex layout
        div(
          [
            // Left side - Heading and subtitle
            div(
              [
                h2(
                  [
                    Component.text(
                      'Trusted by leading credit unions in the UK',
                    ),
                  ],
                  classes:
                      'text-4xl md:text-5xl lg:text-6xl font-bold text-gray-900 mb-4',
                ),
                p([
                  Component.text(
                    'We are proud to have worked with some of the leading credit unions in the UK, helping them to revolutionise their digital presence and provide a better service to their members.',
                  ),
                ], classes: 'text-base md:text-lg text-gray-600 leading-relaxed'),
              ],
              classes:
                  'flex-shrink-0 lg:w-[45%] mb-12 lg:mb-0 text-center lg:text-left',
            ),

            // Right side - Logo grid
            div(
              [
                logoBuilder(imgSrc: 'images/clients/pccu.webp'),
                logoBuilder(imgSrc: 'images/clients/spcu.webp'),
                logoBuilder(imgSrc: 'images/clients/ecu.webp'),
                logoBuilder(imgSrc: 'images/clients/nhscu.webp'),
                logoBuilder(imgSrc: 'images/clients/n1cpcu.webp'),
                logoBuilder(imgSrc: 'images/clients/cscu.webp'),
                logoBuilder(imgSrc: 'images/clients/thistle.webp'),
                logoBuilder(imgSrc: 'images/clients/macu.webp'),
                logoBuilder(imgSrc: 'images/clients/hocu.webp'),
                logoBuilder(imgSrc: 'images/clients/adcu.webp'),
                logoBuilder(imgSrc: 'images/clients/gmbcu.webp'),
                logoBuilder(imgSrc: 'images/clients/lcbcu.webp'),
                logoBuilder(imgSrc: 'images/clients/lopcu.webp'),
                logoBuilder(imgSrc: 'images/clients/lecu.webp'),
              ],
              classes:
                  'grid grid-cols-2 sm:grid-cols-3 md:grid-cols-5 lg:grid-cols-5 gap-8 md:gap-10 lg:gap-12 items-center flex-1',
            ),
          ],
          classes:
              'flex flex-col lg:flex-row gap-8 lg:gap-24 items-center lg:items-start',
        ),
      ], classes: 'mx-auto max-w-7xl px-6 lg:px-8'),
    ], classes: 'bg-white py-16 sm:py-20 lg:py-24');
  }

  Component logoBuilder({required String imgSrc}) {
    return div([
      img(
        src: imgSrc,
        alt: imgSrc,
        classes: 'w-full h-auto object-contain',
        height: 100,
        width: 100,
        loading: MediaLoading.lazy,
      ),
    ], classes: 'flex items-center justify-center');
  }
}
