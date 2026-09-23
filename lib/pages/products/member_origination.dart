import 'package:cuapps_website/components/product_page.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class MemberOriginationPage extends StatelessComponent {
  const MemberOriginationPage({super.key});

  @override
  Component build(BuildContext context) {
    return ProductPage(
      slug: 'member-origination',
      eyebrow: 'Origination and applications',
      title: 'Applications members',
      titleAccent: 'want to complete.',
      lede:
          'Custom member and loan application journeys connected to your core and third-party systems through APIs. We remove repeat questions and make every step clear.',
      highlights: const [
        'Member data prefilled',
        'Third-party APIs',
        'Optional validation',
      ],
      mockup: originationMockup(),
      mockupLabel:
          'A personal loan application on step 2 of 4, with name and address filled from the member’s account, a verified mobile number and completed bank account, email and postcode checks.',
      featuresEyebrow: 'Connected application journeys',
      featuresTitle: 'Less typing for members. Better data for your team.',
      featuresBody:
          'We design each journey around the application, the member and the systems that need to receive the information.',
      features: const [
        (
          'form',
          'Custom application forms',
          'Create the questions, steps and supporting information needed for each member or loan application.',
        ),
        (
          'database',
          'Core data prefill',
          'When connected to the core, known member details appear automatically instead of being requested again.',
        ),
        (
          'link',
          'Third-party connections',
          'Use APIs to send, receive or check information through the systems your credit union already uses.',
        ),
        (
          'shield',
          'Optional validation',
          'Include bank account checks, postcode lookup, phone validation and email validation where needed.',
        ),
        (
          'phone',
          'Clear mobile experience',
          'Forms are designed for the screens members use, with sensible steps and plain language.',
        ),
        (
          'inbox',
          'Cleaner submissions',
          'Structured information arrives ready for the credit union to review and action.',
        ),
      ],
      spotlightEyebrow: 'Validation when it helps',
      spotlightTitle: 'Catch avoidable errors before submission.',
      spotlightBody:
          'Checks can be added at the right points in the journey, helping members correct details while they are still completing the application.',
      spotlightVisual: _validationView(),
      stepsTitle: 'A journey built around your systems.',
      steps: const [
        (
          'Connect',
          'Map the core and third-party systems involved in the application.',
        ),
        (
          'Design',
          'Create the questions, content and steps around what members need.',
        ),
        (
          'Prefill',
          'Bring in known data and run agreed validation checks at the right time.',
        ),
        (
          'Submit',
          'Deliver structured application information to the systems and teams that action it.',
        ),
      ],
      faqs: const [
        (
          'Can you connect to our core system?',
          'We work through available APIs and can support a range of core systems. We will assess the connection as part of the application design.',
        ),
        (
          'Can existing members have their details filled in?',
          'Yes. Where the core connection provides the data, the journey can prefill known information so members do not have to type it again.',
        ),
        (
          'Which validation checks are available?',
          'Options include bank account checks, postcode lookup, phone number validation and email validation.',
        ),
        (
          'Can you connect to another application platform?',
          'Yes. We can use APIs to connect the custom front end to third-party origination or loan application systems.',
        ),
      ],
      closingTitle: 'Build an application around your members.',
      closingBody:
          'Tell us what members are applying for and which systems need to be involved. We will design the journey around both.',
    );
  }
}

/// Static HTML mockup of a prefilled, validated loan application.
///
/// [compact] renders a smaller card for use in homepage product tiles.
/// Each check caught in the act: the signature visual on this page.
Component _validationView() {
  Component check(String check, String value, String result, String state) {
    return li(classes: 'check-row check-row-$state', [
      span(classes: 'check-name', [Component.text(check)]),
      span(classes: 'check-value', [Component.text(value)]),
      span(classes: 'check-result', [Component.text(result)]),
    ]);
  }

  return figure(classes: 'check-view', [
    ul(
      classes: 'check-list',
      attributes: {
        'role': 'img',
        'aria-label':
            'Illustrative validation checks: a bank account confirmed, a postcode lookup offering addresses, a phone number confirmed and an email address flagged with a suggested correction.',
      },
      [
        check('Bank account', '12-34-56 · 12345678', 'Account confirmed', 'ok'),
        check('Postcode lookup', 'G4 0QW', '3 addresses found', 'ok'),
        check('Phone', '07700 900123', 'Valid UK mobile', 'ok'),
        check('Email', 'jo@gmial.com', 'Did you mean gmail.com?', 'warn'),
      ],
    ),
    figcaption([
      Component.text(
        'Illustrative checks, shown while the member is still filling in the form.',
      ),
    ]),
  ]);
}

Component originationMockup({bool compact = false}) {
  Component progress() => div(classes: 'mock-orig-steps', [
    for (var i = 0; i < 4; i++)
      span(
        classes: i < 2
            ? 'is-done'
            : i == 2
            ? 'is-current'
            : null,
        [],
      ),
  ]);

  Component field(
    String label,
    String value,
    String note, {
    bool ok = false,
    bool inline = false,
  }) {
    final tag = span(classes: ok ? 'mock-tag' : 'mock-tag mock-orig-note', [
      Component.text(note),
    ]);
    return div(classes: 'mock-field', [
      span([Component.text(label)]),
      div(classes: 'mock-input mock-input-filled', [
        span(classes: 'mock-orig-value', [Component.text(value)]),
        if (inline) tag,
      ]),
      if (!inline) tag,
    ]);
  }

  if (compact) {
    return div(
      classes: 'mock-window mock-window-sm mock-orig mock-orig-compact',
      [
        div(classes: 'mock-row mock-orig-compact-head', [
          span(classes: 'mock-title', [Component.text('Your details')]),
          span(classes: 'mock-pill', [Component.text('Step 2 of 4')]),
        ]),
        progress(),
        field('Full name', 'Alex Morgan', 'From account', inline: true),
        field(
          'Mobile number',
          '07123 456 789',
          'Verified',
          ok: true,
          inline: true,
        ),
      ],
    );
  }

  return div(classes: 'mock-window mock-orig', [
    div(classes: 'mock-head', [
      div([
        span(classes: 'mock-label', [
          Component.text('Personal loan application'),
        ]),
        span(classes: 'mock-title', [Component.text('Your details')]),
      ]),
      span(classes: 'mock-pill', [Component.text('Step 2 of 4')]),
    ]),
    progress(),
    div(classes: 'mock-orig-grid', [
      field('Full name', 'Alex Morgan', 'Filled from your account'),
      field('Mobile number', '07123 456 789', 'Verified', ok: true),
      div(classes: 'mock-orig-wide', [
        field(
          'Home address',
          '14 High Street, Glasgow',
          'Filled from your account',
        ),
      ]),
    ]),
    ul(classes: 'mock-orig-checks', [
      li([Component.text('Bank account checked')]),
      li([Component.text('Email validated')]),
      li([Component.text('Postcode found')]),
    ]),
    div(classes: 'mock-button mock-orig-button', [Component.text('Continue')]),
  ]);
}
