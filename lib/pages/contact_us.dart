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
        div(classes: 'relative z-10 py-12 px-4 md:px-8 max-w-7xl mx-auto', [
          // Header section
          div(classes: 'mb-12', [
            span(
              classes: 'text-primary font-semibold tracking-widest text-sm',
              [Component.text("LET'S TALK")],
            ),
            h1(classes: 'text-4xl font-bold mt-2 text-base-content', [
              Component.text('How can we help you today?'),
            ]),
            p(classes: 'mt-4 text-base-content/70 max-w-2xl', [
              Component.text(
                "Reach out to our team for questions, project ideas, or support. We're here to collaborate and help you achieve your goals.",
              ),
            ]),
          ]),

          // Two column layout
          div(classes: 'flex flex-col lg:flex-row gap-8', [
            // Left: Form
            div(classes: 'w-full lg:w-1/2 relative z-10', [
              div(classes: 'bg-base-100 rounded-xl shadow-lg p-8', [
                form(autoComplete: AutoComplete.on, [
                  // First name / Last name row
                  div(classes: 'flex flex-col sm:flex-row gap-4 mb-4', [
                    div(classes: 'flex-1', [
                      label(classes: 'label', [Component.text('First name')]),
                      input(
                        classes: 'input input-bordered w-full',
                        type: InputType.text,
                        name: 'firstName',
                        attributes: {'placeholder': 'Your first name'},
                      ),
                    ]),
                    div(classes: 'flex-1', [
                      label(classes: 'label', [Component.text('Last name')]),
                      input(
                        classes: 'input input-bordered w-full',
                        type: InputType.text,
                        name: 'lastName',
                        attributes: {'placeholder': 'Your last name'},
                      ),
                    ]),
                  ]),

                  // Organisation name
                  div(classes: 'mb-4', [
                    label(classes: 'label', [
                      Component.text('Organisation name'),
                    ]),
                    input(
                      classes: 'input input-bordered w-full',
                      type: InputType.text,
                      name: 'organisation',
                      attributes: {'placeholder': 'Your organisation'},
                    ),
                  ]),

                  // Email
                  div(classes: 'mb-4', [
                    label(classes: 'label', [Component.text('Email')]),
                    input(
                      classes: 'input validator input-bordered w-full ',
                      type: InputType.email,
                      name: 'email',
                      attributes: {'placeholder': 'Your email'},
                    ),
                  ]),

                  // Message
                  div(classes: 'mb-6', [
                    label(classes: 'label', [Component.text('Message')]),
                    textarea(
                      name: 'message',
                      rows: 5,
                      spellCheck: SpellCheck.isDefault,
                      placeholder: 'Your message',
                      wrap: TextWrap.soft,
                      classes: 'textarea textarea-bordered w-full',
                      [],
                    ),
                  ]),

                  // Submit button
                  div([
                    button(
                      classes: 'btn btn-primary w-full',
                      attributes: {'type': 'submit'},
                      [Component.text('Submit')],
                    ),
                  ]),
                ]),
              ]),
            ]),

            // Right: Contact info
            div(classes: 'w-full lg:w-1/2 lg:pl-12 relative z-10', [
              // Get in touch section
              div(classes: 'mb-8', [
                h2(classes: 'text-xl font-bold mb-3 text-base-content', [
                  Component.text('Get in touch'),
                ]),
                p(classes: 'text-base-content/70 mb-4', [
                  Component.text(
                    "Reach out to our experts for advice, collaboration, or support. We'll respond promptly and guide you every step of the way.",
                  ),
                ]),
                ul(classes: 'space-y-2', [
                  li([
                    a(
                      href: '/free-demo',
                      classes: 'link link-hover text-primary',
                      [
                        Component.text('Request a demo'),
                      ],
                    ),
                  ]),
                  li([
                    a(
                      href: '/app-features',
                      classes: 'link link-hover text-primary',
                      [Component.text('Explore our features')],
                    ),
                  ]),
                  li([
                    a(
                      href: '/case-studies',
                      classes: 'link link-hover text-primary',
                      [Component.text('Read case studies')],
                    ),
                  ]),
                ]),
              ]),

              // Call us section
              div(classes: 'mb-8', [
                h2(classes: 'text-xl font-bold mb-3 text-base-content', [
                  Component.text('Call us'),
                ]),
                p(classes: 'text-base-content/70 mb-4', [
                  Component.text(
                    "Our team is available during UK business hours. Call anytime and we'll be happy to assist.",
                  ),
                ]),
                div([
                  a(
                    href: 'tel:+441413432450',
                    classes: 'block text-base-content font-medium',
                    [Component.text('🇬🇧 +44 141 343 2450')],
                  ),
                  a(
                    href: 'tel:+353749707869',
                    classes: 'block text-base-content font-medium mt-1',
                    [Component.text('🇮🇪 +353 749 707 869')],
                  ),
                  a(
                    href: 'tel:+13133061560',
                    classes: 'block text-base-content font-medium mt-1',
                    [Component.text('🇺🇸 +1 313 306 1560')],
                  ),
                ]),
              ]),

              // Our office section
              div([
                h2(classes: 'text-xl font-bold mb-3 text-base-content', [
                  Component.text('Our office'),
                ]),
                div([
                  div([
                    span(classes: 'font-semibold text-base-content', [
                      Component.text('Glasgow'),
                    ]),
                    div(classes: 'mt-1', [
                      // Location icon
                      svg(
                        classes: 'w-4 h-4 text-primary inline-block mr-1',
                        attributes: {'viewBox': '0 0 24 24'},
                        [
                          path(
                            attributes: {
                              'd':
                                  'M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0118 0z',
                              'stroke': 'currentColor',
                              'stroke-width': '2',
                              'fill': 'none',
                            },
                            [],
                          ),
                          circle(
                            attributes: {
                              'cx': '12',
                              'cy': '10',
                              'r': '3',
                              'stroke': 'currentColor',
                              'stroke-width': '2',
                              'fill': 'none',
                            },
                            [],
                          ),
                        ],
                      ),
                      span(classes: 'text-base-content/70', [
                        Component.text('220 High Street,'),
                      ]),
                    ]),
                    p(classes: 'text-base-content/70 ml-5', [
                      Component.text('Glasgow G4 0QW,'),
                    ]),
                    p(classes: 'text-base-content/70 ml-5', [
                      Component.text('United Kingdom'),
                    ]),
                  ]),
                ]),
              ]),
            ]),
          ]),
        ]),
      ],
    );
  }
}
