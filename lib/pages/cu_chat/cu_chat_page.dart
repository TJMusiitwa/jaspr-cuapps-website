import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'cu_chat_features.dart';

class CuChatPage extends StatelessComponent {
  const CuChatPage({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      const CuChatHero(),
      const CuChatFeatures(),
      const CuChatSteps(),
      const CuChatFAQ(),
      const CuChatLogos(),
    ]);
  }
}

class CuChatHero extends StatelessComponent {
  const CuChatHero({super.key});

  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'hero min-h-screen bg-linear-to-tr from-base-100 via-secondary/10 to-base-100 relative overflow-hidden',
      [
        // Decorative blobs (Purple theme)
        div(
          classes:
              'absolute top-[-10%] left-[-10%] w-[40%] h-[40%] bg-secondary/30 rounded-full blur-[120px] animate-pulse',
          [],
        ),
        div(
          classes:
              'absolute bottom-[-5%] right-[-5%] w-[35%] h-[35%] bg-accent/30 rounded-full blur-[100px]',
          [],
        ),

        div(
          classes:
              'flex flex-col lg:flex-row items-center justify-between gap-12 lg:gap-16 py-20 px-6 lg:px-8 max-w-7xl mx-auto relative z-10',
          [
            // Left Column
            div(classes: 'lg:w-1/2 text-center lg:text-left', [
              h1(
                classes:
                    'text-4xl font-bold tracking-tight text-gray-900 sm:text-5xl lg:text-6xl leading-tight',
                [
                  Component.text('Enhance your '),
                  span([
                    Component.text('member services'),
                  ], classes: 'text-secondary'),
                  Component.text(' with our Advanced '),
                  span([
                    Component.text('AI Assistant'),
                  ], classes: 'text-accent'),
                ],
              ),
              p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
                Component.text(
                  'Available 24/7 to provide quick, personalised member support. Our advanced generative AI chatbots are designed to enhance your member service, enabling you to focus staff on growing your mutual.',
                ),
              ]),
              div(
                classes:
                    'mt-10 flex items-center justify-center lg:justify-start gap-x-6',
                [
                  a(
                    classes:
                        'btn btn-secondary btn-lg shadow-lg shadow-secondary/30 text-white',
                    href: '/free-demo',
                    [Component.text('Book A Demo')],
                  ),
                  div(
                    classes: 'text-sm font-semibold leading-6 text-gray-900',
                    [Component.text('✓ Free demo')],
                  ),
                  div(
                    classes: 'text-sm font-semibold leading-6 text-gray-900',
                    [Component.text('✓ Prototype AI Chatbot')],
                  ),
                ],
              ),
            ]),

            // Right Column - Mockup
            div(
              classes:
                  'lg:w-6/12 relative mt-12 lg:mt-0 flex items-center justify-center',
              [
                // Browser Mockup
                div(classes: 'mockup-browser  bg-base-300 w-full shadow-2xl', [
                  div(classes: 'mockup-browser-toolbar', []),
                  div(classes: 'flex justify-center bg-base-200', [
                    img(
                      src: 'images/chat_website_hero.webp',
                      classes: 'w-full h-auto block',
                      alt: 'CU Chat Website Interface',
                    ),
                  ]),
                ]),
                // Phone Mockup (Positioned absolute to overlap)
                div(
                  classes:
                      'absolute -left-4 -bottom-12 lg:-left-12 lg:-bottom-16 w-[120px] sm:w-[140px] lg:w-[170px] z-20',
                  [
                    div(classes: 'border-primary shadow-2xl', [
                      div(classes: '', [
                        img(
                          src: 'images/chat_mobile_hero.webp',
                          classes: 'w-full h-auto',
                          alt: 'CU Chat Mobile Interface',
                        ),
                      ]),
                    ]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

class CuChatSteps extends StatelessComponent {
  const CuChatSteps({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'bg-secondary/10 py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl text-center', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [Component.text('Get started with CU Chat')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            Component.text(
              'Three simple steps to revolutionise your member service.',
            ),
          ]),
        ]),
        div(classes: 'mx-auto mt-16 max-w-7xl px-6 lg:px-8', [
          ul(classes: 'grid grid-cols-1 gap-8 lg:grid-cols-3', [
            _buildStep(
              step: 'Step 1',
              title: 'Book a demo',
              description:
                  'Allow us to show you the features that are enhancing the customer service experience for other Mutuals and how it can help yours.',
            ),
            _buildStep(
              step: 'Step 2',
              title: 'Customise your chatbot',
              description:
                  'From loan calculation features to naming your chatbot, we’ll customise your chatbot to your needs.',
            ),
            _buildStep(
              step: 'Step 3',
              title: 'Grow your Mutual',
              description:
                  'Once launched, you’ll be able to redeploy staff, focussed on building your member base and increasing revenue.',
            ),
          ]),
          div(classes: 'mt-10 flex justify-center', [
            a(
              classes:
                  'btn btn-secondary shadow-lg shadow-secondary/30 text-white',
              href: '/free-demo',
              [Component.text('Review Customisation Options')],
            ),
          ]),
        ]),
      ]),
    ]);
  }

  Component _buildStep({
    required String step,
    required String title,
    required String description,
  }) {
    return li(
      classes: 'bg-white rounded-2xl shadow-sm p-8 border border-gray-100',
      [
        h3(classes: 'text-sm font-semibold leading-7 text-secondary', [
          Component.text(step),
        ]),
        p(classes: 'mt-2 text-xl font-bold tracking-tight text-gray-900', [
          Component.text(title),
        ]),
        p(classes: 'mt-4 text-base leading-7 text-gray-600', [
          Component.text(description),
        ]),
      ],
    );
  }
}

class CuChatFAQ extends StatelessComponent {
  const CuChatFAQ({super.key});

  @override
  Component build(BuildContext context) {
    const faqs = [
      (
        q: 'How does CU Chat handle personal data?',
        a: 'As a service handling member personal data, CU Chat is fully compliant with GDPR, ensuring personal data is stored in Frankfurt, Germany and controlled by the credit union. CU Apps provide a Data Processing Agreement giving further details on how data is handled.',
      ),
      (
        q: 'Will my chatbot be specific to my mutual?',
        a: 'Yes! Your chatbot will respond with your credit union’s answers to your member’s queries. The chat bot is customised bespoke for your credit union, including the products you sell, the services you offer and the branches you have.',
      ),
      (
        q: 'How much does it cost and is there a minimum term?',
        a: 'CU Chat has no upfront fees or development costs. For pricing in specific regions, please contact us. There is a 6 month minimum term, a 90 day cancellation notice is required.',
      ),
      (
        q: 'Do you provide insights and analytics?',
        a: 'Yes! The CU Chat Portal is our chat admin portal that gives you access to your chatbot conversations, member feedback, and performance analytics. You can review chat responses, track usage trends, and monitor how your chatbot is performing over time.',
      ),
      (
        q: 'Do you provide an SLA?',
        a: 'Yes! CU Apps makes its platform available with a 99.99% target service availability as a standard. The details of our SLA are outlined in our contract.',
      ),
      (
        q: 'Does the member need to agree to the privacy policy before starting a chat?',
        a: 'In order to accept and process personal data, consent from users/members is required. This consent is collected via a tick-box option before a member can engage past the first screen with the chatbot.',
      ),
      (
        q: 'Can we name our chatbot?',
        a: 'Of course you can! We try to make the design and name of each chatbot specific to the credit union. Credit unions pick their own name, colour schemes and avatar.',
      ),
      (
        q: 'How does request a callback work?',
        a: 'Request a callback allows members to request a follow-up call from the credit union team when needed. When the feature is enabled, a request callback button is presented in conversations where the AI detects that a member may require additional human support.',
      ),
      (
        q: 'What personal information is collected?',
        a: 'We only collect chat history. The chatbot does not ask for or require any personal data, and there are no questions designed to elicit sensitive information.',
      ),
    ];

    return div(classes: 'bg-base-300 py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-4xl', [
          h2(
            classes:
                'text-3xl font-bold leading-10 tracking-tight text-gray-900 text-center',
            [Component.text('Frequently asked questions')],
          ),
          p(classes: 'mt-4 text-lg leading-8 text-gray-600 text-center', [
            Component.text(
              'Everything you need to know about setting up and using our AI Assistant. If you have any other questions, feel free to reach out to our team.',
            ),
          ]),
          div(classes: 'mt-10 space-y-4', [
            for (var faq in faqs)
              details(
                classes: 'collapse collapse-arrow bg-base-100 shadow-sm',
                [
                  summary(
                    classes: 'collapse-title text-lg font-bold text-gray-900',
                    [Component.text(faq.q)],
                  ),
                  div(classes: 'collapse-content', [
                    p(classes: 'text-gray-600', [Component.text(faq.a)]),
                  ]),
                ],
              ),
          ]),
        ]),
      ]),
    ]);
  }
}

class CuChatLogos extends StatelessComponent {
  const CuChatLogos({super.key});

  @override
  Component build(BuildContext context) {
    const logos = [
      'images/clients/donore.webp',
      'images/clients/n1cpcu.webp',
      'images/clients/hocu.webp',
      'images/clients/ecu.webp',
      'images/clients/sycu.webp',
      'images/clients/fccu.webp',
      'images/clients/stpcu.webp',
      'images/clients/thistle.webp',
      'images/clients/pccu.webp',
      'images/clients/nhscu.webp',
      'images/clients/savvi.webp',
    ];

    return div(classes: 'bg-white py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl text-center mb-16', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [Component.text('Trusted by leading Mutuals')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            Component.text(
              'Join the growing number of credit unions already using our AI Assistant to revolutionise their member service and automate routine enquiries.',
            ),
          ]),
        ]),
        div(
          classes:
              'flex flex-wrap justify-center items-center gap-x-12 gap-y-16',
          [
            for (var logo in logos)
              div(classes: 'flex items-center justify-center w-40 h-20', [
                img(
                  src: logo,
                  alt: 'Client Logo',
                  classes:
                      'max-h-full max-w-full object-contain transition-transform duration-300 hover:scale-110',
                ),
              ]),
          ],
        ),
      ]),
    ]);
  }
}
