import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class OurMission extends StatelessComponent {
  const OurMission({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'py-24 sm:py-32 bg-white', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl text-center mb-16 sm:mb-20', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [Component.text('Purpose Driven Innovation')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            Component.text(
              'Our mission and values guide every decision we make, ensuring we deliver meaningful impact for credit unions and their members across the UK.',
            ),
          ]),
        ]),
        // Section 1: Our Mission (Image Left, Text Right)
        div(classes: 'bg-base-200 rounded-2xl overflow-hidden mb-16', [
          div(classes: 'grid grid-cols-1 lg:grid-cols-2 items-center', [
            // Image
            div(classes: 'h-full', [
              img(
                classes: 'h-full w-full object-cover',
                src: 'images/our_mission.webp',
                alt: 'CU Apps team collaboration',
              ),
            ]),
            // Text
            div(classes: 'p-8 lg:p-12', [
              p(
                classes:
                    'text-sm font-semibold uppercase tracking-wide text-gray-500',
                [Component.text('OUR MISSION')],
              ),
              h2(
                classes:
                    'mt-2 text-2xl font-bold tracking-tight text-gray-900 sm:text-3xl',
                [Component.text('Empowering Your Members')],
              ),
              p(classes: 'mt-6 text-base leading-7 text-gray-600', [
                Component.text(
                  'To drive credit unions to meet and exceed member expectations while competing with large financial institutions. We design and build secure, user-friendly Android and iOS apps that put your members in control of their finances.',
                ),
              ]),
              div(classes: 'mt-8', [
                a(
                  href: '/app-features',
                  classes:
                      'text-sm font-semibold leading-6 text-blue-600 hover:text-blue-500',
                  [
                    Component.text('READ MORE'),
                    span(
                      classes: 'ml-1',
                      attributes: {'aria-hidden': 'true'},
                      [Component.text('→')],
                    ),
                  ],
                ),
              ]),
            ]),
          ]),
        ]),

        // Section 2: Our Values (Text Left, Image Right)
        div(classes: 'bg-base-200 rounded-2xl overflow-hidden', [
          div(classes: 'grid grid-cols-1 lg:grid-cols-2 items-center', [
            // Text
            div(classes: 'p-8 lg:p-12 order-2 lg:order-1', [
              p(
                classes:
                    'text-sm font-semibold uppercase tracking-wide text-gray-500',
                [Component.text('OUR VALUES')],
              ),
              h2(
                classes:
                    'mt-2 text-2xl font-bold tracking-tight text-gray-900 sm:text-3xl',
                [Component.text('Guiding Principles')],
              ),
              p(classes: 'mt-6 text-base leading-7 text-gray-600', [
                Component.text(
                  'Our values serve as the guiding principles that underpin everything we do at CU Apps:',
                ),
              ]),
              ul(classes: 'mt-6 space-y-4 text-base leading-7 text-gray-600', [
                li([
                  span(classes: 'font-semibold text-gray-900', [
                    Component.text('Stay Ahead of the Curve: '),
                  ]),
                  Component.text(
                    'With a history of innovation in the credit union space, CU Apps is a clear choice for any forward-thinking credit union.',
                  ),
                ]),
                li([
                  span(classes: 'font-semibold text-gray-900', [
                    Component.text('Your Users are Our Users: '),
                  ]),
                  Component.text(
                    'We treat your members as if they are our customers. We ensure our technology meets and exceeds expectations.',
                  ),
                ]),
              ]),
              div(classes: 'mt-8', [
                a(
                  href: '/about',
                  classes:
                      'text-sm font-semibold leading-6 text-blue-600 hover:text-blue-500',
                  [
                    Component.text('READ MORE'),
                    span(
                      classes: 'ml-1',
                      attributes: {'aria-hidden': 'true'},
                      [Component.text('→')],
                    ),
                  ],
                ),
              ]),
            ]),
            // Image
            div(classes: 'h-full order-1 lg:order-2', [
              img(
                classes: 'h-full w-full object-cover',
                src: 'images/guiding_principles.webp',
                alt: 'CU Apps team working together',
              ),
            ]),
          ]),
        ]),
      ]),
    ]);
  }
}
