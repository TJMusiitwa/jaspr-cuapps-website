import 'dart:async';

import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class CompanyStats extends StatelessComponent {
  const CompanyStats({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'bg-base-300 py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(
          classes:
              'grid grid-cols-1 gap-x-12 gap-y-16 lg:grid-cols-2 lg:items-center',
          [
            // Left Column: Text
            div(classes: 'mx-auto max-w-2xl lg:mx-0', [
              p(
                classes:
                    'text-sm font-semibold uppercase tracking-wide text-gray-500',
                [Component.text('BY THE NUMBERS')],
              ),
              h2(
                classes:
                    'mt-2 text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
                [
                  Component.text(
                    'Empowering Credit Unions with Digital Excellence',
                  ),
                ],
              ),
              p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
                Component.text(
                  'We are proud to have made a significant impact in the credit union sector, helping our clients enhance their member experience and streamline their operations. We are proud to have our numbers speak for themselves.',
                ),
              ]),
              div(classes: 'mt-10 flex items-center gap-x-6', [
                a(
                  href: '/contact-us',
                  classes:
                      'rounded-md bg-blue-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600',
                  [Component.text('Get started')],
                ),
                a(
                  href: '/app-features',
                  classes: 'text-sm font-semibold leading-6 text-gray-900',
                  [
                    Component.text('Learn more '),
                    span(
                      attributes: {'aria-hidden': 'true'},
                      [Component.text('→')],
                    ),
                  ],
                ),
              ]),
            ]),

            // Right Column: Stats Grid
            div(classes: 'grid grid-cols-1 gap-6 sm:grid-cols-2', [
              Statistic(
                label: 'Credit unions served',
                value: '15+',
                description:
                    'Trusted by community-focused financial institutions across the UK.',
              ),
              Statistic(
                label: 'App downloads',
                value: '20K+',
                description:
                    'Empowering members with seamless mobile banking access every day.',
              ),
              Statistic(
                label: 'Member satisfaction',
                value: '97%',
                description:
                    'Delivering intuitive and reliable digital experiences that members love.',
              ),
              Statistic(
                label: 'Years of experience',
                value: (DateTime.now().difference(DateTime(2015)).inDays / 365)
                    .toStringAsFixed(0),
                description:
                    'Dedicated to serving the credit union sector with specialized technology.',
              ),
            ]),
          ],
        ),
      ]),
    ]);
  }
}

class Statistic extends StatefulComponent {
  final String label;
  final String value;
  final String description;

  const Statistic({
    super.key,
    required this.label,
    required this.value,
    this.description = '',
  });

  @override
  State<Statistic> createState() => _StatisticState();
}

class _StatisticState extends State<Statistic> {
  late Timer _timer;
  double _currentValue = 0;

  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  void _startAnimation() {
    final RegExp regex = RegExp(r'(\d+)(\D*)');
    final Match? match = regex.firstMatch(component.value);

    // If on server, set final value immediately and return
    if (!kIsWeb) {
      if (match == null) {
        _currentValue = double.tryParse(component.value) ?? 0;
      } else {
        _currentValue = double.parse(match.group(1)!);
      }
      return;
    }

    if (match == null) {
      // If the value doesn't match the expected format, display it directly
      setState(() {
        _currentValue = double.tryParse(component.value) ?? 0;
      });
      return;
    }

    final double targetValue = double.parse(match.group(1)!);

    const Duration animationDuration = Duration(seconds: 2);
    const int totalSteps = 60; // Aim for 60 FPS

    final double stepValue = targetValue / totalSteps;
    final Duration stepInterval = Duration(
      milliseconds: animationDuration.inMilliseconds ~/ totalSteps,
    );

    _timer = Timer.periodic(stepInterval, (timer) {
      setState(() {
        if (_currentValue < targetValue) {
          _currentValue += stepValue;
        } else {
          _currentValue = targetValue;
          _timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Component build(BuildContext context) {
    final RegExp regex = RegExp(r'(\d+)(\D*)');
    final Match? match = regex.firstMatch(component.value);
    final String suffix = match?.group(2) ?? '';

    return div(classes: 'bg-gray-50 rounded-xl p-8', [
      div(classes: 'flex items-baseline gap-x-2', [
        span(classes: 'text-3xl font-bold tracking-tight text-blue-600', [
          Component.text('${_currentValue.round()}$suffix'),
        ]),
        span(classes: 'text-sm font-semibold text-gray-900', [
          Component.text(component.label),
        ]),
      ]),
      p(classes: 'mt-2 text-sm leading-6 text-gray-600', [
        Component.text(component.description),
      ]),
    ]);
  }
}
