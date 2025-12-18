import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeaderSection extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'hero min-h-screen bg-linear-to-tr from-base-100 via-primary/10 to-base-100 relative overflow-hidden',
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

        // Main Content
        div([
          div(classes: 'text-center mt-5 py-10 sm:py-16 relative z-10', [
            h1(
              classes:
                  'text-4xl font-bold tracking-tight text-gray-900 sm:text-6xl max-w-4xl mx-auto leading-tight',
              [
                Component.text('Revolutionising '),
                span(
                  [Component.text('mutuals')],
                  classes:
                      'bg-clip-text text-transparent bg-gradient-to-r from-blue-600 to-purple-600',
                ),
                Component.text(' through '),
                span([
                  span([
                    span(
                      [Component.text('affordable')],
                      classes:
                          'bg-clip-text text-transparent bg-gradient-to-r from-blue-600 to-purple-600',
                    ),
                    span(
                      [Component.text('bespoke')],
                      classes:
                          'bg-clip-text text-transparent bg-gradient-to-r from-blue-600 to-purple-600',
                    ),
                    span(
                      [Component.text('premium')],
                      classes:
                          'bg-clip-text text-transparent bg-gradient-to-r from-blue-600 to-purple-600',
                    ),
                  ], classes: 'justify-items-center'),
                ], classes: 'text-rotate'),
                Component.text(' mobile applications & '),
                span(
                  [Component.text('AI')],
                  classes:
                      'bg-clip-text text-transparent bg-gradient-to-r from-blue-600 to-purple-600',
                ),
                Component.text(' Chat applications'),
              ],
            ),
            ConsultationButton(),
          ]),
        ], classes: 'hero-content text-center'),
      ],
    );
  }
}

class ConsultationButton extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return Component.fragment([
      button(
        [Component.text('Get A Free Consultation')],
        classes:
            'mt-10 btn bg-[#0069ff] btn-wide text-base-100 hover:bg-blue-700 border-none shadow-lg shadow-blue-500/30',
        attributes: {'onclick': 'consultation_modal.showModal()'},
      ),
      dialog(classes: 'modal', id: 'consultation_modal', [
        div(classes: 'modal-box w-11/12 max-w-5xl h-[80vh]', [
          iframe(
            [],
            classes: 'w-full h-full',
            loading: MediaLoading.eager,
            src: 'https://calendly.com/cuapps/cu-apps-meeting',
          ),
        ]),
        form(
          [
            button([Component.text('X')]),
          ],
          classes: 'modal-backdrop',
          method: FormMethod.dialog,
        ),
      ]),
    ]);
  }
}
