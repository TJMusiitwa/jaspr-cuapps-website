import 'package:jaspr/jaspr.dart';

class FreeDemo extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'relative bg-gradient-to-r to-[rgba(0,105,255,1)] from-[#cee4ff]', [
      div(classes: 'max-w-[85rem] px-4 py-10 sm:px-6 lg:px-8 lg:py-14 mx-auto', [
        div(classes: 'grid items-center md:grid-cols-2 gap-8 lg:gap-12', [
          div([
            div([
              h1(
                [
                  text(
                    'Get a free bespoke Mobile App or AI Chatbot demo for your mutual',
                  ),
                ],
                classes:
                    'mb-4 font-semibold text-base-content text-4xl lg:text-5xl',
              ),
              p([
                text(
                  'We work with you to understand your mutual’s unique needs and goals to create a custom mobile app or AI chatbot that meets your requirements and exceeds your members’ expectations.',
                ),
              ], classes: 'text-base-content'),
            ], classes: 'mt-4 md:mb-12 max-w-2xl'),
          ]),
          div(
            classes:
                'card bg-base-100 lg:max-w-lg lg:mx-auto lg:me-0 ms-auto shadow-xl',
            [
              div(classes: 'card-body', [
                iframe(
                  [],
                  width: 410,
                  height: 600,
                  src:
                      'https://calendly.com/cuapps?embed_domain=cuapps.co.uk&embed_type=Inline',
                ),
              ]),
            ],
          ),
        ]),
      ]),
    ]);
  }
}
