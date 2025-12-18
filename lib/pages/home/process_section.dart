import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ProcessSection extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div([
      div([
        // Header Row
        div([
          div([
            h2(
              [Component.text('Our Design & Development Process')],
              classes:
                  'text-3xl md:text-4xl lg:text-5xl font-bold text-blue-900 mb-4 text-center lg:text-left',
            ),
          ], classes: 'lg:w-1/2'),
          div([
            p([
              Component.text('We take pride in offering credit unions a '),
              span([
                Component.text('premium, bespoke'),
              ], classes: 'font-bold text-gray-900'),
              Component.text(' and '),
              span([
                Component.text('affordable'),
              ], classes: 'font-bold text-gray-900'),
              Component.text(' service to help '),
              span([
                Component.text('save costs, grow membership'),
              ], classes: 'font-bold text-gray-900'),
              Component.text(' and '),
              span([
                Component.text('drive loans'),
              ], classes: 'font-bold text-gray-900'),
              Component.text(
                '. We take the time to understand each credit union we work with and tailor our products so that it\'s right for you and your member base.',
              ),
            ], classes: 'text-base md:text-lg text-gray-600 leading-relaxed'),
          ], classes: 'lg:w-1/2 lg:pl-12 mt-6 lg:mt-0'),
        ], classes: 'flex flex-col lg:flex-row items-center lg:items-start mb-16'),

        // Steps Grid
        div(
          [
            // Step 1: Strategy & Roadmap
            _buildProcessStep(
              title: 'STRATEGY & ROADMAP',
              description:
                  'We consult with you to make sure that your credit union brand is strongly reflected. We will develop a roadmap to build a product that will adapt to your specific members\' needs in a fast-changing environment.',
              icon: _strategyIcon(),
            ),
            // Step 2: Visual & UX Design
            _buildProcessStep(
              title: 'VISUAL & UX DESIGN',
              description:
                  'As specialists in credit union app development, we follow industry-standard design principles to give users an intuitive yet consistent experience on every device.',
              icon: _designIcon(),
            ),
            // Step 3: Development
            _buildProcessStep(
              title: 'DEVELOPMENT',
              description:
                  'We take care of everything for you, from graphic creation, marketing material, to app store approval.',
              icon: _developmentIcon(),
            ),
            // Step 4: Launch & Monitor
            _buildProcessStep(
              title: 'LAUNCH & MONITOR',
              description:
                  'As part of our service we will continually monitor and enhance your app or chatbot to make sure that it is always kept up to date with the latest innovations. We\'ll make sure that your credit union and your members are never left behind.',
              icon: _launchIcon(),
            ),
          ],
          classes:
              'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-8 lg:gap-12',
        ),
      ], classes: 'mx-auto max-w-7xl px-6 lg:px-8'),
    ], classes: 'bg-white py-16 sm:py-20 lg:py-24');
  }

  Component _buildProcessStep({
    required String title,
    required String description,
    required Component icon,
  }) {
    return div([
      // Icon Container with Gradient Border
      div(
        [
          div(
            [icon],
            classes:
                'w-16 h-16 rounded-2xl bg-white flex items-center justify-center text-blue-600',
          ),
        ],
        classes:
            'w-[70px] h-[70px] rounded-[18px] bg-gradient-to-br from-blue-400 to-purple-500 p-[3px] mb-6 flex items-center justify-center mx-auto lg:mx-0 shadow-lg shadow-blue-100',
      ),
      // Text Content
      h3(
        [Component.text(title)],
        classes:
            'text-sm font-bold tracking-wider text-gray-900 mb-4 uppercase text-center lg:text-left',
      ),
      p(
        [Component.text(description)],
        classes:
            'text-sm text-gray-600 leading-relaxed text-center lg:text-left',
      ),
    ], classes: 'flex flex-col items-center lg:items-start');
  }

  // Icons (Simple SVG paths)
  Component _strategyIcon() {
    return svg(
      [
        rect(
          attributes: {
            'x': '3',
            'y': '3',
            'width': '18',
            'height': '18',
            'rx': '2',
            'ry': '2',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'fill': 'none',
          },
          [],
        ),
        path(
          attributes: {
            'd': 'M7 11h2v6H7zm4-4h2v10h-2zm4 7h2v3h-2z',
            'fill': 'currentColor',
          },
          [],
        ),
      ],
      classes: 'w-8 h-8',
      viewBox: '0 0 24 24',
    );
  }

  Component _designIcon() {
    return svg(
      [
        path(
          attributes: {
            'd':
                'M12 22a1 1 0 0 1 0-20 10 9 0 0 1 10 9 5 5 0 0 1-5 5h-2.25a1.75 1.75 0 0 0-1.4 2.8l.3.4a1.75 1.75 0 0 1-1.4 2.8z',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
            'fill': 'none',
          },
          [],
        ),
        circle(
          attributes: {
            'cx': '13.5',
            'cy': '6.5',
            'r': '1.5',
            'fill': 'currentColor',
          },
          [],
        ),
        circle(
          attributes: {
            'cx': '17.5',
            'cy': '10.5',
            'r': '1.5',
            'fill': 'currentColor',
          },
          [],
        ),
        circle(
          attributes: {
            'cx': '6.5',
            'cy': '12.5',
            'r': '1.5',
            'fill': 'currentColor',
          },
          [],
        ),
        circle(
          attributes: {
            'cx': '8.5',
            'cy': '7.5',
            'r': '1.5',
            'fill': 'currentColor',
          },
          [],
        ),
      ],
      classes: 'w-8 h-8',
      viewBox: '0 0 24 24',
    );
  }

  Component _developmentIcon() {
    return svg(
      [
        polyline(
          attributes: {
            'points': '16 18 22 12 16 6',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'fill': 'none',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
          },
          [],
        ),
        polyline(
          attributes: {
            'points': '8 6 2 12 8 18',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'fill': 'none',
            'stroke-linecap': 'round',
            'stroke-linejoin': 'round',
          },
          [],
        ),
      ],
      classes: 'w-8 h-8',
      viewBox: '0 0 24 24',
    );
  }

  Component _launchIcon() {
    return svg(
      [
        path(
          attributes: {
            'd':
                'M4.5 16.5c-1.5 1.26-2 5-2 5s3.74-.5 5-2c.71-.84.7-2.13-.09-2.91a2.18 2.18 0 0 0-2.91-.09z',
            'fill': 'currentColor',
          },
          [],
        ),
        path(
          attributes: {
            'd':
                'm12 15-3-3a22 22 0 0 1 2-3.95A12.88 12.88 0 0 1 22 2c0 2.72-.78 7.5-6 11a22.35 22.35 0 0 1-4 2z',
            'fill': 'currentColor',
          },
          [],
        ),
        path(
          attributes: {
            'd': 'M9 12H4s.5-1 4-4c1.5-1.5 3.5-1.5 3.5-1.5',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'fill': 'none',
          },
          [],
        ),
        path(
          attributes: {
            'd': 'M12 15v5s1 .5 4-4c1.5-1.5 1.5-3.5 1.5-3.5',
            'stroke': 'currentColor',
            'stroke-width': '2',
            'fill': 'none',
          },
          [],
        ),
      ],
      classes: 'w-8 h-8',
      viewBox: '0 0 24 24',
    );
  }
}
