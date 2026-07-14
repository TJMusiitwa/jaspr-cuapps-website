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
                'text-3xl font-bold tracking-tight text-[#132139] sm:text-4xl',
            [Component.text('Purpose Driven Innovation')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-[#132139]/70', [
            Component.text(
              'Our mission and values guide every decision we make, ensuring we deliver meaningful impact for credit unions and their members across the UK.',
            ),
          ]),
        ]),
        // Section 1: Our Mission (Image Left, Text Right)
        div(classes: 'bg-base-200 rounded-box overflow-hidden mb-16', [
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
              h2(
                classes:
                    'text-2xl font-bold tracking-tight text-[#132139] sm:text-3xl',
                [Component.text('Empowering Your Members')],
              ),
              p(classes: 'mt-6 text-base leading-7 text-[#132139]/70', [
                Component.text(
                  'To drive credit unions to meet and exceed member expectations while competing with large financial institutions. We design and build secure, user-friendly Android and iOS apps that put your members in control of their finances.',
                ),
              ]),
            ]),
          ]),
        ]),

        // Section 2: Our Values (Text Left, Image Right)
        div(classes: 'bg-base-200 rounded-box overflow-hidden', [
          div(classes: 'grid grid-cols-1 lg:grid-cols-2 items-center', [
            // Text
            div(classes: 'p-8 lg:p-12 order-2 lg:order-1', [
              h2(
                classes:
                    'text-2xl font-bold tracking-tight text-[#132139] sm:text-3xl',
                [Component.text('Guiding Principles')],
              ),
              p(classes: 'mt-6 text-base leading-7 text-[#132139]/70', [
                Component.text(
                  'Our values serve as the guiding principles that underpin everything we do at CU Apps:',
                ),
              ]),
              ul(classes: 'mt-6 space-y-4 text-base leading-7 text-[#132139]/70', [
                li([
                  span(classes: 'font-semibold text-[#132139]', [
                    Component.text('Stay Ahead of the Curve: '),
                  ]),
                  Component.text(
                    'With a history of innovation in the credit union space, CU Apps is a clear choice for any forward-thinking credit union.',
                  ),
                ]),
                li([
                  span(classes: 'font-semibold text-[#132139]', [
                    Component.text('Your Users are Our Users: '),
                  ]),
                  Component.text(
                    'We treat your members as if they are our customers. We ensure our technology meets and exceeds expectations.',
                  ),
                ]),
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
