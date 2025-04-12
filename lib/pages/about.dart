import 'package:jaspr/jaspr.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([AboutUsHeader(), TeamSection()]);
  }
}

class AboutUsHeader extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      div(classes: 'text-center mt-5 py-10 sm:py-16', [
        h1(
          classes:
              'text-4xl font-semibold tracking-tighter text-gray-900 lg:text-5xl text-balance',
          [
            text(
              'App Developers Specialised in Credit Union Banking Apps and Chatbots',
            ),
          ],
        ),
      ]),
      p(classes: 'text-xl leading-8 text-gray-700 text-center', [
        text(
          'As the only UK company focusing exclusively on the digital experience of credit union members, we exist to help you provide the best member service possible, to grow your membership and increase your loan book.',
        ),
      ]),
      p(classes: 'text-center text-base font-medium text-gray-500 mt-4', [
        text(
          'At CU Apps, we specialize in creating best-in-class mobile banking experiences for credit unions. We design and build Android and iOS apps that are secure, user-friendly, and put your members in control of their finances. We also develop bespoke generative AI chatbots to further enhance your members\' experience by providing 24/7 support and personalized interactions.',
        ),
      ]),
      p(classes: 'text-center text-base font-medium text-gray-500 mt-2', [
        text(
          'We differ from competitors in our focus on outstanding quality for members, customer service for credit unions and commitment to making technology affordable for credit unions. We help you meet and exceed you members’ expectations and turn tedious banking into easy-to-use and modern solutions without breaking the bank.',
        ),
      ]),
      p(classes: 'text-center text-base font-medium text-gray-500 mt-2', [
        text(
          'CU Apps is a dynamic company and we are passionate about what we do. Our culture of constant improvement ensures that innovation and perfection are always what we strive for. Our attention to detail, customer focus and expertise mean that CU Apps is the perfect choice for any credit union wanting to implement a mobile application or get a bespoke advanced AI chatbot.',
        ),
      ]),
    ], classes: 'mx-auto max-w-7xl px-6 lg:px-8');
  }
}

class TeamSection extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'min-h-screen py-8 px-8 lg:py-12', [
      div(classes: 'container mx-auto', [
        div(classes: 'mb-16 text-center lg:mb-28', [
          h6(
            classes:
                'block antialiased tracking-normal font-sans font-semibold leading-relaxed text-blue-gray-900 text-lg',
            [text('Meet the Team')],
          ),
          h1(
            classes:
                'block antialiased tracking-normal font-sans font-semibold leading-tight text-blue-gray-900 my-2 !text-2xl lg:!text-4xl',
            [text('Behind the Success: Our Dedicated Team')],
          ),
          p(
            classes:
                'block antialiased font-sans text-xl font-normal leading-relaxed text-inherit mx-auto w-full !text-gray-500 max-w-4xl',
            [
              text(
                'From the strategic thinkers to the creative innovators, each person contributes to the vibrant culture and remarkable service we\'re known for.',
              ),
            ],
          ),
          div(
            classes:
                'grid grid-cols-1 gap-6 pt-8 sm:pt-16 lg:grid-cols-3 xl:gap-8',
            [
              div(classes: 'lg:col-span-3', [
                ul(
                  classes:
                      'grid grid-cols-1 gap-6 sm:grid-cols-2 lg:grid-cols-3 xl:gap-8',
                  attributes: {'role': 'list'},
                  [
                    TeamCard(
                      name: 'Declan McGallagly',
                      role: 'CEO & Co-Founder',
                      image: 'images/team/declan.webp',
                      email: 'declan@cuapps.co.uk',
                      linkedInUrl:
                          'https://www.linkedin.com/in/declan-mcgallagly/',
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
                      linkedInUrl:
                          'https://www.linkedin.com/in/jonathan-musiitwa/',
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
            ],
          ),
        ]),
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
    yield li([
      div(classes: 'opacity: 1; transform: none;', [
        div(classes: 'group relative overflow-hidden rounded-3xl bg-neutral-100', [
          img(
            classes:
                'h-96 w-full object-cover transition duration-500 motion-safe:group-hover:scale-105 hover:filter-none',
            src: image,
            loading: MediaLoading.lazy,
            alt: name.split(' ').first,
            height: 1800,
            width: 1800,
            styles: Styles(raw: {'color': 'transparent'}),
          ),
          div(
            classes:
                'absolute inset-0 flex flex-col justify-end bg-gradient-to-t from-black to-black/0 to-40% p-6 items-center',
            [
              p(
                classes:
                    'font-display text-base/6 font-semibold tracking-wide text-white',
                [text(name)],
              ),
              p(classes: 'mt-2 text-sm text-white', [text(role)]),
              div(classes: 'flex space-x-3 mt-2', [
                a(
                  classes: 'text-white-400 hover:text-gray-500',
                  [
                    svg(
                      [
                        path(
                          stroke: Color.named('white'),
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
                      styles: Styles(
                        raw: {'fill': 'none', 'stroke': 'currentColor'},
                      ),
                    ),
                  ],
                  href: 'mailto:$email',
                ),
                a(
                  classes: 'text-white-400 hover:text-gray-500',
                  [
                    svg(
                      [
                        path(
                          stroke: Color.named('white'),
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
                          stroke: Color.named('white'),
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
                      styles: Styles(
                        raw: {'fill': 'none', 'stroke': 'currentColor'},
                      ),
                    ),
                  ],
                  href: linkedInUrl,
                  target: Target.blank,
                ),
              ]),
            ],
          ),
        ]),
      ]),
    ]);
  }
}
