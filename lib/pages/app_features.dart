import 'package:jaspr/jaspr.dart';

class AppFeatures extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      AppFeaturesHeader(),
      AppFeaturesGrid(),
      blockquote([
        text(
            'Our app is not a one-size-fits-all solution. We work with you to understand your credit union’s unique needs and goals to create a custom mobile app that meets your requirements and exceeds your members’ expectations.'),
      ], classes: 'text-center mt-16 text-lg font-medium text-gray-500'),
      div([
        div([
          div([
            text('Ready For a Free Evaluation and Demo'),
            a([
              span([], classes: 'absolute inset-0'),
              text('Contact us'),
              span([raw('&rarr;')])
            ], classes: 'font-semibold text-blue-600 text-balance', href: '#'),
          ],
              classes:
                  'relative rounded-full px-3 py-1 text-sm leading-6 text-gray-600 ring-1 ring-gray-900/10 hover:ring-gray-900/20')
        ], classes: 'hidden sm:mb-8 sm:flex sm:justify-center')
      ], classes: 'mx-auto max-w-2xl py-16 sm:py-16 lg:py-39')
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
            'Our premium mobile apps for credit unions come packed with features to allow your credit union to grow and save costs. We help you meet and exceed members expectations by exclusively focusing on mobiles apps that complement your existing systems and processes while always keeping up with the latest innovations in mobile technology.')
      ], classes: 'text-center mt-10 text-base font-medium text-gray-500')
    ], classes: 'container mx-auto mb-10 mt-10 text-center lg:mb-20');
  }
}

class AppFeaturesGrid extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      appFeatureItem(
          feature: 'Biometric Login',
          description:
              'Allow your members to log in to their accounts using their fingerprint or face ID.',
          image:
              'M11 13.75h1v-4m4-.25V8m-7 8.5c1.5 1.5 4.5 1.5 6 0m-7-7V8m1.4 13c-2.24 0-3.36 0-4.216-.436a4 4 0 0 1-1.748-1.748C3 17.96 3 16.84 3 14.6m18 0c0 2.24 0 3.36-.436 4.216a4 4 0 0 1-1.748 1.748C17.96 21 16.84 21 14.6 21m0-18c2.24 0 3.36 0 4.216.436a4 4 0 0 1 1.748 1.748C21 6.04 21 7.16 21 9.4M9.4 3c-2.24 0-3.36 0-4.216.436a4 4 0 0 0-1.748 1.748C3 6.04 3 7.16 3 9.4'),
      appFeatureItem(
          feature: 'Push Notifications',
          description:
              'Send unlimited push notifications to your members at no extra cost.',
          image:
              'M11.5 3H9.4c-2.24.0-3.36.0-4.216.436A4 4 0 003.436 5.184C3 6.04 3 7.16 3 9.4v5.2c0 2.24.0 3.36.436 4.216a4 4 0 001.748 1.748C6.04 21 7.16 21 9.4 21h5.2c2.24.0 3.36.0 4.216-.436a4 4 0 001.748-1.748C21 17.96 21 16.84 21 14.6v-2.1'),
      appFeatureItem(
          feature: 'Member Surveys',
          description:
              'Create and send surveys to your members to get feedback on your services.',
          image:
              'M7.5 16.039 4.688 19.5 3 18.346m4.5-8.077-2.812 3.462L3 12.577M7.5 4.5 4.688 7.962 3 6.808M11 17.5h10M11 12h10M11 6.5h10'),
      appFeatureItem(
          feature: 'Loan Calculator',
          description:
              'Allow members & non-members to calculate loan payments and interest rates on the go.',
          image:
              'M21 5h-3m-4.25-2v4M13 5H3m4 7H3m7.75-2v4M21 12H11m10 7h-3m-4.25-2v4M13 19H3'),
      appFeatureItem(
          feature: 'Loan Eligibility',
          description:
              'Let members check how much they are eligible for all without a credit check.',
          image: 'M19.5 20.5c-.475-9.333-14.525-9.333-15 0'),
      appFeatureItem(
          feature: 'Loan Applications',
          description:
              'Members can apply for loans directly from the app and track the status of their applications.',
          image:
              'm16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L10.582 16.07a4.5 4.5 0 0 1-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 0 1 1.13-1.897l8.932-8.931Zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0 1 15.75 21H5.25A2.25 2.25 0 0 1 3 18.75V8.25A2.25 2.25 0 0 1 5.25 6H10'),
      appFeatureItem(
          feature: 'Inbox Messaging',
          description:
              'Members can send and receive messages from your credit union directly from the app.',
          image:
              'M5 12a5 5 0 0 1 7 7m-7-7a4.993 4.993 0 0 0-2 4 5 5 0 0 0 .224 1.483c.272.88.076 1.86-.099 2.784a.468.468 0 0 0 .592.539c.848-.232 1.691-.43 2.557-.112A4.99 4.99 0 0 0 8 21a4.991 4.991 0 0 0 4-2m-7-7c0-4.685 2.875-9 8-9a8 8 0 0 1 7.532 10.7c-.476 1.326.037 3.102.337 4.568a.451.451 0 0 1-.584.526c-1.312-.41-2.852-.986-4.085-.466-1.334.562-2.736.672-4.2.672'),
      appFeatureItem(
          feature: 'Statements',
          description:
              'View a detailed history of your account transactions and balances.',
          image:
              'M8.25 6.75h12M8.25 12h12m-12 5.25h12M3.75 6.75h.007v.008H3.75V6.75Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0ZM3.75 12h.007v.008H3.75V12Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm-.375 5.25h.007v.008H3.75v-.008Zm.375 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Z'),
      appFeatureItem(
          feature: 'Blog Posts',
          description:
              'Create and manage blog posts to keep your members informed about your credit union.',
          image:
              'M12 7.5h1.5m-1.5 3h1.5m-7.5 3h7.5m-7.5 3h7.5m3-9h3.375c.621 0 1.125.504 1.125 1.125V18a2.25 2.25 0 0 1-2.25 2.25M16.5 7.5V18a2.25 2.25 0 0 0 2.25 2.25M16.5 7.5V4.875c0-.621-.504-1.125-1.125-1.125H4.125C3.504 3.75 3 4.254 3 4.875V18a2.25 2.25 0 0 0 2.25 2.25h13.5M6 7.5h3v3H6v-3Z'),
      appFeatureItem(
          feature: 'FAQs',
          description:
              'Create and manage a list of frequently asked questions for your members.',
          image: 'M12 21v-.5m0-3c0-5.1 5-3.825 5-8.924 0-6.768-10-6.768-10 0'),
      appFeatureItem(
          feature: 'Benefits Calculator',
          description:
              'Together with our partner,Inbest ©, we offer a benefits calculator to help your members calculate benefits they may eligible for.',
          image:
              'M7.75 3.5C5.127 3.5 3 5.76 3 8.547 3 14.125 12 20.5 12 20.5s9-6.375 9-11.953C21 5.094 18.873 3.5 16.25 3.5c-1.86 0-3.47 1.136-4.25 2.79-.78-1.654-2.39-2.79-4.25-2.79')
    ],
        classes:
            'grid grid-cols-2 mt-12 text-center gap-x-6 gap-y-12 lg:mt-12 lg:grid-cols-4 lg:gap-x-8 lg:gap-y-16');
  }

  Component appFeatureItem(
      {required String feature,
      required String description,
      required String image}) {
    return div([
      div([
        span([
          svg([
            path(
                strokeWidth: '1.5',
                d: image,
                [],
                styles: Styles.raw(
                    {'stroke-linecap': "round", 'stroke-linejoin': "round"}))
          ],
              viewBox: '0 0 24 24',
              classes: 'size-6 text-gray-600',
              styles: Styles.raw({'fill': 'none', 'stroke': 'currentColor'}))
        ],
            classes:
                'flex items-center justify-center mx-auto rounded-full size-12 bg-blue-100')
      ]),
      div([
        h3([text(feature)], classes: 'font-medium text-gray-900'),
        p([text(description)], classes: 'mt-2 text-sm text-gray-500')
      ], classes: 'mt-6')
    ]);
  }
}
