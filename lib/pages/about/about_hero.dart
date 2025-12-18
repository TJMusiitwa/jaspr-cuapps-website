import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AboutHero extends StatelessComponent {
  const AboutHero({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'bg-gradient-to-r from-[#021431] via-[#0069ff] to-[#cee4ff] py-24',
      [
        div(classes: 'max-w-7xl mx-auto px-6 lg:px-8', [
          div(classes: 'text-center', [
            h1(
              classes:
                  'text-4xl font-bold tracking-tight text-white sm:text-6xl',
              [
                Component.text(
                  'App Developers Specialised in Credit Union Banking Apps',
                ),
              ],
            ),
            p(classes: 'mt-6 text-lg leading-8 text-white/80 max-w-3xl mx-auto', [
              Component.text(
                'As the only UK company focusing exclusively on the digital experience of credit union members, we exist to help you provide the best member service possible.',
              ),
            ]),
          ]),
        ]),
      ],
    );
  }
}
