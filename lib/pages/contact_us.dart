import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactUs extends StatelessComponent {
  const ContactUs({super.key});
  @override
  Component build(BuildContext context) {
    return div([
      div([
        // Responsive flex container
        div([
          // Left: Contact Info
          div([
            h1([
              Component.text('Get in touch'),
            ], classes: 'text-4xl font-bold mb-4 text-base-content'),
            p([
              Component.text(
                "We're here to help you find the best solutions for your credit union or building society. Whether you're interested in a demo, consultation, or have general inquiries, please reach out to us.",
              ),
            ], classes: 'mb-8 text-base-content'),
            h2([
              Component.text('Contact Information'),
            ], classes: 'text-2xl font-bold mb-4 text-base-content'),
            ul([
              li([
                span([
                  // SVG Clock Icon
                  svg(
                    [
                      path(
                        [],
                        attributes: {
                          'd': 'M12 6v6l4 2',
                          'stroke': 'currentColor',
                          'stroke-width': '2',
                          'fill': 'none',
                          'stroke-linecap': 'round',
                          'stroke-linejoin': 'round',
                        },
                      ),
                      circle(
                        [],
                        attributes: {
                          'cx': '12',
                          'cy': '12',
                          'r': '10',
                          'stroke': 'currentColor',
                          'stroke-width': '2',
                          'fill': 'none',
                        },
                      ),
                    ],
                    classes: 'w-5 h-5 text-info mr-2',
                    attributes: {'viewBox': '0 0 24 24'},
                  ),
                  b([Component.text('Demo Requests')]),
                  br(),
                  span([
                    Component.text(
                      'Schedule a live demonstration of our mobile apps and AI chatbots.',
                    ),
                  ], classes: 'text-base-content'),
                ]),
              ], classes: 'mb-4 flex items-start'),
              li([
                span([
                  // SVG Headset Icon
                  svg(
                    [
                      path(
                        [],
                        attributes: {
                          'd': 'M4 15v-3a8 8 0 0116 0v3',
                          'stroke': 'currentColor',
                          'stroke-width': '2',
                          'fill': 'none',
                          'stroke-linecap': 'round',
                          'stroke-linejoin': 'round',
                        },
                      ),
                      path(
                        [],
                        attributes: {
                          'd':
                              'M18 19a2 2 0 002-2v-2a2 2 0 00-2-2H6a2 2 0 00-2 2v2a2 2 0 002 2',
                          'stroke': 'currentColor',
                          'stroke-width': '2',
                          'fill': 'none',
                          'stroke-linecap': 'round',
                          'stroke-linejoin': 'round',
                        },
                      ),
                    ],
                    classes: 'w-5 h-5 text-info mr-2',
                    attributes: {'viewBox': '0 0 24 24'},
                  ),
                  b([Component.text('Consultations')]),
                  br(),
                  span([
                    Component.text(
                      'Book a consultation to discuss your specific needs and how we can help.',
                    ),
                  ], classes: 'text-base-content'),
                ]),
              ], classes: 'mb-4 flex items-start'),
              li([
                span([
                  // SVG Envelope Icon
                  svg(
                    [
                      rect(
                        [],
                        attributes: {
                          'x': '3',
                          'y': '5',
                          'width': '18',
                          'height': '14',
                          'rx': '2',
                          'stroke': 'currentColor',
                          'stroke-width': '2',
                          'fill': 'none',
                        },
                      ),
                      polyline(
                        [],
                        attributes: {
                          'points': '3 7 12 13 21 7',
                          'stroke': 'currentColor',
                          'stroke-width': '2',
                          'fill': 'none',
                          'stroke-linecap': 'round',
                          'stroke-linejoin': 'round',
                        },
                      ),
                    ],
                    classes: 'w-5 h-5 text-info mr-2',
                    attributes: {'viewBox': '0 0 24 24'},
                  ),
                  b([Component.text('Email')]),
                  br(),
                  a(href: 'mailto:hello@cuapps.co.uk', [
                    Component.text('hello@cuapps.co.uk'),
                  ], classes: 'text-base-content'),
                ]),
              ], classes: 'mb-4 flex items-start'),
              li([
                span([
                  // SVG Phone Icon
                  svg(
                    [
                      path(
                        [],
                        attributes: {
                          'd':
                              'M22 16.92V19a2 2 0 01-2.18 2A19.72 19.72 0 013 5.18 2 2 0 015 3h2.09a2 2 0 012 1.72c.13 1.13.37 2.23.72 3.28a2 2 0 01-.45 2.11l-.27.27a16 16 0 006.29 6.29l.27-.27a2 2 0 012.11-.45c1.05.35 2.15.59 3.28.72A2 2 0 0122 16.92z',
                          'stroke': 'currentColor',
                          'stroke-width': '2',
                          'fill': 'none',
                          'stroke-linecap': 'round',
                          'stroke-linejoin': 'round',
                        },
                      ),
                    ],
                    classes: 'w-5 h-5 text-info mr-2',
                    attributes: {'viewBox': '0 0 24 24'},
                  ),
                  b([Component.text('Phone')]),
                  br(),
                  a(href: 'tel:+441413432450', [
                    Component.text('🇬🇧 +44 141 343 2450'),
                  ], classes: 'text-base-content'),
                  br(),
                  a(href: 'tel:+353749707869', [
                    Component.text('🇮🇪 +353 749 707 869'),
                  ], classes: 'text-base-content'),
                  br(),
                  a(href: 'tel:+13133061560', [
                    Component.text('🇺🇸 +1 313 306 1560'),
                  ], classes: 'text-base-content'),
                ]),
              ], classes: 'flex items-start'),
            ], classes: 'list-none p-0'),
          ], classes: 'w-full lg:w-1/2 p-6'),
          // Right: Form
          div([
            div([
              form(autoComplete: AutoComplete.on, [
                div([
                  div([
                    label([
                      span([
                        Component.text('Full Name'),
                      ], classes: 'label-text'),
                      input(
                        classes:
                            'input input-bordered w-full bg-blue-50 validator',
                        type: InputType.text,
                        name: 'fullName',
                        attributes: {
                          'required': 'true',
                          'placeholder': 'Enter your full name',
                        },
                      ),
                    ], classes: 'form-control w-full'),
                  ], classes: 'w-full md:w-1/2 pr-2'),
                  div([
                    label([
                      span([Component.text('Email')], classes: 'label-text'),
                      input(
                        classes:
                            'input input-bordered w-full bg-blue-50 validator',
                        type: InputType.email,
                        name: 'email',
                        attributes: {
                          'required': 'true',
                          'placeholder': 'Enter your email address',
                        },
                      ),
                    ], classes: 'form-control w-full'),
                  ], classes: 'w-full md:w-1/2 pl-2'),
                ], classes: 'flex flex-col md:flex-row gap-4 mb-4'),

                div([
                  label([
                    span([
                      Component.text('Company Name (optional)'),
                    ], classes: 'label-text'),
                    input(
                      classes: 'input input-bordered w-full bg-blue-50',
                      type: InputType.text,
                      name: 'company',
                      attributes: {'placeholder': 'Enter your company name'},
                    ),
                  ], classes: 'form-control w-full'),
                ], classes: 'mb-4'),
                div([
                  label([
                    span([
                      Component.text('Inquiry Type'),
                    ], classes: 'label-text'),
                    select(
                      [
                        option([
                          Component.text('Select inquiry type'),
                        ], value: ''),
                        option([Component.text('Demo Request')], value: 'demo'),
                        option([
                          Component.text('Consultation'),
                        ], value: 'consultation'),
                        option([
                          Component.text('General Inquiry'),
                        ], value: 'general'),
                      ],
                      name: 'inquiryType',
                      classes: 'select select-bordered w-full bg-blue-50',
                    ),
                  ], classes: 'form-control w-full'),
                ], classes: 'mb-4'),
                div([
                  label([
                    span([Component.text('Message')], classes: 'label-text'),
                    textarea(
                      [],
                      name: 'message',
                      rows: 4,
                      spellCheck: SpellCheck.isDefault,
                      placeholder: 'Enter your message',
                      wrap: TextWrap.soft,
                      required: true,
                      classes: 'textarea textarea-bordered w-full bg-blue-50',
                    ),
                  ], classes: 'form-control w-full'),
                ], classes: 'mb-4'),
                div([
                  button(
                    [Component.text('Submit')],
                    classes: 'btn btn-primary w-full',
                    attributes: {'type': 'submit'},
                  ),
                ]),
              ], classes: ''),
            ], classes: 'bg-white rounded-xl shadow-lg p-8'),
          ], classes: 'w-full lg:w-1/2 flex justify-center items-center p-6'),
        ], classes: 'flex flex-col lg:flex-row w-full max-w-6xl mx-auto'),
      ], classes: 'py-12 px-2 md:px-8'),
    ]);
  }
}
