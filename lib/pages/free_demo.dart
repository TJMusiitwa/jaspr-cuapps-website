import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FreeDemo extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'min-h-screen bg-linear-to-tr from-base-200 via-primary/5 to-base-100 relative overflow-hidden',
      [
        // Decorative elements for a premium "mesh" look
        div(
          classes:
              'absolute top-[-10%] left-[-10%] w-[40%] h-[40%] bg-primary/10 rounded-full blur-[120px] animate-pulse',
          [],
        ),
        div(
          classes:
              'absolute bottom-[-5%] right-[-5%] w-[35%] h-[35%] bg-accent/10 rounded-full blur-[100px]',
          [],
        ),
        div(
          classes:
              'absolute top-[20%] right-[10%] w-[25%] h-[25%] bg-primary/5 rounded-full blur-[80px]',
          [],
        ),
        div(
          classes:
              'absolute middle-0 left-[20%] w-[30%] h-[30%] bg-blue-400/5 rounded-full blur-[100px]',
          [],
        ),

        div(
          classes:
              'relative max-w-[85rem] px-4 py-12 sm:px-6 sm:py-16 lg:px-8 lg:py-20 xl:py-24 mx-auto',
          [
            div(
              classes:
                  'grid items-center md:grid-cols-2 gap-8 lg:gap-12 xl:gap-16',
              [
                // Text content section with enhanced contrast
                div(classes: 'order-2 md:order-1', [
                  div(classes: 'space-y-6 md:space-y-8', [
                    h1(
                      [
                        Component.text(
                          'Get a free bespoke Mobile App or AI Chatbot demo for your mutual',
                        ),
                      ],
                      classes:
                          'font-bold text-base-content text-3xl sm:text-4xl lg:text-5xl xl:text-6xl leading-tight',
                    ),
                    p(
                      [
                        Component.text(
                          'We work with you to understand your mutual\'s unique needs and goals to create a custom mobile app or AI chatbot that meets your requirements and exceeds your members\' expectations.',
                        ),
                      ],
                      classes:
                          'text-base-content/70 text-base sm:text-lg lg:text-xl leading-relaxed max-w-2xl',
                    ),
                  ]),
                ]),

                // Card section with improved responsiveness
                div(classes: 'order-1 md:order-2 w-full', [
                  div(
                    classes:
                        'card bg-base-100 w-full max-w-md mx-auto lg:max-w-lg lg:ms-auto lg:me-0 shadow-2xl',
                    [
                      div(classes: 'card-body p-4 sm:p-6', [
                        div(classes: 'w-full overflow-hidden rounded-lg', [
                          iframe(
                            [],
                            width: 410,
                            height: 600,
                            src:
                                'https://calendly.com/cuapps?embed_domain=cuapps.co.uk&embed_type=Inline',
                            classes: 'w-full min-h-[500px] sm:min-h-[600px]',
                          ),
                        ]),
                      ]),
                    ],
                  ),
                ]),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
