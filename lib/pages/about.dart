import 'package:jaspr/jaspr.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([AboutHero(), OurMission(), CompanyStats(), TeamSection()]);
  }
}

class AboutHero extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
      classes:
          'bg-gradient-to-r from-[#021431] via-[#0069ff] to-[#cee4ff] py-24',
      [
        div(classes: 'max-w-7xl mx-auto px-6 lg:px-8', [
          div(classes: 'text-center', [
            h1(
              classes:
                  'text-4xl font-bold tracking-tight text-white sm:text-6xl',
              [text('App Developers Specialised in Credit Union Banking Apps')],
            ),
            p(classes: 'mt-6 text-lg leading-8 text-white/80 max-w-3xl mx-auto', [
              text(
                'As the only UK company focusing exclusively on the digital experience of credit union members, we exist to help you provide the best member service possible.',
              ),
            ]),
          ]),
        ]),
      ],
    );
  }
}

class OurMission extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'py-24 sm:py-32 bg-white', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl lg:mx-0', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [text('Our mission')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            text(
              'At CU Apps, we are dedicated to transforming the way credit unions connect with their members through innovative digital solutions.',
            ),
          ]),
        ]),
        div(classes: 'mx-auto mt-10 max-w-2xl lg:mx-0 lg:max-w-none', [
          div(
            classes:
                'grid grid-cols-1 gap-8 text-base leading-7 text-gray-600 lg:grid-cols-2',
            [
              p([
                text(
                  'At CU Apps, we specialize in creating best-in-class mobile banking experiences for credit unions. We design and build Android and iOS apps that are secure, user-friendly, and put your members in control of their finances. We also develop bespoke generative AI chatbots to further enhance your members\' experience by providing 24/7 support and personalized interactions.',
                ),
              ]),
              p([
                text(
                  'We differ from competitors in our focus on outstanding quality for members, customer service for credit unions and commitment to making technology affordable for credit unions. We help you meet and exceed you members\' expectations and turn tedious banking into easy-to-use and modern solutions without breaking the bank.',
                ),
              ]),
            ],
          ),
          p(classes: 'mt-8 text-base leading-7 text-gray-600', [
            text(
              'CU Apps is a dynamic company and we are passionate about what we do. Our culture of constant improvement ensures that innovation and perfection are always what we strive for. Our attention to detail, customer focus and expertise mean that CU Apps is the perfect choice for any credit union wanting to implement a mobile application or get a bespoke advanced AI chatbot.',
            ),
          ]),
        ]),
      ]),
    ]);
  }
}

class CompanyStats extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'bg-gray-50 py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl lg:mx-0', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [text('Our impact')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            text(
              'We are proud to have made a significant impact in the credit union sector, helping our clients enhance their member experience and streamline their operations. We are proud to have our numbers speak for themselves.',
            ),
          ]),
        ]),
        DomComponent(
          tag: 'dl',
          classes:
              'mt-16 grid grid-cols-1 gap-8 sm:mt-20 sm:grid-cols-2 lg:grid-cols-4',
          children: [
            Statistic(label: 'Credit unions served', value: '15+'),
            Statistic(label: 'App downloads', value: '20K+'),
            Statistic(label: 'Member satisfaction', value: '97%'),
            Statistic(
              label: 'Years of experience',
              value: (DateTime.now().difference(DateTime(2015)).inDays / 365)
                  .toStringAsFixed(0),
            ),
          ],
        ),
      ]),
    ]);
  }
}

class Statistic extends StatelessComponent {
  final String label;
  final String value;

  const Statistic({super.key, required this.label, required this.value});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'flex flex-col-reverse', [
      DomComponent(
        tag: 'dt',
        classes: 'text-base leading-7 text-gray-600',
        child: text(label),
      ),
      DomComponent(
        tag: 'dd',
        classes:
            'text-4xl font-semibold tracking-tight text-gray-900 md:text-5xl',
        child: text(value),
      ),
    ]);
  }
}

class TeamSection extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'bg-white py-24 sm:py-32', [
      div(classes: 'mx-auto max-w-7xl px-6 lg:px-8', [
        div(classes: 'mx-auto max-w-2xl lg:mx-0', [
          h2(
            classes:
                'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
            [text('Meet the Team')],
          ),
          p(classes: 'mt-6 text-lg leading-8 text-gray-600', [
            text(
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

  TeamCard({
    super.key,
    required this.name,
    required this.role,
    required this.image,
    required this.email,
    required this.linkedInUrl,
  });

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield li(classes: 'group', [
      div([
        img(
          classes: 'aspect-[3/4] w-full rounded-2xl object-cover',
          src: image,
          alt: '$name - $role',
        ),
        h3(classes: 'mt-6 text-lg font-semibold leading-8 text-gray-900', [
          text(name),
        ]),
        p(classes: 'text-base leading-7 text-gray-600', [text(role)]),
        div(classes: 'mt-4 flex gap-4', [
          a(classes: 'text-gray-400 hover:text-gray-500', href: 'mailto:$email', [
            svg(
              [
                path(
                  stroke: Color.named('currentColor'),
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
              classes: 'w-6 h-6',
              styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
            ),
            span(classes: 'sr-only', [text('Email')]),
          ]),
          a(
            classes: 'text-gray-400 hover:text-gray-500',
            href: linkedInUrl,
            target: Target.blank,
            [
              svg(
                [
                  path(
                    stroke: Color.named('currentColor'),
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
                    stroke: Color.named('currentColor'),
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
                classes: 'w-6 h-6',
                styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
              ),
              span(classes: 'sr-only', [text('LinkedIn')]),
            ],
          ),
        ]),
      ]),
    ]);
  }
}
