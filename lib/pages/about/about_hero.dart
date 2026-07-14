import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AboutHero extends StatelessComponent {
  const AboutHero({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'relative overflow-hidden bg-white',
      styles: Styles(
        raw: {
          'background-image':
              'radial-gradient(70% 60% at 50% 0%, rgba(198, 230, 255, 0.45), transparent 70%)',
        },
      ),
      [
        div(classes: 'max-w-7xl mx-auto px-6 lg:px-8 pt-20 pb-24 sm:pt-24', [
          div(classes: 'max-w-4xl mx-auto text-center', [
            h1(
              classes:
                  'text-4xl font-bold tracking-tight text-[#132139] sm:text-5xl lg:text-6xl',
              [
                Component.text('Empowering mutuals through '),
                span(classes: 'text-[#259CE2]', [
                  Component.text('modern member experiences'),
                ]),
              ],
            ),
            p(
              classes:
                  'mt-6 text-lg leading-8 text-[#132139]/70 max-w-3xl mx-auto',
              [
                Component.text(
                  'As the only UK company focusing exclusively on the digital experience of mutual members, we exist to help you provide the best member service possible, to grow your membership and increase your loan book.',
                ),
              ],
            ),
          ]),
        ]),
      ],
    );
  }
}
