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
                'text-3xl font-bold tracking-tight text-[#132139] sm:text-4xl',
            [Component.text('Meet the Team')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-[#132139]/70', [
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
    return li(
      classes:
          'card group bg-white border border-[#132139]/10 overflow-hidden transition-all duration-300 hover:-translate-y-1 hover:shadow-lg hover:shadow-[#132139]/10',
      [
        // Image
        div(classes: 'aspect-square w-full overflow-hidden bg-base-200', [
          img(
            classes:
                'h-full w-full object-cover object-center transition-transform duration-500 group-hover:scale-105',
            src: image,
            alt: '$name - $role',
          ),
        ]),
        // Details row
        div(classes: 'card-body p-5 flex-row items-center justify-between gap-3', [
          div(classes: 'min-w-0', [
            h3(classes: 'text-lg font-bold leading-6 text-[#132139]', [
              Component.text(name),
            ]),
            p(classes: 'mt-1 text-sm font-medium text-[#259CE2]', [
              Component.text(role),
            ]),
          ]),

          div(classes: 'flex items-center gap-3 shrink-0', [
            a(
              classes:
                  'text-[#132139]/40 hover:text-[#259CE2] transition-colors',
              href: 'mailto:$email',
              [
                svg(
                  viewBox: '0 0 24 24',
                  classes: 'w-5 h-5',
                  styles: Styles(
                    raw: {'fill': 'none', 'stroke': 'currentColor'},
                  ),
                  [
                    path(
                      stroke: Color('currentColor'),
                      strokeWidth: '1.5',
                      d: 'M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75',
                      styles: Styles(
                        raw: {
                          'stroke-linecap': "round",
                          'stroke-linejoin': "round",
                        },
                      ),
                      [],
                    ),
                  ],
                ),
                span(classes: 'sr-only', [Component.text('Email')]),
              ],
            ),
            a(
              classes:
                  'text-[#132139]/40 hover:text-[#259CE2] transition-colors',
              href: linkedInUrl,
              target: Target.blank,
              [
                svg(
                  viewBox: '0 0 24 24',
                  classes: 'w-5 h-5',
                  styles: Styles(
                    raw: {'fill': 'none', 'stroke': 'currentColor'},
                  ),
                  [
                    path(
                      stroke: Color('currentColor'),
                      strokeWidth: '1.5',
                      d: 'M8 16.375V10.75m4 5.625V13.5m0 0v-2.75m0 2.75c0-1.288 1.222-2 2.4-2 1.6 0 1.6 1.375 1.6 2.875v2m-8-8.75v.5',
                      styles: Styles(
                        raw: {
                          'stroke-linecap': "round",
                          'stroke-linejoin': "round",
                        },
                      ),
                      [],
                    ),
                    path(
                      stroke: Color('currentColor'),
                      strokeWidth: '1.5',
                      d: 'M3 9.4c0-2.24 0-3.36.436-4.216a4 4 0 0 1 1.748-1.748C6.04 3 7.16 3 9.4 3h5.2c2.24 0 3.36 0 4.216.436a4 4 0 0 1 1.748 1.748C21 6.04 21 7.16 21 9.4v5.2c0 2.24 0 3.36-.436 4.216a4 4 0 0 1-1.748 1.748C17.96 21 16.84 21 14.6 21H9.4c-2.24 0-3.36 0-4.216-.436a4 4 0 0 1-1.748-1.748C3 17.96 3 16.84 3 14.6z',
                      styles: Styles(
                        raw: {
                          'stroke-linecap': "round",
                          'stroke-linejoin': "round",
                        },
                      ),
                      [],
                    ),
                  ],
                ),
                span(classes: 'sr-only', [Component.text('LinkedIn')]),
              ],
            ),
          ]),
        ]),
      ],
    );
  }
}
