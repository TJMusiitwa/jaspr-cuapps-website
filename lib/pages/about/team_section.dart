import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TeamSection extends StatelessComponent {
  const TeamSection({super.key});

  @override
  Component build(BuildContext context) {
    return div(classes: 'bg-white py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl lg:mx-0', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [Component.text('Meet the Team')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            Component.text(
              'From the strategic thinkers to the creative innovators, each person contributes to the vibrant culture and remarkable service we\'re known for.',
            ),
          ]),
        ]),
        ul(
          classes:
              'mx-auto mt-20 grid max-w-2xl grid-cols-1 gap-x-8 gap-y-16 sm:grid-cols-2 lg:mx-0 lg:max-w-none lg:grid-cols-3',
          attributes: {'role': 'list'},
          [
            TeamCard(
              name: 'Declan McGallagly',
              role: 'CEO & Co-Founder',
              image: 'images/team/declan.webp',
              email: 'declan@cuapps.co.uk',
              linkedInUrl: 'https://www.linkedin.com/in/declan-mcgallagly/',
            ),
            TeamCard(
              name: 'Eden King',
              role: 'Product Manager',
              image: 'images/team/eden.webp',
              email: 'eden@cuapps.co.uk',
              linkedInUrl: 'https://www.linkedin.com/in/eden-king/',
            ),
            TeamCard(
              name: 'Hugh McGrade',
              role: 'Software Engineer & Co-Founder',
              image: 'images/team/hugh.webp',
              email: 'hugh@cuapps.co.uk',
              linkedInUrl: 'https://www.linkedin.com/in/hugh-mcgrade/',
            ),
            TeamCard(
              name: 'Jack Allison',
              role: 'Software Engineer & Co-Founder',
              image: 'images/team/jack.webp',
              email: 'jack@cuapps.co.uk',
              linkedInUrl: 'https://www.linkedin.com/in/jack-allison/',
            ),
            TeamCard(
              name: 'Jonathan Musiitwa',
              role: 'Software Engineer',
              image: 'images/team/jonathan.webp',
              email: 'jonathan@cuapps.co.uk',
              linkedInUrl: 'https://www.linkedin.com/in/jonathan-musiitwa/',
            ),
            TeamCard(
              name: 'Colin McKay',
              role: 'Consultant',
              image: 'images/team/colin.webp',
              email: 'colin@cuapps.co.uk',
              linkedInUrl: 'https://www.linkedin.com/in/colin-mckay/',
            ),
          ],
        ),
      ]),
    ]);
  }
}

class TeamCard extends StatelessComponent {
  final String name;
  final String role;
  final String image;
  final String email;
  final String linkedInUrl;

  const TeamCard({
    super.key,
    required this.name,
    required this.role,
    required this.image,
    required this.email,
    required this.linkedInUrl,
  });

  @override
  Component build(BuildContext context) {
    return li(classes: 'group relative', [
      // Image container
      div(
        classes:
            'aspect-square w-full rounded-2xl overflow-hidden bg-gray-100 mb-10',
        [
          img(
            classes: 'h-full w-full object-cover object-center',
            src: image,
            alt: '$name - $role',
          ),
        ],
      ),
      // Overlapping details card
      div(
        classes:
            'absolute bottom-0 left-4 right-4 bg-white rounded-xl shadow-lg p-5 border border-gray-100',
        [
          div(classes: 'flex flex-col gap-1', [
            h3(classes: 'text-lg font-bold leading-6 text-gray-900', [
              Component.text(name),
            ]),
            p(classes: 'text-sm font-medium text-blue-600', [
              Component.text(role),
            ]),
          ]),

          div(classes: 'mt-4 flex items-center justify-end gap-3', [
            a(
              classes: 'text-gray-400 hover:text-blue-500 transition-colors',
              href: 'mailto:$email',
              [
                svg(
                  [
                    path(
                      stroke: Color('currentColor'),
                      strokeWidth: '1.5',
                      d: 'M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75',
                      [],
                      styles: Styles(
                        raw: {
                          'stroke-linecap': "round",
                          'stroke-linejoin': "round",
                        },
                      ),
                    ),
                  ],
                  viewBox: '0 0 24 24',
                  classes: 'w-5 h-5',
                  styles: Styles(
                    raw: {'fill': 'none', 'stroke': 'currentColor'},
                  ),
                ),
                span(classes: 'sr-only', [Component.text('Email')]),
              ],
            ),
            a(
              classes: 'text-gray-400 hover:text-blue-600 transition-colors',
              href: linkedInUrl,
              target: Target.blank,
              [
                svg(
                  [
                    path(
                      stroke: Color('currentColor'),
                      strokeWidth: '1.5',
                      d: 'M8 16.375V10.75m4 5.625V13.5m0 0v-2.75m0 2.75c0-1.288 1.222-2 2.4-2 1.6 0 1.6 1.375 1.6 2.875v2m-8-8.75v.5',
                      [],
                      styles: Styles(
                        raw: {
                          'stroke-linecap': "round",
                          'stroke-linejoin': "round",
                        },
                      ),
                    ),
                    path(
                      stroke: Color('currentColor'),
                      strokeWidth: '1.5',
                      d: 'M3 9.4c0-2.24 0-3.36.436-4.216a4 4 0 0 1 1.748-1.748C6.04 3 7.16 3 9.4 3h5.2c2.24 0 3.36 0 4.216.436a4 4 0 0 1 1.748 1.748C21 6.04 21 7.16 21 9.4v5.2c0 2.24 0 3.36-.436 4.216a4 4 0 0 1-1.748 1.748C17.96 21 16.84 21 14.6 21H9.4c-2.24 0-3.36 0-4.216-.436a4 4 0 0 1-1.748-1.748C3 17.96 3 16.84 3 14.6z',
                      [],
                      styles: Styles(
                        raw: {
                          'stroke-linecap': "round",
                          'stroke-linejoin': "round",
                        },
                      ),
                    ),
                  ],
                  viewBox: '0 0 24 24',
                  classes: 'w-5 h-5',
                  styles: Styles(
                    raw: {'fill': 'none', 'stroke': 'currentColor'},
                  ),
                ),
                span(classes: 'sr-only', [Component.text('LinkedIn')]),
              ],
            ),
          ]),
        ],
      ),
    ]);
  }
}
