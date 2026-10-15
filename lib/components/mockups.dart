import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Static HTML mockup of the member app: a phone that signs in, then moves
/// from the account overview to a loan application. The screens cycle in
/// CSS (web/motion.css); with reduced motion the overview stays put.
///
/// [hero] sizes it for the home hero, where it rises onto the shelf.
Component mobileAppMockup({bool hero = false}) {
  return div(classes: 'mock-phone${hero ? ' hero-phone' : ''}', [
    div(classes: 'mock-phone-notch', []),
    div(classes: 'mock-phone-screens', [
      // 1. Sign in
      div(classes: 'mock-phone-screen mock-app-login', [
        span(classes: 'mock-app-logo', [Component.text('Your CU')]),
        span(classes: 'mock-muted', [Component.text('Welcome back')]),
        div(classes: 'mock-field', [
          span([Component.text('Member number')]),
          span(classes: 'mock-input', [Component.text('•••• 4821')]),
        ]),
        div(classes: 'mock-field', [
          span([Component.text('Password')]),
          span(classes: 'mock-input', [Component.text('••••••••')]),
        ]),
        span(classes: 'mock-button mock-app-signin', [
          span(classes: 'mock-app-spinner', []),
          Component.text('Signing in'),
        ]),
        span(classes: 'mock-app-biometric', [Component.text('Use Face ID')]),
      ]),
      // 2. Accounts
      div(classes: 'mock-phone-screen mock-app-home', [
        span(classes: 'mock-muted', [Component.text('Good morning')]),
        span(classes: 'mock-title', [Component.text('Sam')]),
        div(classes: 'mock-app-card mock-app-card-primary', [
          span(classes: 'mock-label', [Component.text('Savings')]),
          strong([Component.text('£2,450.18')]),
          span([Component.text('+£25.00 paid in today')]),
        ]),
        div(classes: 'mock-app-card', [
          div(classes: 'mock-row', [
            span(classes: 'mock-label', [Component.text('Loan')]),
            span(classes: 'mock-muted', [Component.text('£1,320 left')]),
          ]),
          div(classes: 'mock-bar', [span([])]),
        ]),
        div(classes: 'mock-app-actions', [
          for (final (icon, label) in const [
            ('wallet', 'Pay in'),
            ('transfer', 'Transfer'),
            ('loan', 'Apply'),
            ('help', 'Help'),
          ])
            span([
              span([lineIcon(icon)]),
              Component.text(label),
            ]),
        ]),
      ]),
      // 3. Apply for a loan
      div(classes: 'mock-phone-screen mock-app-loan', [
        span(classes: 'mock-muted', [Component.text('Loans')]),
        span(classes: 'mock-title', [Component.text('Apply for a loan')]),
        div(classes: 'mock-app-card', [
          div(classes: 'mock-row', [
            span(classes: 'mock-label', [Component.text('Amount')]),
            strong([Component.text('£3,000')]),
          ]),
          div(classes: 'mock-bar', [span([])]),
          div(classes: 'mock-row', [
            span(classes: 'mock-label', [Component.text('Term')]),
            strong([Component.text('24 months')]),
          ]),
          div(classes: 'mock-bar mock-app-bar-term', [span([])]),
        ]),
        div(classes: 'mock-app-card mock-app-card-primary', [
          span(classes: 'mock-label', [Component.text('Monthly repayment')]),
          strong([Component.text('£138.40')]),
        ]),
        span(classes: 'mock-button', [Component.text('Continue')]),
      ]),
    ]),
    div(classes: 'mock-app-tabs', [
      for (final (icon, label) in const [
        ('home', 'Home'),
        ('wallet', 'Accounts'),
        ('loan', 'Loans'),
        ('more', 'More'),
      ])
        span([lineIcon(icon), Component.text(label)]),
    ]),
  ]);
}

/// Static HTML mockup of CU Chat on a credit union website: a browser
/// window with the branded widget open and a page-specific greeting.
Component websiteChatMockup() {
  return div(classes: 'mock-window mock-site', [
    div(classes: 'mock-site-bar', [
      span(classes: 'mock-site-dots', [span([]), span([]), span([])]),
      span(classes: 'mock-site-url', [
        Component.text('yourcreditunion.co.uk/loans'),
      ]),
    ]),
    div(classes: 'mock-site-page', [
      div(classes: 'mock-site-nav', [
        span(classes: 'mock-site-brand', [Component.text('Your CU')]),
        span(classes: 'mock-site-links', [span([]), span([]), span([])]),
      ]),
      div(classes: 'mock-site-hero', [
        span(classes: 'mock-label', [Component.text('Loans')]),
        span(classes: 'mock-site-heading', [
          Component.text('Borrow with confidence.'),
        ]),
        span(classes: 'mock-site-line', []),
        span(classes: 'mock-site-line mock-site-line-short', []),
        span(classes: 'mock-site-cta', [Component.text('Apply now')]),
      ]),
      div(classes: 'mock-site-tiles', [span([]), span([]), span([])]),
      div(classes: 'mock-site-widget', [
        div(classes: 'mock-site-widget-head', [
          span(classes: 'mock-chat-avatar', [Component.text('CU')]),
          span([
            strong([Component.text('Your CU assistant')]),
            span(classes: 'mock-muted', [Component.text('Online')]),
          ]),
        ]),
        div(classes: 'mock-thread', [
          div(classes: 'mock-bubble', [
            Component.text(
              'Looking for a loan? I can show you what it might cost.',
            ),
          ]),
          div(classes: 'mock-bubble mock-bubble-user', [
            Component.text('Yes please'),
          ]),
        ]),
      ]),
      span(classes: 'mock-site-launcher', [Component.text('CU')]),
    ]),
  ]);
}
