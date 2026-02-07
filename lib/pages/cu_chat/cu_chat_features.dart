import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

@client
class CuChatFeatures extends StatefulComponent {
  const CuChatFeatures({super.key});

  @override
  State<CuChatFeatures> createState() => _CuChatFeaturesState();
}

class _CuChatFeaturesState extends State<CuChatFeatures> {
  int selectedFeatureIndex = 0;

  final features = [
    (
      title: 'Interactive Loan Calculator',
      description:
          'Generative AI assistant that handles complex questions and guides members through loan calculations conversationally.',
      icon: '🧮',
      image: '/images/ai_chatbot_interface.webp', // Placeholder
    ),
    (
      title: 'Customised and Branded',
      description:
          'Tailored to your mutual’s unique branding, loan products, savings accounts, and branch details.',
      icon: '🎨',
      image: '/images/app_hero.webp', // Placeholder
    ),
    (
      title: 'Free Up Phone Lines',
      description:
          'Reduces simple inquiries to call centers, allowing staff to focus on high-priority member situations.',
      icon: '📞',
      image: '/images/chatbot_hero.webp', // Placeholder
    ),
    (
      title: 'Bespoke Responses',
      description:
          'Trained on specific products to provide empathetic, personalized responses to every member.',
      icon: '💬',
      image: '/images/notifications.webp', // Placeholder
    ),
    (
      title: '24/7 Access',
      description:
          'Resolve financial queries anytime. If the AI can’t solve it, it provides clear next steps.',
      icon: '🕒',
      image: '/images/guiding_principles.webp', // Placeholder
    ),
    (
      title: 'Multi-language Support',
      description:
          'Communicate in multiple languages to break down barriers and ensure accessibility for all.',
      icon: '🌍',
      image: '/images/our_mission.webp', // Placeholder
    ),
    (
      title: 'Automated Lead Capture',
      description:
          'Enhance sales by automatically capturing member leads and facilitating callback requests.',
      icon: '📈',
      image: '/images/app_development.webp', // Placeholder
    ),
  ];

  @override
  Component build(BuildContext context) {
    // Left side features
    final leftFeatures = features.sublist(0, 3);
    // Right side features
    final rightFeatures = features.sublist(3, 6);
    // Bottom feature
    final bottomFeature = features[6];

    return div(classes: 'bg-base-100 py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl lg:text-center mb-16', [
          h2(classes: 'text-base font-semibold leading-7 text-secondary', [
            Component.text('CU Chat Features'),
          ]),
          p(
            classes:
                'mt-2 text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [Component.text('Everything needed to support your members')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            Component.text(
              'By using advanced AI and Large Language Models tailored for credit unions, CU Chat learns specifically about your mutual.',
            ),
          ]),
        ]),

        div(
          classes:
              'flex flex-col lg:grid lg:grid-cols-3 gap-8 items-center justify-center',
          [
            // Left Column
            div(classes: 'flex flex-col gap-8 w-full', [
              for (var i = 0; i < 3; i++)
                _buildFeatureItem(i, leftFeatures[i], alignRight: true),
            ]),

            // Center Column (Phone Mockup)
            div(classes: 'flex justify-center w-full py-10 lg:py-0', [
              div(classes: 'mockup-phone border-secondary', [
                //div(classes: 'mockup-phone-camera', []),
                div(classes: 'mockup-phone-display', [
                  img(
                    src: features[selectedFeatureIndex].image,
                    alt: features[selectedFeatureIndex].title,
                  ),
                ]),
              ]),
            ]),

            // Right Column
            div(classes: 'flex flex-col gap-8 w-full', [
              for (var i = 0; i < 3; i++)
                _buildFeatureItem(i + 3, rightFeatures[i], alignLeft: true),
            ]),
          ],
        ),

        // Bottom Feature
        div(classes: 'flex justify-center mt-12 w-full', [
          div(classes: 'max-w-md w-full', [
            _buildFeatureItem(6, bottomFeature, alignCenter: true),
          ]),
        ]),
      ]),
    ]);
  }

  Component _buildFeatureItem(
    int index,
    ({String description, String icon, String image, String title}) feature, {
    bool alignRight = false,
    bool alignLeft = false,
    bool alignCenter = false,
  }) {
    final isSelected = selectedFeatureIndex == index;

    // Determine text alignment class
    String alignmentClass = 'text-left'; // default
    if (alignRight) alignmentClass = 'lg:text-right';
    if (alignCenter) alignmentClass = 'text-center';

    // Determine flex alignment for icon
    String flexAlignClass = 'items-start';
    if (alignRight) flexAlignClass = 'lg:items-end';
    if (alignCenter) flexAlignClass = 'items-center';

    return div(
      classes:
          'cursor-pointer transition-all duration-300 p-4 rounded-xl border border-transparent hover:border-gray-200 hover:bg-gray-50 flex flex-col gap-3 $flexAlignClass ${isSelected ? "bg-secondary/5 border-secondary/20 shadow-sm" : ""}',
      events: events(
        onClick: () => setState(() => selectedFeatureIndex = index),
      ),
      [
        span(classes: 'text-4xl mb-2', [Component.text(feature.icon)]),
        h3(classes: 'text-lg font-semibold text-gray-900 $alignmentClass', [
          Component.text(feature.title),
        ]),
        p(classes: 'text-sm text-gray-600 leading-relaxed $alignmentClass', [
          Component.text(feature.description),
        ]),
      ],
    );
  }
}
