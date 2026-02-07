import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AboutHero extends StatelessComponent {
  const AboutHero({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'hero min-h-[70vh] bg-linear-to-tr from-base-100 via-primary/10 to-base-100 relative overflow-hidden py-24 sm:py-32',
      [
        // Decorative breathing blobs
        div(
          classes:
              'absolute top-[-10%] left-[-10%] w-[40%] h-[40%] bg-primary/30 rounded-full blur-[120px] animate-pulse',
          [],
        ),
        div(
          classes:
              'absolute bottom-[-5%] right-[-5%] w-[35%] h-[35%] bg-accent/30 rounded-full blur-[100px]',
          [],
        ),
        div(
          classes:
              'absolute top-[20%] right-[10%] w-[25%] h-[25%] bg-primary/20 rounded-full blur-[80px]',
          [],
        ),
        div(
          classes:
              'absolute middle-0 left-[20%] w-[30%] h-[30%] bg-blue-400/20 rounded-full blur-[100px]',
          [],
        ),

        div(
          classes:
              'hero-content text-center max-w-7xl mx-auto px-6 lg:px-8 relative z-10',
          [
            div(classes: 'max-w-4xl', [
              h1(
                classes:
                    'text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-6xl',
                [
                  Component.text('Empowering '),
                  span(
                    [Component.text('Mutuals')],
                    classes:
                        'bg-clip-text text-transparent bg-gradient-to-r from-blue-600 to-purple-600',
                  ),
                  Component.text(' Through '),
                  span(
                    [Component.text('Modern Member Experiences')],
                    classes:
                        'bg-clip-text text-transparent bg-gradient-to-r from-blue-600 to-purple-600',
                  ),
                ],
              ),
              p(
                classes:
                    'mt-6 text-lg leading-8 text-gray-600 max-w-3xl mx-auto',
                [
                  Component.text(
                    'As the only UK company focusing exclusively on the digital experience of mutual members, we exist to help you provide the best member service possible, to grow your membership and increase your loan book.',
                  ),
                ],
              ),
            ]),
          ],
        ),
      ],
    );
  }
}
