import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProcessSection extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    const steps = [
      (
        number: '01',
        title: 'Strategy & Roadmap',
        description:
            'We consult with you to make sure that your credit union brand is strongly reflected. We will develop a roadmap to build a product that will adapt to your specific members\' needs in a fast-changing environment.',
      ),
      (
        number: '02',
        title: 'Visual & UX Design',
        description:
            'As specialists in credit union app development, we follow industry-standard design principles to give users an intuitive yet consistent experience on every device.',
      ),
      (
        number: '03',
        title: 'Development',
        description:
            'We take care of everything for you, from graphic creation, marketing material, to app store approval.',
      ),
      (
        number: '04',
        title: 'Launch & Monitor',
        description:
            'As part of our service we will continually monitor and enhance your app or chatbot to make sure that it is always kept up to date with the latest innovations. We\'ll make sure that your credit union and your members are never left behind.',
      ),
    ];

    return div(classes: 'bg-white py-24 sm:py-32', [
      div(
        classes:
            'mx-auto max-w-7xl px-6 lg:px-8 grid grid-cols-1 lg:grid-cols-12 gap-12 lg:gap-16',
        [
          // Left column: sticky heading and intro
          div(classes: 'lg:col-span-5', [
            div(classes: 'lg:sticky lg:top-28', [
              h2(
                classes:
                    'text-3xl md:text-4xl lg:text-5xl font-bold tracking-tight text-[#132139] mb-6',
                [Component.text('Our design & development process')],
              ),
              p(classes: 'text-lg text-[#132139]/70 leading-relaxed', [
                Component.text(
                  'A premium, bespoke and affordable service that helps credit unions save costs, grow membership and drive loans.',
                ),
              ]),
              p(classes: 'mt-4 text-base text-[#132139]/60 leading-relaxed', [
                Component.text(
                  'We take the time to understand each credit union we work with and tailor our products so they are right for you and your member base.',
                ),
              ]),
            ]),
          ]),

          // Right column: daisyUI vertical timeline
          div(classes: 'lg:col-span-7', [
            ul(
              classes:
                  'timeline timeline-vertical timeline-snap-icon timeline-compact',
              [
                for (var (i, step) in steps.indexed)
                  li([
                    if (i > 0) hr(classes: 'bg-[#C6E6FF]'),
                    div(classes: 'timeline-middle', [
                      div(
                        classes:
                            'w-4 h-4 rounded-full bg-white border-2 border-[#259CE2]',
                        [],
                      ),
                    ]),
                    div(classes: 'timeline-end reveal pb-12 pl-4 sm:pl-6', [
                      div(
                        classes:
                            'text-5xl sm:text-6xl font-bold text-[#C6E6FF] leading-none select-none',
                        [Component.text(step.number)],
                      ),
                      h3(
                        classes:
                            'mt-3 text-xl sm:text-2xl font-bold tracking-tight text-[#132139]',
                        [Component.text(step.title)],
                      ),
                      p(
                        classes:
                            'mt-3 text-base text-[#132139]/70 leading-relaxed max-w-xl',
                        [Component.text(step.description)],
                      ),
                    ]),
                    if (i < steps.length - 1) hr(classes: 'bg-[#C6E6FF]'),
                  ]),
              ],
            ),
          ]),
        ],
      ),
    ]);
  }
}
