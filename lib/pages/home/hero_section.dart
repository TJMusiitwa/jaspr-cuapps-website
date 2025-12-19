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

        // Main Content - Two Column Layout
        div([
          div(
            classes:
                'flex flex-col lg:flex-row items-center justify-between gap-12 lg:gap-16 py-10 sm:py-16 relative z-10 px-6 lg:px-8 max-w-7xl mx-auto',
            [
              // Left Column - Text Content
              div(classes: 'lg:w-1/2 text-center lg:text-left', [
                h1(
                  classes:
                      'text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-6xl leading-tight',
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

              // Right Column - Phone Mockups
              div(
                classes:
                    'hidden lg:flex lg:w-1/2 relative justify-center items-center py-12',
                [
                  // Container for overlapping phones with ample space
                  div(
                    classes:
                        'relative w-full max-w-[650px] h-[700px] lg:h-[850px]',
                    [
                      // Back phone (app_hero) - positioned left
                      div(
                        classes:
                            'mockup-phone absolute left-1/2 top-1/2 -translate-x-[70%] -translate-y-1/2 shadow-2xl',
                        styles: Styles(
                          zIndex: ZIndex(10),

                          transform: Transform.combine([
                            Transform.rotate(Angle.deg(-12)),
                            Transform.scale(0.6),
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
                            'mockup-phone absolute left-1/2 top-1/2 shadow-2xl -translate-x-[5%] -translate-y-[45%]',
                        styles: Styles(
                          zIndex: ZIndex(20),
                          transform: Transform.combine([
                            Transform.rotate(Angle.deg(12)),
                            Transform.scale(0.6),
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
                    ],
                  ),
                ],
              ),
            ],
          ),

          // Feature Cards
          div(
            classes:
                'container mx-auto px-6 lg:px-8 lg:-mt-24 mt-8 pb-16 relative z-10',
            [
              div(classes: 'grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6', [
                FeatureCard(
                  title: 'Premium Mobile Apps',
                  icon:
                      '<svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-8 h-8"><path stroke-linecap="round" stroke-linejoin="round" d="M10.5 1.5H8.25A2.25 2.25 0 006 3.75v16.5a2.25 2.25 0 002.25 2.25h7.5A2.25 2.25 0 0018 20.25V3.75a2.25 2.25 0 00-2.25-2.25H13.5m-3 0V3h3V1.5m-3 0h3m-3 18.75h3" /></svg>',
                ),
                FeatureCard(
                  title: 'Advanced AI Chat',
                  icon:
                      '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-8 h-8"><path d="M12 6V2H8"/><path d="M15 11v2"/><path d="M2 12h2"/><path d="M20 12h2"/><path d="M20 16a2 2 0 0 1-2 2H8.828a2 2 0 0 0-1.414.586l-2.202 2.202A.71.71 0 0 1 4 20.286V8a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2z"/><path d="M9 11v2"/></svg>',
                ),
                FeatureCard(
                  title: 'Quality Product Output',
                  icon:
                      '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-8 h-8"><path d="M10.5 3 8 9l4 13 4-13-2.5-6"/><path d="M17 3a2 2 0 0 1 1.6.8l3 4a2 2 0 0 1 .013 2.382l-7.99 10.986a2 2 0 0 1-3.247 0l-7.99-10.986A2 2 0 0 1 2.4 7.8l2.998-3.997A2 2 0 0 1 7 3z"/><path d="M2 9h20"/></svg>',
                ),
                FeatureCard(
                  title: 'Trusted Technical Partner',
                  icon:
                      '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="w-8 h-8"><path d="m11 17 2 2a1 1 0 1 0 3-3"/><path d="m14 14 2.5 2.5a1 1 0 1 0 3-3l-3.88-3.88a3 3 0 0 0-4.24 0l-.88.88a1 1 0 1 1-3-3l2.81-2.81a5.79 5.79 0 0 1 7.06-.87l.47.28a2 2 0 0 0 1.42.25L21 4"/><path d="m21 3 1 11h-2"/><path d="M3 3 2 14l6.5 6.5a1 1 0 1 0 3-3"/><path d="M3 4h8"/></svg>',
                ),
              ]),
            ],
          ),
        ], classes: 'hero-content w-full flex-col'),
      ],
    );
  }
}

class FeatureCard extends StatelessComponent {
  final String title;
  final String icon;

  FeatureCard({required this.title, required this.icon});

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'flex flex-col items-center justify-center p-6 gap-4 bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl shadow-xl hover:bg-white/20 transition-all duration-300 group hover:-translate-y-1',
      [
        div(
          classes:
              'text-primary group-hover:scale-110 transition-transform duration-300',
          [RawText(icon)],
        ),
        h3(
          classes:
              'text-lg font-semibold text-gray-800 text-center tracking-tight',
          [Component.text(title)],
        ),
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
