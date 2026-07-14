import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class HeaderSection extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(
      classes: 'relative overflow-hidden bg-white',
      styles: Styles(
        raw: {
          'background-image':
              'radial-gradient(80% 60% at 70% 0%, rgba(198, 230, 255, 0.45), transparent 70%)',
        },
      ),
      [
        div(
          classes:
              'flex flex-col lg:flex-row items-center justify-between gap-12 lg:gap-16 pt-12 pb-8 sm:pt-20 px-6 lg:px-8 max-w-7xl mx-auto',
          [
            // Left Column - Text Content
            div(classes: 'lg:w-1/2 text-center lg:text-left', [
              h1(
                classes:
                    'text-4xl font-bold tracking-tight text-[#132139] sm:text-5xl lg:text-6xl leading-tight',
                [
                  Component.text('Bespoke mobile apps & '),
                  span(classes: 'text-[#259CE2]', [Component.text('AI chat')]),
                  Component.text(' for credit unions'),
                ],
              ),
              p(
                classes:
                    'mt-6 text-lg leading-8 text-[#132139]/70 max-w-xl mx-auto lg:mx-0',
                [
                  Component.text(
                    'Premium, affordable member apps and AI assistants, built for mutuals in the UK and Ireland.',
                  ),
                ],
              ),
              ConsultationButton(),
            ]),

            // Right Column - Phone Mockups
            div(
              classes:
                  'hidden lg:flex lg:w-1/2 relative justify-center items-center py-6',
              [
                div(classes: 'relative w-full max-w-[650px] h-[620px]', [
                  // Back phone (app_hero) - positioned left
                  div(
                    classes:
                        'mockup-phone absolute left-1/2 top-1/2 -translate-x-[70%] -translate-y-1/2 shadow-2xl shadow-[#132139]/20',
                    styles: Styles(
                      zIndex: ZIndex(10),
                      transform: Transform.combine([
                        Transform.rotate(Angle.deg(-10)),
                        Transform.scale(0.55),
                      ]),
                    ),
                    [
                      div(classes: 'mockup-phone-display overflow-hidden', [
                        img(
                          src: 'images/app_hero.webp',
                          alt: 'Mobile Banking Application',
                          classes: 'w-full h-full object-cover',
                        ),
                      ]),
                    ],
                  ),
                  // Front phone (chatbot_hero) - positioned right
                  div(
                    classes:
                        'mockup-phone absolute left-1/2 top-1/2 shadow-2xl shadow-[#132139]/20 -translate-x-[5%] -translate-y-[45%]',
                    styles: Styles(
                      zIndex: ZIndex(20),
                      transform: Transform.combine([
                        Transform.rotate(Angle.deg(10)),
                        Transform.scale(0.55),
                      ]),
                    ),
                    [
                      div(classes: 'mockup-phone-display overflow-hidden', [
                        img(
                          src: 'images/chatbot_hero.webp',
                          alt: 'AI Chatbot Application',
                          classes: 'w-full h-full object-cover',
                        ),
                      ]),
                    ],
                  ),
                ]),
              ],
            ),
          ],
        ),

        // Value props strip
        div(classes: 'max-w-7xl mx-auto px-6 lg:px-8 pb-16', [
          div(
            classes:
                'grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 border-t border-[#132139]/10',
            [
              _valueProp(
                title: 'Premium Mobile Apps',
                icon:
                    'M10.5 1.5H8.25A2.25 2.25 0 006 3.75v16.5a2.25 2.25 0 002.25 2.25h7.5A2.25 2.25 0 0018 20.25V3.75a2.25 2.25 0 00-2.25-2.25H13.5m-3 0V3h3V1.5m-3 0h3m-3 18.75h3',
              ),
              _valueProp(
                title: 'Advanced AI Chat',
                icon:
                    'M8.625 12a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H8.25m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H12m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0h-.375M21 12c0 4.556-4.03 8.25-9 8.25a9.764 9.764 0 0 1-2.555-.337A5.972 5.972 0 0 1 5.41 20.97a5.969 5.969 0 0 1-.474-.065 4.48 4.48 0 0 0 .978-2.025c.09-.457-.133-.901-.467-1.226C3.93 16.178 3 14.189 3 12c0-4.556 4.03-8.25 9-8.25s9 3.694 9 8.25Z',
              ),
              _valueProp(
                title: 'Quality Product Output',
                icon:
                    'M9.813 15.904 9 18.75l-.813-2.846a4.5 4.5 0 0 0-3.09-3.09L2.25 12l2.846-.813a4.5 4.5 0 0 0 3.09-3.09L9 5.25l.813 2.846a4.5 4.5 0 0 0 3.09 3.09L15.75 12l-2.846.813a4.5 4.5 0 0 0-3.09 3.09ZM18.259 8.715 18 9.75l-.259-1.035a3.375 3.375 0 0 0-2.455-2.456L14.25 6l1.036-.259a3.375 3.375 0 0 0 2.455-2.456L18 2.25l.259 1.035a3.375 3.375 0 0 0 2.456 2.456L21.75 6l-1.035.259a3.375 3.375 0 0 0-2.456 2.456Z',
              ),
              _valueProp(
                title: 'Trusted Technical Partner',
                icon:
                    'M9 12.75 11.25 15 15 9.75m-3-7.036A11.959 11.959 0 0 1 3.598 6 11.99 11.99 0 0 0 3 9.749c0 5.592 3.824 10.29 9 11.623 5.176-1.332 9-6.03 9-11.622 0-1.31-.21-2.571-.598-3.751h-.152c-3.196 0-6.1-1.248-8.25-3.285Z',
              ),
            ],
          ),
        ]),
      ],
    );
  }

  Component _valueProp({required String title, required String icon}) {
    return div(
      classes:
          'flex items-center gap-4 py-6 px-2 sm:px-6 border-b sm:border-b-0 border-[#132139]/10',
      [
        svg(
          viewBox: '0 0 24 24',
          classes: 'w-7 h-7 shrink-0 text-[#259CE2]',
          styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
          [
            path(
              d: icon,
              strokeWidth: '1.5',
              styles: Styles(
                raw: {'stroke-linecap': 'round', 'stroke-linejoin': 'round'},
              ),
              [],
            ),
          ],
        ),
        h3(classes: 'text-base font-semibold text-[#132139] tracking-tight', [
          Component.text(title),
        ]),
      ],
    );
  }
}

class ConsultationButton extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return Component.fragment([
      button(
        classes: 'mt-10 btn btn-primary btn-lg shadow-lg shadow-[#259CE2]/25',
        attributes: {'onclick': 'consultation_modal.showModal()'},
        [Component.text('Get A Free Consultation')],
      ),
      dialog(classes: 'modal', id: 'consultation_modal', [
        div(classes: 'modal-box w-11/12 max-w-5xl h-[80vh]', [
          iframe(
            classes: 'w-full h-full',
            loading: MediaLoading.eager,
            src: 'https://calendly.com/cuapps/cu-apps-meeting',
            [],
          ),
        ]),
        form(classes: 'modal-backdrop', method: FormMethod.dialog, [
          button([Component.text('X')]),
        ]),
      ]),
    ]);
  }
}
