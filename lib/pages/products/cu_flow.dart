import 'package:cuapps_website/components/product_page.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class CuFlowPage extends StatelessComponent {
  const CuFlowPage({super.key});

  @override
  Component build(BuildContext context) {
    return ProductPage(
      slug: 'cu-flow',
      eyebrow: 'CU Flow',
      title: 'Describe the form.',
      titleAccent: 'CU Flow builds it.',
      lede:
          'Create any form your credit union needs and place it directly inside your app. Known member details are filled in, so members only answer the questions that matter.',
      highlights: const [
        'Build with a prompt',
        'Forms stay inside the app',
        'Secure portal submissions',
      ],
      mockup: cuFlowMockup(),
      mockupLabel:
          'CU Flow Studio with a staff prompt asking for a savings account form, CU Flow’s draft reply using name and address from the core, and a preview of the member form inside the app.',
      featuresEyebrow: 'Forms made for your app',
      featuresTitle:
          'Collect what you need without making members start again.',
      featuresBody:
          'CU Flow combines an AI-first form builder for staff with a simple, connected experience for logged-in members.',
      features: const [
        (
          'sparkle',
          'Build forms with AI',
          'Describe the form in plain language. CU Flow creates the structure, questions and logic for your team to review.',
        ),
        (
          'phone',
          'Keep members in the app',
          'Members complete the form inside the credit union app instead of being sent to another website.',
        ),
        (
          'database',
          'Prefill known information',
          'Use data available from the core so members do not retype details the credit union already holds.',
        ),
        (
          'form',
          'Create any custom form',
          'Build account requests, lottery applications, referrals, surveys, updates and other member journeys.',
        ),
        (
          'shield',
          'Receive data securely',
          'Completed forms arrive securely in the CU Apps portal for authorised staff to review and action.',
        ),
        (
          'settings',
          'Manage forms yourself',
          'Create, review, publish and update forms through one staff workspace.',
        ),
      ],
      spotlightEyebrow: 'One system, many uses',
      spotlightTitle: 'If you can describe it, you can build it.',
      spotlightBody:
          'CU Flow gives credit unions the flexibility to create the forms their members and communities actually need.',
      spotlightPoints: const [
        'Open an account',
        'Lottery applications',
        'Foodbank referrals',
        'Member surveys',
        'Update information',
        'Create a custom request',
      ],
      stepsTitle: 'From one prompt to a live member form.',
      steps: const [
        (
          'Prompt',
          'Tell CU Flow what the form needs to collect and what it should achieve.',
        ),
        (
          'Review',
          'Check the questions, member data, logic and final submission before publishing.',
        ),
        (
          'Publish',
          'Place the form directly inside the credit union app for members to complete.',
        ),
        (
          'Action',
          'Receive the information securely in the CU Apps portal and move the request forward.',
        ),
      ],
      faqs: const [
        (
          'Do staff need to build forms manually?',
          'No. CU Flow is AI first. Staff describe what they need, then review and refine the form through prompts.',
        ),
        (
          'Can a form use member information from the core?',
          'Yes. Available member data can be used to prefill the form, subject to the core connection and the fields provided.',
        ),
        (
          'Do members leave the app?',
          'No. CU Flow forms are designed to sit directly inside the logged-in app experience.',
        ),
        (
          'Where do completed forms go?',
          'Submissions arrive securely in the CU Apps portal, where authorised credit union staff can review and action them.',
        ),
      ],
      closingTitle: 'Turn your next process into an in-app form.',
      closingBody:
          'Show us the request members struggle with today. CU Flow can make it simpler for them and easier for your team to manage.',
    );
  }
}

/// Static HTML mockup of CU Flow Studio turning a prompt into a member form.
///
/// [compact] renders a smaller card for use in homepage product tiles.
Component cuFlowMockup({bool compact = false}) {
  const prompt =
      'Build a form that lets an existing member open a savings account.';

  if (compact) {
    return div(
      classes: 'mock-window mock-window-sm mock-flow mock-flow-compact',
      [
        div(classes: 'mock-bubble mock-bubble-user mock-flow-prompt', [
          Component.text(prompt),
        ]),
        div(classes: 'mock-flow-mini', [
          span(classes: 'mock-flow-mini-title', [
            Component.text('Open another account'),
          ]),
          div(classes: 'mock-input mock-input-filled', [
            span([Component.text('Alex Morgan')]),
            span(classes: 'mock-tag', [Component.text('From core')]),
          ]),
          div(classes: 'mock-flow-mini-button', [
            Component.text('Open account'),
          ]),
        ]),
      ],
    );
  }

  return div(classes: 'mock-window mock-flow', [
    div(classes: 'mock-head', [
      span(classes: 'mock-flow-brand', [
        span(classes: 'mock-flow-star', [Component.text('✦')]),
        Component.text('CU Flow Studio'),
      ]),
      span(classes: 'mock-pill mock-pill-ok', [Component.text('Draft ready')]),
    ]),
    div(classes: 'mock-flow-body', [
      div(classes: 'mock-flow-studio', [
        div(classes: 'mock-flow-chips', [
          span(classes: 'is-active', [Component.text('Account')]),
          span([Component.text('Lottery')]),
          span([Component.text('Referral')]),
        ]),
        div(classes: 'mock-bubble mock-bubble-user mock-flow-prompt', [
          Component.text(prompt),
        ]),
        div(classes: 'mock-flow-reply', [
          span(classes: 'mock-label mock-flow-reply-label', [
            Component.text('CU Flow'),
          ]),
          p([
            Component.text(
              'I have used the member details already available and added the questions needed to choose an account.',
            ),
          ]),
          div(classes: 'mock-flow-tags', [
            span(classes: 'is-core', [Component.text('Name from core')]),
            span(classes: 'is-core', [Component.text('Address from core')]),
            span([Component.text('Account choice')]),
          ]),
        ]),
      ]),
      div(classes: 'mock-flow-phone', [
        span(classes: 'mock-flow-cu', [Component.text('Your Credit Union')]),
        span(classes: 'mock-flow-form-title', [
          Component.text('Open another account'),
        ]),
        span(classes: 'mock-muted mock-flow-intro', [
          Component.text('We have filled in the details we already know.'),
        ]),
        div(classes: 'mock-field', [
          span([Component.text('Full name')]),
          div(classes: 'mock-input mock-input-filled', [
            Component.text('Alex Morgan'),
          ]),
        ]),
        div(classes: 'mock-field', [
          span([Component.text('Which account would you like?')]),
          div(classes: 'mock-input mock-flow-select', [
            Component.text('Regular Saver'),
            span(classes: 'mock-flow-caret', [Component.text('▾')]),
          ]),
        ]),
        div(classes: 'mock-button mock-flow-button', [
          Component.text('Open account'),
        ]),
      ]),
    ]),
  ]);
}
