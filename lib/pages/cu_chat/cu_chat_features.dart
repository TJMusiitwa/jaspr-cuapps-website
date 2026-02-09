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
      icon: 'calculator',
      color: 'text-blue-600',
      image: '/images/ai_chatbot_interface.webp', // Placeholder
    ),
    (
      title: 'Customised and Branded',
      description:
          'Tailored to your mutual’s unique branding, loan products, savings accounts, and branch details.',
      icon: 'swatch',
      color: 'text-purple-600',
      image: '/images/app_hero.webp', // Placeholder
    ),
    (
      title: 'Free Up Phone Lines',
      description:
          'Reduces simple inquiries to call centers, allowing staff to focus on high-priority member situations.',
      icon: 'phone',
      color: 'text-success',
      image: '/images/chatbot_hero.webp', // Placeholder
    ),
    (
      title: 'Bespoke Responses',
      description:
          'Trained on specific products to provide empathetic, personalized responses to every member.',
      icon: 'chat-bubble-oval-left-ellipsis',
      color: 'text-indigo-600',
      image: '/images/notifications.webp', // Placeholder
    ),
    (
      title: '24/7 Access',
      description:
          'Resolve financial queries anytime. If the AI can’t solve it, it provides clear next steps.',
      icon: 'clock',
      color: 'text-amber-600',
      image: '/images/guiding_principles.webp', // Placeholder
    ),
    (
      title: 'Multi-language Support',
      description:
          'Communicate in multiple languages to break down barriers and ensure accessibility for all.',
      icon: 'language',
      color: 'text-sky-600',
      image: '/images/our_mission.webp', // Placeholder
    ),
    (
      title: 'Automated Lead Capture',
      description:
          'Enhance sales by automatically capturing member leads and facilitating callback requests.',
      icon: 'chart-bar',
      color: 'text-error',
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
    ({
      String description,
      String icon,
      String color,
      String image,
      String title,
    })
    feature, {
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
        div(classes: 'mb-2 ${feature.color}', [_getIcon(feature.icon)]),
        h3(classes: 'text-lg font-semibold text-gray-900 $alignmentClass', [
          Component.text(feature.title),
        ]),
        p(classes: 'text-sm text-gray-600 leading-relaxed $alignmentClass', [
          Component.text(feature.description),
        ]),
      ],
    );
  }

  Component _getIcon(String iconName) {
    String? dValue;
    switch (iconName) {
      case 'calculator':
        dValue =
            'M15.75 15.75V18m-7.5-6.75h.008v.008H8.25v-.008Zm0 2.25h.008v.008H8.25V13.5Zm0 2.25h.008v.008H8.25v-.008Zm0 2.25h.008v.008H8.25V18Zm2.498-6.75h.007v.008h-.007v-.008Zm0 2.25h.007v.008h-.007V13.5Zm0 2.25h.007v.008h-.007v-.008Zm0 2.25h.007v.008h-.007V18Zm2.504-6.75h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V13.5Zm0 2.25h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V18Zm2.498-6.75h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V13.5ZM8.25 6h7.5v2.25h-7.5V6ZM12 2.25c-1.892 0-3.758.11-5.593.322C5.307 2.7 4.5 3.65 4.5 4.757V19.5a2.25 2.25 0 0 0 2.25 2.25h10.5a2.25 2.25 0 0 0 2.25-2.25V4.757c0-1.108-.806-2.057-1.907-2.185A48.507 48.507 0 0 0 12 2.25Z';
        break;
      case 'swatch':
        dValue =
            'M4.098 19.902a3.75 3.75 0 0 0 5.304 0l6.401-6.402M6.75 21A3.75 3.75 0 0 1 3 17.25V4.125C3 3.504 3.504 3 4.125 3h5.25c.621 0 1.125.504 1.125 1.125v4.072M6.75 21a3.75 3.75 0 0 0 3.75-3.75V8.197M6.75 21h13.125c.621 0 1.125-.504 1.125-1.125v-5.25c0-.621-.504-1.125-1.125-1.125h-4.072M10.5 8.197l2.88-2.88c.438-.439 1.15-.439 1.59 0l3.712 3.713c.44.44.44 1.152 0 1.59l-2.879 2.88M6.75 17.25h.008v.008H6.75v-.008Z';
        break;
      case 'phone':
        dValue =
            'M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 0 0 2.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 0 1-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 0 0-1.091-.852H4.5A2.25 2.25 0 0 0 2.25 4.5v2.25Z';
        break;
      case 'chat-bubble-oval-left-ellipsis':
        dValue =
            'M8.625 12a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H8.25m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H12m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0h-.375M21 12c0 4.556-4.03 8.25-9 8.25a9.764 9.764 0 0 1-2.555-.337A5.972 5.972 0 0 1 5.41 20.97a5.969 5.969 0 0 1-.474-.065 4.48 4.48 0 0 0 .978-2.025c.09-.457-.133-.901-.467-1.226C3.93 16.178 3 14.189 3 12c0-4.556 4.03-8.25 9-8.25s9 3.694 9 8.25Z';
        break;
      case 'clock':
        dValue = 'M12 6v6h4.5m4.5 0a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z';
        break;
      case 'language':
        dValue =
            'm10.5 21 5.25-11.25L21 21m-9-3h7.5M3 5.621a48.474 48.474 0 0 1 6-.371m0 0c1.12 0 2.233.038 3.334.114M9 5.25V3m3.334 2.364C11.176 10.658 7.69 15.08 3 17.502m9.334-12.138c.896.061 1.785.147 2.666.257m-4.589 8.495a18.023 18.023 0 0 1-3.827-5.802';
        break;
      case 'chart-bar':
        dValue =
            'M3 13.125C3 12.504 3.504 12 4.125 12h2.25c.621 0 1.125.504 1.125 1.125v6.75C7.5 20.496 6.996 21 6.375 21h-2.25A1.125 1.125 0 0 1 3 19.875v-6.75ZM9.75 8.625c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125v11.25c0 .621-.504 1.125-1.125 1.125h-2.25a1.125 1.125 0 0 1-1.125-1.125V8.625ZM16.5 4.125c0-.621.504-1.125 1.125-1.125h2.25C20.496 3 21 3.504 21 4.125v15.75c0 .621-.504 1.125-1.125 1.125h-2.25a1.125 1.125 0 0 1-1.125-1.125V4.125Z';
        break;
    }

    return svg(
      attributes: {
        'xmlns': 'http://www.w3.org/2000/svg',
        'fill': 'none',
        'viewBox': '0 0 24 24',
        'stroke-width': '1.5',
        'stroke': 'currentColor',
        'class': 'w-10 h-10',
      },
      [
        if (dValue != null)
          path(
            attributes: {
              'stroke-linecap': 'round',
              'stroke-linejoin': 'round',
              'd': dValue,
            },
            [],
          ),
      ],
    );
  }
}
