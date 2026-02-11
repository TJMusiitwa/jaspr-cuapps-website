import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class WhatWeDo extends StatelessComponent {
  const WhatWeDo({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'bg-base-300 py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl text-center mb-16 sm:mb-20', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [Component.text('What We Are About')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            Component.text(
              'CU Apps is proud to offer two core products to credit unions so that they can meet and exceed members\' expectations. We provide excellent support along the way to ease implementation and smooth any issues members or staff may encounter.',
            ),
          ]),
        ]),
        div(classes: 'grid grid-cols-1 gap-8 lg:grid-cols-2', [
          // Card 1: Mobile App Development (Vertical Layout)
          div(
            classes:
                'flex flex-col bg-white rounded-3xl overflow-hidden shadow-sm hover:shadow-md transition-shadow duration-300',
            [
              // Image
              div(classes: 'aspect-[4/3] w-full bg-gray-200', [
                img(
                  classes: 'h-full w-full object-cover',
                  src: 'images/app_development.webp',
                  alt: 'Mobile App Development',
                ),
              ]),
              // Content
              div(classes: 'p-8 sm:p-10 flex-1 flex flex-col', [
                h3(classes: 'text-2xl font-bold tracking-tight text-gray-900', [
                  Component.text('Mobile App Development'),
                ]),
                p(classes: 'mt-4 text-base leading-7 text-gray-600 flex-1', [
                  Component.text(
                    'Deliver a seamless, digital-first banking experience that your members will love. Our native mobile applications provide the performance, security, and accessibility required for modern credit union operations.',
                  ),
                ]),
                div(classes: 'mt-8 border-t border-gray-100 pt-8', []),
                h4(
                  classes: 'text-lg font-semibold leading-8 text-gray-900 mb-4',
                  [Component.text('Core Platform Features')],
                ),
                dl(classes: 'grid grid-cols-1 gap-x-6 gap-y-4 sm:grid-cols-2', [
                  _SupportItem(
                    label: 'Experience',
                    value: 'Exceptional Android & iOS',
                  ),
                  _SupportItem(label: 'Security', value: 'Biometric Login'),
                  _SupportItem(
                    label: 'Innovation',
                    value: 'Digital-First Journeys',
                  ),
                  _SupportItem(
                    label: 'Experience',
                    value: 'Premium UI & UX Design',
                  ),
                ]),
              ]),
            ],
          ),

          // Card 2: AI Chatbots & Support
          div(
            classes:
                'flex flex-col bg-white rounded-3xl overflow-hidden shadow-sm hover:shadow-md transition-shadow duration-300',
            [
              // Image
              div(classes: 'aspect-[4/3] w-full bg-gray-200', [
                img(
                  classes: 'h-full w-full object-cover',
                  src: 'images/ai_chatbot_interface.webp',
                  alt: 'AI Chatbot',
                ),
              ]),
              // Content
              div(classes: 'p-8 sm:p-10 flex-1 flex flex-col', [
                h3(classes: 'text-2xl font-bold tracking-tight text-gray-900', [
                  Component.text('Advanced AI Chatbots'),
                ]),
                p(classes: 'mt-4 text-base leading-7 text-gray-600 flex-1', [
                  Component.text(
                    'Transform your member support with 24/7 intelligent assistance. Our AI chatbots handle routine inquiries instantly, freeing up your team for complex member needs.',
                  ),
                ]),
                div(classes: 'mt-8 border-t border-gray-100 pt-8', []),
                h4(
                  classes: 'text-lg font-semibold leading-8 text-gray-900 mb-4',
                  [Component.text('Comprehensive Support')],
                ),
                dl(classes: 'grid grid-cols-1 gap-x-6 gap-y-4 sm:grid-cols-2', [
                  _SupportItem(label: '24/7 Availability', value: 'Always On'),
                  _SupportItem(label: 'Specialised Team', value: 'Expert Care'),
                  _SupportItem(label: 'Rapid Response', value: 'Fast Fixes'),
                  _SupportItem(label: 'Member Focused', value: 'Satisfaction'),
                ]),
              ]),
            ],
          ),
        ]),
      ]),
    ]);
  }
}

class _SupportItem extends StatelessComponent {
  final String label;
  final String value;

  const _SupportItem({required this.label, required this.value});

  @override
  Component build(BuildContext context) {
    return div([
      dt(classes: 'text-sm font-medium leading-6 text-gray-500', [
        Component.text(label),
      ]),
      dd(
        classes:
            'w-full flex-none text-lg font-bold leading-9 tracking-tight text-gray-900',
        [Component.text(value)],
      ),
    ]);
  }
}
