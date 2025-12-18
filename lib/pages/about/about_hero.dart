import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AboutHero extends StatelessComponent {
  const AboutHero({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'hero bg-gradient-to-b from-blue-100 to-white py-24 sm:py-32',
      [
        div(classes: 'hero-content text-center max-w-7xl mx-auto px-6 lg:px-8', [
          div(classes: 'max-w-4xl', [
            h1(
              classes:
                  'text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-6xl',
              [
                Component.text(
                  'Empowering Mutuals Through Modern Member Experiences',
                ),
              ],
            ),
            p(classes: 'mt-6 text-lg leading-8 text-gray-600 max-w-3xl mx-auto', [
              Component.text(
                'As the only UK company focusing exclusively on the digital experience of mutual members, we exist to help you provide the best member service possible, to grow your membership and increase your loan book.',
              ),
            ]),
          ]),
        ]),
      ],
    );
  }
}
