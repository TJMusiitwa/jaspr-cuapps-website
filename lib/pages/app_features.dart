import 'package:jaspr/jaspr.dart';

class AppFeatures extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      AppFeaturesHeader(),
      AppFeaturesGrid(),
      blockquote([
        text(
          'Our app is not a one-size-fits-all solution. We work with you to understand your credit union’s unique needs and goals to create a custom mobile app that meets your requirements and exceeds your members’ expectations.',
        ),
      ], classes: 'text-center mt-16 text-lg font-medium text-gray-500'),
      div([
        div([
          div(
            [
              text('Ready For a Free Evaluation and Demo '),
              a(
                [
                  span([], classes: 'absolute inset-2'),
                  text('Contact us'),
                  span([raw('&rarr;')]),
                ],
                classes: 'font-semibold text-blue-600 text-balance',
                target: Target.blank,
                href: 'https://cuapps.co.uk/free-credit-union-app-demo/',
              ),
            ],
            classes:
                'relative rounded-full px-3 py-1 text-sm leading-6 text-gray-600 ring-1 ring-gray-900/10 hover:ring-gray-900/20',
          ),
        ], classes: 'hidden sm:mb-8 sm:flex sm:justify-center'),
      ], classes: 'mx-auto max-w-2xl py-16 sm:py-16 lg:py-39'),
    ], classes: 'px-8 py-24 mx-auto md:px-12 lg:px-32 max-w-7xl');
  }
}

class AppFeaturesHeader extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      h2(
        [text('Credit Union Mobile App Features')],
        classes:
            'block antialiased font-sans leading-relaxed text-blue-gray-900 mb-4 !text-2xl font-bold lg:!text-4xl',
      ),
      p([
        text(
          'Our premium mobile apps for credit unions come packed with features to allow your credit union to grow and save costs. We help you meet and exceed members expectations by exclusively focusing on mobiles apps that complement your existing systems and processes while always keeping up with the latest innovations in mobile technology.',
        ),
      ], classes: 'text-center mt-10 text-base font-medium text-gray-500'),
    ], classes: 'container mx-auto mb-10 mt-10 text-center lg:mb-20');
  }
}

class AppFeaturesGrid extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      // Bento grid container
      div([
        // First row - featured items (larger)
        div([
          // Biometric Login - Large feature with image
          div(
            [
              div([
                div(
                  [
                    img(
                      src:
                          'https://cuapps.co.uk/wp-content/uploads/2024/06/Apps-1000-x-1500-px.png',
                      alt: 'Biometric authentication feature',
                      classes:
                          'w-1/3 h-1/3 object-cover object-center rounded-xl transition-all duration-300 group-hover:scale-105',
                    ),
                  ],
                  classes:
                      ' overflow-hidden rounded-xl mb-4 flex justify-center',
                ),
              ], classes: 'relative'),

              h3(
                [text('Biometric Login')],
                classes:
                    'text-xl font-bold text-gray-900 group-hover:text-blue-600',
              ),
              p([
                text(
                  'Members can access their accounts by using biometric login such as TouchID and FaceID. No more calls for forgotten member numbers!',
                ),
              ], classes: 'mt-2 text-sm text-gray-500 group-hover:text-gray-600'),
            ],
            classes:
                'group relative rounded-xl bg-blue-50 p-6 transition-all duration-300 hover:shadow-lg hover:bg-white hover:ring-1 hover:ring-gray-200 md:p-8',
          ),

          // Push Notifications - Large feature with image
          div(
            [
              div([
                div([
                  img(
                    src:
                        'https://cuapps.co.uk/wp-content/uploads/2024/10/Push-notifications.png',
                    alt: 'Push notifications feature on iOS',
                    classes:
                        'w-1/3 h-1/3 object-scale-down object-top rounded-xl transition-all duration-300 group-hover:scale-105',
                  ),
                ], classes: 'overflow-hidden rounded-xl mb-4 flex justify-center'),
              ], classes: 'relative'),

              h3(
                [text('Push Notifications')],
                classes:
                    'text-xl font-bold text-gray-900 group-hover:text-blue-600',
              ),
              p([
                text(
                  'Send unlimited, free, messages to members devices. Re-engage passive members and keep active members informed.',
                ),
              ], classes: 'mt-2 text-sm text-gray-500 group-hover:text-gray-600'),
            ],
            classes:
                'group relative rounded-xl bg-indigo-50 p-6 transition-all duration-300 hover:shadow-lg hover:bg-white hover:ring-1 hover:ring-gray-200 md:p-8',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 gap-6'),

        // Second row - member engagement features
        div([
          // Member Surveys - Medium feature with image
          div(
            [
              div([
                div(
                  [
                    img(
                      src:
                          'https://cuapps.co.uk/wp-content/uploads/2024/07/Apps-1000-x-1500-px.png',
                      alt: 'Member surveys feature',
                      classes:
                          'w-1/3 h-1/3 object-cover object-center rounded-xl transition-all duration-300 group-hover:scale-105',
                    ),
                  ],
                  classes:
                      ' overflow-hidden rounded-xl mb-4 flex justify-center',
                ),
              ], classes: 'relative'),

              h3(
                [text('Member Surveys')],
                classes:
                    'text-xl font-bold text-gray-900 group-hover:text-blue-600',
              ),
              p([
                text(
                  'Gather member feedback through our mobile app. Easily run surveys and competitions for increased engagement. Allow members to vote during an AGM.',
                ),
              ], classes: 'mt-2 text-sm text-gray-500 group-hover:text-gray-600'),
            ],
            classes:
                'group relative rounded-xl bg-green-50 p-6 transition-all duration-300 hover:shadow-lg hover:bg-white hover:ring-1 hover:ring-gray-200 md:p-8',
          ),

          // News Feed & Blog Posts - Medium feature with image
          div(
            [
              div([
                div(
                  [
                    img(
                      src:
                          'https://cuapps.co.uk/wp-content/uploads/2024/06/Apps-1000-x-1500-px-1.png',
                      alt: 'News feed and blog posts feature',
                      classes:
                          'w-1/3 h-1/3 object-cover object-center rounded-xl transition-all duration-300 group-hover:scale-105',
                    ),
                  ],
                  classes:
                      ' overflow-hidden rounded-xl mb-4 flex justify-center',
                ),
              ], classes: 'relative'),

              h3(
                [text('News Feed & Blog Posts')],
                classes:
                    'text-xl font-bold text-gray-900 group-hover:text-blue-600',
              ),
              p([
                text(
                  'Keep your members up to date with everything that\'s happening with our news feed and blog post features.',
                ),
              ], classes: 'mt-2 text-sm text-gray-500 group-hover:text-gray-600'),
            ],
            classes:
                'group relative rounded-xl bg-orange-50 p-6 transition-all duration-300 hover:shadow-lg hover:bg-white hover:ring-1 hover:ring-gray-200 md:p-8',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 gap-6 mt-6'),

        // Third row - loan features
        div([
          // Loan Applications - Full width feature
          bentoFeatureItem(
            feature: 'Loan Applications',
            description:
                'Allow members to directly apply for loans from the app. Members can track their application status and get notified when it\'s approved.',
            image:
                'm16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L10.582 16.07a4.5 4.5 0 0 1-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 0 1 1.13-1.897l8.932-8.931Zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0 1 15.75 21H5.25A2.25 2.25 0 0 1 3 18.75V8.25A2.25 2.25 0 0 1 5.25 6H10',
            isFullWidth: true,
            bgColor: 'bg-purple-50',
            iconColor: 'text-purple-600',
          ),

          // Loan Calculator and Eligibility
          bentoFeatureItem(
            feature: 'Loan Calculator',
            description:
                'Members and non-members can calculate monthly payments to reach savings goals or pay off loans.',
            image:
                'M21 5h-3m-4.25-2v4M13 5H3m4 7H3m7.75-2v4M21 12H11m10 7h-3m-4.25-2v4M13 19H3',
            isSmall: false,
            bgColor: 'bg-amber-50',
            iconColor: 'text-amber-600',
          ),

          // Loan Eligibility
          bentoFeatureItem(
            feature: 'Loan Eligibility',
            description:
                'Let members know how much they\'re eligible for without a credit check.',
            image: 'M19.5 20.5c-.475-9.333-14.525-9.333-15 0',
            isSmall: false,
            bgColor: 'bg-rose-50',
            iconColor: 'text-rose-600',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-3 gap-6 mt-6'),

        // Fourth row - Account Management features
        div([
          // Balance & Statements
          bentoFeatureItem(
            feature: 'Balance & Statements',
            description:
                'Members can view the balance for all loan and savings accounts, plus view a detailed searchable statement for all accounts.',
            image:
                'M8.25 6.75h12M8.25 12h12m-12 5.25h12M3.75 6.75h.007v.008H3.75V6.75Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0ZM3.75 12h.007v.008H3.75V12Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm-.375 5.25h.007v.008H3.75v-.008Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z',
            isLarge: true,
            bgColor: 'bg-teal-50',
            iconColor: 'text-teal-600',
          ),

          // Pay In & Withdrawals
          bentoFeatureItem(
            feature: 'Pay In & Withdrawals',
            description:
                'Pay money directly into your credit union account to grow savings or pay off a loan. Members have easy access to withdraw their money.',
            image:
                'M7.5 21L3 16.5m0 0L7.5 12M3 16.5h13.5m0-13.5L21 7.5m0 0L16.5 12M21 7.5H7.5',
            isLarge: true,
            bgColor: 'bg-blue-50',
            iconColor: 'text-blue-600',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 gap-6 mt-6'),

        // Fifth row - Communication and Account features
        div([
          // Live Chat & Inbox
          bentoFeatureItem(
            feature: 'Live Chat & Inbox',
            description:
                'Chat to members live from within the mobile app. View documents, completed loan applications and personal messages from the credit union.',
            image:
                'M5 12a5 5 0 0 1 7 7m-7-7a4.993 4.993 0 0 0-2 4 5 5 0 0 0 .224 1.483c.272.88.076 1.86-.099 2.784a.468.468 0 0 0 .592.539c.848-.232 1.691-.43 2.557-.112A4.99 4.99 0 0 0 8 21a4.991 4.991 0 0 0 4-2m-7-7c0-4.685 2.875-9 8-9a8 8 0 0 1 7.532 10.7c-.476 1.326.037 3.102.337 4.568a.451.451 0 0 1-.584.526c-1.312-.41-2.852-.986-4.085-.466-1.334.562-2.736.672-4.2.672',
            bgColor: 'bg-cyan-50',
            iconColor: 'text-cyan-600',
          ),

          // Contact Info & FAQs
          bentoFeatureItem(
            feature: 'Contact Info & FAQs',
            description:
                'View clickable contact information and frequently asked questions about the credit union.',
            image: 'M12 21v-.5m0-3c0-5.1 5-3.825 5-8.924 0-6.768-10-6.768-10 0',
            bgColor: 'bg-lime-50',
            iconColor: 'text-lime-600',
          ),

          // Update Member Info
          bentoFeatureItem(
            feature: 'Update Member Info',
            description:
                'Update personal information in the app such as address, phone numbers, email and all PINs and passwords.',
            image:
                'M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z',
            bgColor: 'bg-violet-50',
            iconColor: 'text-violet-600',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-3 gap-6 mt-6'),

        // Last row - specialty features
        div([
          // Join
          bentoFeatureItem(
            feature: 'Join',
            description:
                'Let anyone join the credit union directly from the app.',
            image: 'M12 4.5v15m7.5-7.5h-15',
            isSmall: true,
            bgColor: 'bg-sky-50',
            iconColor: 'text-sky-600',
          ),

          // Benefits Calculator
          bentoFeatureItem(
            feature: 'Benefits Calculator',
            description:
                'Together with our partner, Inbest©, we offer a benefits calculator to help your members calculate benefits they may be eligible for.',
            image:
                'M7.75 3.5C5.127 3.5 3 5.76 3 8.547 3 14.125 12 20.5 12 20.5s9-6.375 9-11.953C21 5.094 18.873 3.5 16.25 3.5c-1.86 0-3.47 1.136-4.25 2.79-.78-1.654-2.39-2.79-4.25-2.79',
            isSmall: true,
            bgColor: 'bg-pink-50',
            iconColor: 'text-pink-600',
          ),

          // Savings Goals
          bentoFeatureItem(
            feature: 'Savings Goals',
            description:
                'Members can set savings goals and track their progress towards achieving them.',
            image:
                'M2.25 18L9 11.25l4.306 4.307a11.95 11.95 0 015.814-5.519l2.74-1.22m0 0l-5.94-2.28m5.94 2.28l-2.28 5.941',
            isSmall: true,
            bgColor: 'bg-emerald-50',
            iconColor: 'text-emerald-600',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-3 gap-6 mt-6'),
      ], classes: 'mt-12'),
    ], classes: 'container mx-auto px-4 sm:px-6 lg:px-8');
  }

  Component bentoFeatureItem({
    required String feature,
    required String description,
    required String image,
    bool isLarge = false,
    bool isSmall = false,
    bool isFullWidth = false,
    String bgColor = 'bg-blue-50',
    String iconColor = 'text-blue-600',
  }) {
    // Determine the appropriate classes based on the size
    String containerClasses =
        'group relative overflow-hidden rounded-xl p-6 transition-all duration-300 hover:shadow-lg';
    containerClasses +=
        ' $bgColor hover:bg-white hover:ring-1 hover:ring-gray-200';

    if (isLarge) {
      containerClasses += ' md:p-8';
    } else if (isSmall) {
      containerClasses += ' p-5';
    } else if (isFullWidth) {
      containerClasses += ' md:p-8';
    }

    return div([
      div([
        // Icon container
        div([
          span(
            [
              svg(
                [
                  path(
                    strokeWidth: '1.5',
                    d: image,
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
                classes: 'size-6 $iconColor',
                styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
              ),
            ],
            classes:
                'flex items-center justify-center rounded-full size-12 $bgColor/50 $iconColor',
          ),
        ], classes: 'mb-5'),

        // Content
        h3(
          [text(feature)],
          classes:
              'text-lg font-semibold text-gray-900 group-hover:text-blue-600',
        ),
        p([
          text(description),
        ], classes: 'mt-2 text-sm text-gray-500 group-hover:text-gray-600'),

        // Hover effect arrow (visible on hover)
        div(
          [
            svg(
              [
                path(
                  d: 'M7 17L17 7M17 7H7M17 7V17',
                  strokeWidth: '2',
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
              classes: 'size-5',
              styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
            ),
          ],
          classes:
              'absolute bottom-4 right-4 opacity-0 transition-opacity duration-300 group-hover:opacity-100 $iconColor',
        ),
      ], classes: containerClasses),
    ]);
  }
}
