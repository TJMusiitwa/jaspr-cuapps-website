import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class OurMission extends StatelessComponent {
  const OurMission({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'py-24 sm:py-32 bg-white', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl lg:mx-0', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [Component.text('Our mission')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            Component.text(
              'At CU Apps, we are dedicated to transforming the way credit unions connect with their members through innovative digital solutions.',
            ),
          ]),
        ]),
        div(classes: 'mx-auto mt-10 max-w-2xl lg:mx-0 lg:max-w-none', [
          div(
            classes:
                'grid grid-cols-1 gap-8 text-base leading-7 text-gray-600 lg:grid-cols-2',
            [
              p([
                Component.text(
                  'At CU Apps, we specialize in creating best-in-class mobile banking experiences for credit unions. We design and build Android and iOS apps that are secure, user-friendly, and put your members in control of their finances. We also develop bespoke generative AI chatbots to further enhance your members\' experience by providing 24/7 support and personalized interactions.',
                ),
              ]),
              p([
                Component.text(
                  'We differ from competitors in our focus on outstanding quality for members, customer service for credit unions and commitment to making technology affordable for credit unions. We help you meet and exceed you members\' expectations and turn tedious banking into easy-to-use and modern solutions without breaking the bank.',
                ),
              ]),
            ],
          ),
          p(classes: 'mt-8 text-base leading-7 text-gray-600', [
            Component.text(
              'CU Apps is a dynamic company and we are passionate about what we do. Our culture of constant improvement ensures that innovation and perfection are always what we strive for. Our attention to detail, customer focus and expertise mean that CU Apps is the perfect choice for any credit union wanting to implement a mobile application or get a bespoke advanced AI chatbot.',
            ),
          ]),
        ]),
      ]),
    ]);
  }
}
