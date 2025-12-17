import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactUs extends StatelessComponent {
  const ContactUs({super.key});
  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'min-h-screen bg-linear-to-tr from-base-100 via-primary/5 to-base-100 relative overflow-hidden',
      [
        // Decorative elements for a premium "mesh" look
        div(
          classes:
              'absolute top-[-10%] left-[-10%] w-[40%] h-[40%] bg-primary/10 rounded-full blur-[120px] animate-pulse',
          [],
        ),
        div(
          classes:
              'absolute bottom-[-5%] right-[-5%] w-[35%] h-[35%] bg-accent/10 rounded-full blur-[100px]',
          [],
        ),
        div(
          classes:
              'absolute top-[20%] right-[10%] w-[25%] h-[25%] bg-primary/5 rounded-full blur-[80px]',
          [],
        ),
        div(
          classes:
              'absolute middle-0 left-[20%] w-[30%] h-[30%] bg-blue-400/5 rounded-full blur-[100px]',
          [],
        ),

        // Main content container
        div([
          // Header section
          div([
            span([
              Component.text("LET'S TALK"),
            ], classes: 'text-primary font-semibold tracking-widest text-sm'),
            h1([
              Component.text('How can we help you today?'),
            ], classes: 'text-4xl font-bold mt-2 text-base-content'),
            p([
              Component.text(
                "Reach out to our team for questions, project ideas, or support. We're here to collaborate and help you achieve your goals.",
              ),
            ], classes: 'mt-4 text-base-content/70 max-w-2xl'),
          ], classes: 'mb-12'),

          // Two column layout
          div([
            // Left: Form
            div([
              div([
                form(autoComplete: AutoComplete.on, [
                  // First name / Last name row
                  div([
                    div([
                      label([Component.text('First name')], classes: 'label'),
                      input(
                        classes: 'input input-bordered w-full',
                        type: InputType.text,
                        name: 'firstName',
                        attributes: {'placeholder': 'Your first name'},
                      ),
                    ], classes: 'flex-1'),
                    div([
                      label([Component.text('Last name')], classes: 'label'),
                      input(
                        classes: 'input input-bordered w-full',
                        type: InputType.text,
                        name: 'lastName',
                        attributes: {'placeholder': 'Your last name'},
                      ),
                    ], classes: 'flex-1'),
                  ], classes: 'flex flex-col sm:flex-row gap-4 mb-4'),

                  // Organisation name
                  div([
                    label([
                      Component.text('Organisation name'),
                    ], classes: 'label'),
                    input(
                      classes: 'input input-bordered w-full',
                      type: InputType.text,
                      name: 'organisation',
                      attributes: {'placeholder': 'Your organisation'},
                    ),
                  ], classes: 'mb-4'),

                  // Email
                  div([
                    label([Component.text('Email')], classes: 'label'),
                    input(
                      classes: 'input validator input-bordered w-full ',
                      type: InputType.email,
                      name: 'email',
                      attributes: {'placeholder': 'Your email'},
                    ),
                  ], classes: 'mb-4'),

                  // Message
                  div([
                    label([Component.text('Message')], classes: 'label'),
                    textarea(
                      [],
                      name: 'message',
                      rows: 5,
                      spellCheck: SpellCheck.isDefault,
                      placeholder: 'Your message',
                      wrap: TextWrap.soft,
                      classes: 'textarea textarea-bordered w-full',
                    ),
                  ], classes: 'mb-6'),

                  // Submit button
                  div([
                    button(
                      [Component.text('Submit')],
                      classes: 'btn btn-primary w-full',
                      attributes: {'type': 'submit'},
                    ),
                  ]),
                ]),
              ], classes: 'bg-base-100 rounded-xl shadow-lg p-8'),
            ], classes: 'w-full lg:w-1/2 relative z-10'),

            // Right: Contact info
            div([
              // Get in touch section
              div([
                h2([
                  Component.text('Get in touch'),
                ], classes: 'text-xl font-bold mb-3 text-base-content'),
                p([
                  Component.text(
                    "Reach out to our experts for advice, collaboration, or support. We'll respond promptly and guide you every step of the way.",
                  ),
                ], classes: 'text-base-content/70 mb-4'),
                ul([
                  li([
                    a(href: '/free-demo', [
                      Component.text('Request a demo'),
                    ], classes: 'link link-hover text-primary'),
                  ]),
                  li([
                    a(
                      href: '/app-features',
                      [Component.text('Explore our features')],
                      classes: 'link link-hover text-primary',
                    ),
                  ]),
                  li([
                    a(
                      href: '/case-studies',
                      [Component.text('Read case studies')],
                      classes: 'link link-hover text-primary',
                    ),
                  ]),
                ], classes: 'space-y-2'),
              ], classes: 'mb-8'),

              // Call us section
              div([
                h2([
                  Component.text('Call us'),
                ], classes: 'text-xl font-bold mb-3 text-base-content'),
                p([
                  Component.text(
                    "Our team is available during UK business hours. Call anytime and we'll be happy to assist.",
                  ),
                ], classes: 'text-base-content/70 mb-4'),
                div([
                  a(
                    href: 'tel:+441413432450',
                    [Component.text('🇬🇧 +44 141 343 2450')],
                    classes: 'block text-base-content font-medium',
                  ),
                  a(
                    href: 'tel:+353749707869',
                    [Component.text('🇮🇪 +353 749 707 869')],
                    classes: 'block text-base-content font-medium mt-1',
                  ),
                  a(
                    href: 'tel:+13133061560',
                    [Component.text('🇺🇸 +1 313 306 1560')],
                    classes: 'block text-base-content font-medium mt-1',
                  ),
                ]),
              ], classes: 'mb-8'),

              // Our office section
              div([
                h2([
                  Component.text('Our office'),
                ], classes: 'text-xl font-bold mb-3 text-base-content'),
                div([
                  div([
                    span([
                      Component.text('Glasgow'),
                    ], classes: 'font-semibold text-base-content'),
                    div([
                      // Location icon
                      svg(
                        [
                          path(
                            [],
                            attributes: {
                              'd':
                                  'M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0118 0z',
                              'stroke': 'currentColor',
                              'stroke-width': '2',
                              'fill': 'none',
                            },
                          ),
                          circle(
                            [],
                            attributes: {
                              'cx': '12',
                              'cy': '10',
                              'r': '3',
                              'stroke': 'currentColor',
                              'stroke-width': '2',
                              'fill': 'none',
                            },
                          ),
                        ],
                        classes: 'w-4 h-4 text-primary inline-block mr-1',
                        attributes: {'viewBox': '0 0 24 24'},
                      ),
                      span([
                        Component.text('220 High Street,'),
                      ], classes: 'text-base-content/70'),
                    ], classes: 'mt-1'),
                    p([
                      Component.text('Glasgow G4 0QW,'),
                    ], classes: 'text-base-content/70 ml-5'),
                    p([
                      Component.text('United Kingdom'),
                    ], classes: 'text-base-content/70 ml-5'),
                  ]),
                ]),
              ]),
            ], classes: 'w-full lg:w-1/2 lg:pl-12 relative z-10'),
          ], classes: 'flex flex-col lg:flex-row gap-8'),
        ], classes: 'relative z-10 py-12 px-4 md:px-8 max-w-7xl mx-auto'),
      ],
    );
  }
}
