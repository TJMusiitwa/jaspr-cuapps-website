import 'dart:math' as math;

import 'package:cuapps_website/components/product_page.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Landing page for Loan Calculators.
class LoanCalculatorsPage extends StatelessComponent {
  const LoanCalculatorsPage({super.key});

  @override
  Component build(BuildContext context) {
    return ProductPage(
      slug: 'loan-calculators',
      eyebrow: 'Loan Calculators',
      title: 'Turn loan interest into',
      titleAccent: 'applications.',
      lede:
          'Give people a clear, branded way to explore repayments wherever they find you. Our calculators work with every loan product and connect easily to your existing application journey.',
      highlights: const [
        'Any loan product',
        'Website, email or social',
        'Apply now integration',
      ],
      mockup: loanCalculatorMockup(),
      mockupLabel:
          'A personal loan calculator showing £5,000 over 36 months with an estimated monthly repayment of £160.11 and an Apply now button.',
      featuresEyebrow: 'Designed for community finance',
      featuresTitle: 'Useful wherever members discover your loans.',
      featuresBody:
          'Use a calculator as a permanent website tool or place it directly into a campaign. Your team controls the products and values through a self-service portal.',
      features: const [
        (
          'layers',
          'Every loan product',
          'Create calculators for personal loans, home improvement, consolidation and any other product you offer.',
        ),
        (
          'link',
          'Use them anywhere',
          'Place calculators on your website or share a standalone link through email and social media.',
        ),
        (
          'phone',
          'Built for every screen',
          'A clear mobile experience helps people understand repayments without pinching, zooming or guessing.',
        ),
        (
          'settings',
          'Self-service portal',
          'Update rates, terms, amounts and calls to action without waiting for a development change.',
        ),
        (
          'form',
          'Connect to applications',
          'Add clear Apply now buttons that pass members into your existing loan application system.',
        ),
        (
          'users',
          'Made for mutuals',
          'Designed specifically for credit unions, CDFIs and mutual organisations.',
        ),
      ],
      spotlightEyebrow: 'From calculation to action',
      spotlightTitle: 'A simple route into your existing application.',
      spotlightBody:
          'Once someone finds a repayment that works, the next step should be obvious. We can connect the calculator to the loan application system you already use and create a clear Apply now journey.',
      spotlightVisual: const LoanCalculatorDemo(),
      stepsTitle: 'Launch and manage calculators without fuss.',
      steps: const [
        (
          'Configure',
          'Choose the loan product, rate, amount range and available terms.',
        ),
        (
          'Brand',
          'Match the calculator to your credit union and the campaign around it.',
        ),
        (
          'Publish',
          'Embed it on a website or share the standalone link wherever needed.',
        ),
        (
          'Convert',
          'Send interested borrowers straight into the right application journey.',
        ),
      ],
      faqs: const [
        (
          'Can the calculators support all our loan products?',
          'Yes. Amounts, rates, terms and repayment rules can be configured around each product.',
        ),
        (
          'Can we embed one in an email?',
          'Email clients do not reliably run full interactive calculators. We provide a clear branded link or call to action that opens the standalone calculator from your email.',
        ),
        (
          'Will it work with our application system?',
          'Yes. We can connect the Apply now action to your existing application journey and pass suitable context where the system supports it.',
        ),
        (
          'Can our team change rates?',
          'Yes. The self-service portal lets authorised staff manage calculator settings without editing the website.',
        ),
      ],
      closingTitle: 'Help more people find the right loan.',
      closingBody:
          'Show us your products and application journey. We will create calculators that fit both.',
    );
  }
}

/// Static slider visual: a track filled to [percent] with a thumb.
Component _slider(int percent) {
  return div(
    classes: 'mock-loan-slider',
    styles: Styles(raw: {'--mock-loan-fill': '$percent%'}),
    [span(classes: 'mock-loan-fill', []), span(classes: 'mock-loan-thumb', [])],
  );
}

/// HTML mockup of a personal loan calculator. Decorative: callers must
/// provide an accessible label and hide this from assistive technology.
///
/// [compact] renders a small card sized for homepage product tiles.
Component loanCalculatorMockup({bool compact = false}) {
  if (compact) {
    return div(
      classes: 'mock-window mock-window-sm mock-loan mock-loan-compact',
      [
        div(classes: 'mock-row', [
          span(classes: 'mock-label', [Component.text('Loan amount')]),
          strong(classes: 'mock-loan-value', [Component.text('£5,000')]),
        ]),
        _slider(42),
        div(classes: 'mock-loan-result', [
          span(classes: 'mock-muted', [Component.text('Monthly repayment')]),
          strong(classes: 'mock-loan-repayment', [Component.text('£160.11')]),
        ]),
      ],
    );
  }

  return div(classes: 'mock-window mock-loan', [
    div(classes: 'mock-head', [
      div([
        span(classes: 'mock-label', [
          Component.text('Personal loan calculator'),
        ]),
        span(classes: 'mock-title', [Component.text('What could you borrow?')]),
      ]),
    ]),
    div(classes: 'mock-loan-control', [
      div(classes: 'mock-row', [
        span(classes: 'mock-muted', [Component.text('Loan amount')]),
        strong(classes: 'mock-loan-value', [Component.text('£5,000')]),
      ]),
      _slider(42),
    ]),
    div(classes: 'mock-loan-control', [
      div(classes: 'mock-row', [
        span(classes: 'mock-muted', [Component.text('Repayment term')]),
        strong(classes: 'mock-loan-value', [
          Component.text('36 '),
          span(classes: 'mock-loan-unit', [Component.text('months')]),
        ]),
      ]),
      _slider(50),
    ]),
    div(classes: 'mock-loan-result', [
      span(classes: 'mock-muted', [
        Component.text('Estimated monthly repayment'),
      ]),
      strong(classes: 'mock-loan-repayment', [Component.text('£160.11')]),
    ]),
    div(classes: 'mock-button', [Component.text('Apply now')]),
    p(classes: 'mock-muted mock-loan-small', [
      Component.text('Representative APR 9.9%. Example for illustration.'),
    ]),
  ]);
}

/// A working calculator: the signature moment on the Loan Calculators page.
/// Uses an illustrative representative APR; the Apply step shows where the
/// member would continue into the credit union's own application system.
class LoanCalculatorDemo extends StatefulComponent {
  const LoanCalculatorDemo({super.key});

  @override
  State<LoanCalculatorDemo> createState() => _LoanCalculatorDemoState();
}

class _LoanCalculatorDemoState extends State<LoanCalculatorDemo> {
  static const _apr = 0.099;
  int _amount = 5000;
  int _months = 36;

  double get _monthly {
    final rate = math.pow(1 + _apr, 1 / 12) - 1;
    return _amount * rate / (1 - math.pow(1 + rate, -_months));
  }

  static String _money(double value) {
    final fixed = value.toStringAsFixed(2);
    final whole = fixed
        .split('.')
        .first
        .replaceAllMapped(RegExp(r'\B(?=(\d{3})+(?!\d))'), (_) => ',');
    return '£$whole.${fixed.split('.').last}';
  }

  Component _range({
    required String id,
    required String label,
    required String display,
    required int value,
    required int min,
    required int max,
    required int step,
    required void Function(int) onChanged,
  }) {
    return div(classes: 'calc-control', [
      div(classes: 'calc-row', [
        label_(id, label),
        span(classes: 'calc-value', [Component.text(display)]),
      ]),
      input<num>(
        id: id,
        type: InputType.range,
        value: '$value',
        attributes: {'min': '$min', 'max': '$max', 'step': '$step'},
        styles: Styles(
          raw: {
            '--calc-fill': '${((value - min) / (max - min) * 100).round()}%',
          },
        ),
        onInput: (v) => setState(() => onChanged(v.round())),
      ),
    ]);
  }

  static Component label_(String id, String text) =>
      label(htmlFor: id, [Component.text(text)]);

  @override
  Component build(BuildContext context) {
    final monthly = _monthly;
    return figure(classes: 'calc-demo', [
      div(classes: 'calc-panel', [
        p(classes: 'calc-panel-title', [
          Component.text('Try it: personal loan'),
        ]),
        _range(
          id: 'calc-amount',
          label: 'Loan amount',
          display: _money(_amount.toDouble()).replaceAll('.00', ''),
          value: _amount,
          min: 500,
          max: 15000,
          step: 250,
          onChanged: (v) => _amount = v,
        ),
        _range(
          id: 'calc-term',
          label: 'Repayment term',
          display: '$_months months',
          value: _months,
          min: 6,
          max: 60,
          step: 6,
          onChanged: (v) => _months = v,
        ),
        div(
          classes: 'calc-result',
          attributes: {'aria-live': 'polite'},
          [
            span([Component.text('Estimated monthly repayment')]),
            strong([Component.text(_money(monthly))]),
            span(classes: 'calc-total', [
              Component.text('Total repayable ${_money(monthly * _months)}'),
            ]),
          ],
        ),
        div(classes: 'calc-handoff', [
          span(classes: 'calc-handoff-button', [Component.text('Apply now')]),
          span([
            Component.text('Continues into your existing application system'),
          ]),
        ]),
      ]),
      figcaption([
        Component.text(
          'Working example at an illustrative 9.9% APR representative. Your calculators use your own products and rates.',
        ),
      ]),
    ]);
  }
}
