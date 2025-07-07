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
        // Row 1: Bespoke Design (Image), Biometric Login (Image), Push Notifications (Image)
        div([
          _bentoImageItem(
            feature: 'Bespoke Design',
            description:
                'Every app is built bespoke for each credit union, ensuring a smooth user journey from your website to the app.',
            imageUrl: // Placeholder, replace with actual
                'https://cuapps.co.uk/wp-content/uploads/2019/11/Copy-of-Chatbot-Devices-1024x701.png',
            bgColor: 'bg-curious-blue-50',
            // Ensure colSpan allows for 3 items in a row on lg
            colSpan: 'md:col-span-2 lg:col-span-1',
          ),
          _bentoImageItem(
            feature: 'Biometric Login',
            description:
                'Members can access their accounts using TouchID and FaceID. No more calls for forgotten member numbers!',
            imageUrl:
                'https://cuapps.co.uk/wp-content/uploads/2024/06/Apps-1000-x-1500-px.png',
            bgColor: 'bg-jacarta-50',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
          _bentoImageItem(
            feature: 'Push Notifications',
            description:
                'Send unlimited, free messages to members\' devices. Re-engage passive members and keep active members informed.',
            imageUrl:
                'https://cuapps.co.uk/wp-content/uploads/2024/10/Push-notifications.png',
            bgColor: 'bg-gulf-blue-50', // A distinct color from the theme
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6'),

        // Row 2: Member Surveys (Image), News Feed & Blog Posts (Image)
        div([
          _bentoImageItem(
            feature: 'Member Surveys',
            description:
                'Gather member feedback through the mobile app. Easily run surveys, competitions, and AGM voting.',
            imageUrl:
                'https://cuapps.co.uk/wp-content/uploads/2024/07/Apps-1000-x-1500-px.png',
            bgColor: 'bg-green-50',
            colSpan: 'md:col-span-1 lg:col-span-2', // Spans wider on larger screens
          ),
          _bentoImageItem(
            feature: 'News Feed & Blog Posts',
            description:
                'Keep members updated with everything happening via news feeds, blog posts, and dedicated areas.',
            imageUrl:
                'https://cuapps.co.uk/wp-content/uploads/2024/06/Apps-1000-x-1500-px-1.png',
            bgColor: 'bg-orange-50',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-6'),

        // Row 3: Loan Features (Icons)
        div([
          _bentoIconItem(
            feature: 'Loan Applications',
            description:
                'Allow members to directly apply for loans from the app and track their application status.',
            svgPath:
                'm16.862 4.487 1.687-1.688a1.875 1.875 0 1 1 2.652 2.652L10.582 16.07a4.5 4.5 0 0 1-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 0 1 1.13-1.897l8.932-8.931Zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0 1 15.75 21H5.25A2.25 2.25 0 0 1 3 18.75V8.25A2.25 2.25 0 0 1 5.25 6H10',
            bgColor: 'bg-purple-50',
            iconColor: 'text-purple-600',
            colSpan: 'md:col-span-2 lg:col-span-1',
          ),
          _bentoIconItem(
            feature: 'Loan Calculator',
            description:
                'Members and non-members can calculate monthly loan payments or savings contributions.',
            svgPath:
                'M21 5h-3m-4.25-2v4M13 5H3m4 7H3m7.75-2v4M21 12H11m10 7h-3m-4.25-2v4M13 19H3',
            bgColor: 'bg-amber-50',
            iconColor: 'text-amber-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
          _bentoIconItem(
            feature: 'Loan Eligibility',
            description:
                'Let members know how much they’re eligible for without a credit check.',
            svgPath: 'M9 12.75L11.25 15 15 9.75M21 12a9 9 0 11-18 0 9 9 0 0118 0z', // Check circle
            bgColor: 'bg-rose-50',
            iconColor: 'text-rose-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-6'),

        // Row 4: Account Management (Icons)
        div([
           _bentoIconItem(
            feature: 'Balance & Statements',
            description:
                'View balances for all accounts and detailed, searchable statements.',
            svgPath:
                'M3.75 3h16.5M3.75 7.5h16.5M3.75 12h16.5m-16.5 4.5h16.5M3.75 19.5h16.5', // List
            bgColor: 'bg-teal-50',
            iconColor: 'text-teal-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
          _bentoIconItem(
            feature: 'Pay In & Withdrawals',
            description:
                'Pay money into accounts or withdraw funds easily. Grow savings or pay off loans.',
            svgPath:
                'M7.5 21L3 16.5m0 0L7.5 12M3 16.5h13.5m0-13.5L21 7.5m0 0L16.5 12M21 7.5H7.5',
            bgColor: 'bg-curious-blue-100',
            iconColor: 'text-curious-blue-700',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
           _bentoIconItem(
            feature: 'Update Member Info',
            description:
                'Update personal details like address, phone, email, and manage PINs/passwords.',
            svgPath:
                'M15.75 6a3.75 3.75 0 1 1-7.5 0 3.75 3.75 0 0 1 7.5 0ZM4.501 20.118a7.5 7.5 0 0 1 14.998 0A17.933 17.933 0 0 1 12 21.75c-2.676 0-5.216-.584-7.499-1.632Z',
            bgColor: 'bg-violet-50',
            iconColor: 'text-violet-600',
            colSpan: 'md:col-span-2 lg:col-span-1',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-6'),

        // Row 5: Communication & More (Icons)
        div([
          _bentoIconItem(
            feature: 'Live Chat & Inbox',
            description:
                'Chat live with support and view documents, loan applications, and messages in the inbox.',
            svgPath:
                'M2.25 12.7614C2.25 7.19241 2.25 4.40794 4.01302 2.7391C5.77605 1.07026 8.69019 1.07026 14.5185 1.07026L15.75 1.07026C20.4019 1.07026 21.7279 1.07026 22.4727 1.81506C23.2175 2.55987 23.2175 3.88594 23.2175 6.53808V12.7614C23.2175 17.4132 23.2175 18.7392 22.4727 19.484C21.7279 20.2288 20.4019 20.2288 15.75 20.2288H14.5185C8.69019 20.2288 5.77605 20.2288 4.01302 19.484C2.25 17.8152 2.25 15.0307 2.25 9.46173V8.23839', // Chat bubble
            bgColor: 'bg-cyan-50',
            iconColor: 'text-cyan-600',
             colSpan: 'md:col-span-1 lg:col-span-1',
          ),
          _bentoIconItem(
            feature: 'Contact Info & FAQs',
            description:
                'Access clickable contact information and browse frequently asked questions.',
            svgPath: 'M11.25 11.25l.041-.02a.75.75 0 011.063.852l-.708 2.836a.75.75 0 001.063.853l.041-.021M21 12a9 9 0 11-18 0 9 9 0 0118 0zm-9-3.75h.008v.008H12V8.25z', // Question Mark Circle
            bgColor: 'bg-lime-50',
            iconColor: 'text-lime-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
           _bentoIconItem(
            feature: 'View Member Number',
            description:
                'Members can quickly view their member number without needing to log in.',
            svgPath: 'M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178zM15 12a3 3 0 11-6 0 3 3 0 016 0z', // Eye icon
            bgColor: 'bg-sky-50',
            iconColor: 'text-sky-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-6'),

        // Row 6: Additional Features (Icons)
        div([
           _bentoIconItem(
            feature: 'Update Passwords',
            description: 'Easily update all PINs and passwords for enhanced security.',
            svgPath: 'M15.75 5.25a3 3 0 013 3m3 0a6 6 0 01-7.029 5.912c-.563-.097-1.159.026-1.563.43L10.5 17.25H8.25v-2.25l1.09-1.09a1.5 1.5 0 01.43-1.563A6 6 0 0115.75 3m-1.5 6a1.5 1.5 0 11-3 0 1.5 1.5 0 013 0z', // Key icon
            bgColor: 'bg-jacarta-100',
            iconColor: 'text-jacarta-700',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
          _bentoIconItem(
            feature: 'Savings Goals',
            description:
                'Set and track savings goals to encourage members to grow their savings.',
            svgPath:
                'M2.25 18L9 11.25l4.306 4.307a11.95 11.95 0 015.814-5.519l2.74-1.22m0 0l-5.94-2.28m5.94 2.28l-2.28 5.941',
            bgColor: 'bg-emerald-50',
            iconColor: 'text-emerald-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
          _bentoIconItem(
            feature: 'Join Online',
            description:
                'Allow anyone to join the credit union directly from the app, expanding your member base.',
            svgPath: 'M19 7.5v3m0 0v3m0-3h3m-3 0h-3m-2.25-4.125a3.375 3.375 0 11-6.75 0 3.375 3.375 0 016.75 0zM4 19.235v-.11a6.375 6.375 0 0112.75 0v.109A12.318 12.318 0 0110.374 21c-2.331 0-4.512-.645-6.374-1.766z', // User plus
            bgColor: 'bg-pink-50',
            iconColor: 'text-pink-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-6'),

        // Row 7: More Features (Icons)
         div([
          _bentoIconItem(
            feature: 'Personalisation',
            description:
                'The mobile app is personalised for each member, offering a tailored experience.',
            svgPath: 'M17.982 18.725A7.488 7.488 0 0012 15.75a7.488 7.488 0 00-5.982 2.975m11.963 0a9 9 0 10-11.963 0m11.963 0A8.966 8.966 0 0112 21a8.966 8.966 0 01-5.982-2.275M15 9.75a3 3 0 11-6 0 3 3 0 016 0z', // User circle
            bgColor: 'bg-gulf-blue-100', // Theme color
            iconColor: 'text-gulf-blue-700',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
           _bentoIconItem(
            feature: 'Savings Calculator',
            description:
                'Members can calculate monthly payments needed to reach their savings goals.',
            svgPath: 'M12 6v6h4.5m4.5 0a9 9 0 11-18 0 9 9 0 0118 0z', // Calculator icon (simple version)
            bgColor: 'bg-yellow-50',
            iconColor: 'text-yellow-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
          _bentoIconItem(
            feature: 'Refer a Friend',
            description:
                'Grow your membership base by allowing existing members to easily refer their friends.',
            svgPath: 'M18 18.725A7.488 7.488 0 0012.5 15.75a7.488 7.488 0 00-5.5 2.975M15.5 9.75a3 3 0 11-6 0 3 3 0 016 0zM21 12a9 9 0 11-18 0 9 9 0 0118 0zM8.25 15.75a3.375 3.375 0 116.75 0 3.375 3.375 0 01-6.75 0zM16.5 15.75a3.375 3.375 0 110-6.75M16.5 15.75V9', // Users icon
            bgColor: 'bg-indigo-50',
            iconColor: 'text-indigo-600',
            colSpan: 'md:col-span-1 lg:col-span-1',
          ),
        ], classes: 'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mt-6'),


      ], classes: 'mt-12'),
    ], classes: 'container mx-auto px-4 sm:px-6 lg:px-8');
  }

  // Helper for bento items with a prominent image
  Component _bentoImageItem({
    required String feature,
    required String description,
    required String imageUrl,
    String bgColor = 'bg-curious-blue-50',
    String colSpan = 'md:col-span-1',
  }) {
    return div([
      div([ // Inner div for content & structure
        div(
          [
            img(
              src: imageUrl,
              alt: feature,
              // Adjusted image classes for better fit and containment
              classes:
                  'w-full h-40 md:h-48 object-contain object-center rounded-lg mb-4 transition-all duration-300 group-hover:scale-105',
            ),
          ],
          // Added padding and bg to image container, ensure it's a block or flex container
          classes: 'overflow-hidden rounded-lg mb-4 flex justify-center items-center p-2 $bgColor',
        ),
        h3(
          [text(feature)],
          classes:
              'text-lg md:text-xl font-semibold text-gray-900 group-hover:text-curious-blue-600', // Responsive text size
        ),
        p([
          text(description),
        ], classes: 'mt-2 text-sm text-gray-600 group-hover:text-gray-700 flex-grow'), // flex-grow to push arrow down
         div( // Hover arrow
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
              classes: 'size-5 text-curious-blue-600',
              styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
            ),
          ],
          classes:
              'self-end mt-auto opacity-0 transition-opacity duration-300 group-hover:opacity-100', // Aligned to bottom right
        ),
      ], classes: 'h-full flex flex-col justify-start p-6'), // Padding moved to this inner div
    ],
    // Base container styling
    classes:
        'group relative overflow-hidden rounded-xl transition-all duration-300 hover:shadow-lg $bgColor hover:bg-white hover:ring-1 hover:ring-gray-200 $colSpan flex flex-col'
    );
  }


  // Helper for bento items with an icon
  Component _bentoIconItem({
    required String feature,
    required String description,
    required String svgPath,
    String bgColor = 'bg-jacarta-50',
    String iconColor = 'text-jacarta-600',
    String colSpan = 'md:col-span-1',
  }) {
    String containerClasses =
        'group relative overflow-hidden rounded-xl transition-all duration-300 hover:shadow-lg';
    containerClasses +=
        ' $bgColor hover:bg-white hover:ring-1 hover:ring-gray-200 $colSpan flex flex-col';

    // Generate a lighter background for the icon circle from the iconColor
    // e.g., if iconColor is 'text-purple-600', bgIconCircle will be 'bg-purple-100'
    String bgIconCircle = iconColor.replaceFirst('text-', 'bg-') + '-100';
    // Fallback if "-100" is not a defined shade, use a generic light gray or the main bgColor
    // This part would ideally check against tailwind.config.js or have a predefined mapping.
    // For simplicity, we'll assume -100 exists or use a fallback.
    // A more robust solution would involve a map or utility to get appropriate shades.
    // Example: if iconColor is text-curious-blue-700, bgIconCircle becomes bg-curious-blue-100

    return div([
      div([ // Inner div for content and padding
        div([ // Icon container
          span(
            [
              svg(
                [
                  path(
                    strokeWidth: '1.5',
                    d: svgPath,
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
                classes: 'size-7 md:size-8 $iconColor', // Responsive icon size
                styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
              ),
            ],
            classes: 'flex items-center justify-center rounded-full size-12 md:size-16 $bgIconCircle $iconColor', // Responsive icon bg size
          ),
        ], classes: 'mb-4 md:mb-5 flex justify-start items-center'), // Responsive margin

        h3(
          [text(feature)],
          classes: 'text-lg md:text-xl font-semibold text-gray-900 group-hover:text-curious-blue-600', // Responsive text
        ),
        p([
          text(description),
        ], classes: 'mt-2 text-sm text-gray-600 group-hover:text-gray-700 flex-grow'), // flex-grow

        div( // Hover arrow
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
              classes: 'size-5 $iconColor',
              styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
            ),
          ],
          classes: 'self-end mt-auto opacity-0 transition-opacity duration-300 group-hover:opacity-100', // Aligned to bottom right
        ),
      ], classes: 'h-full flex flex-col justify-start p-6'), // Padding for content
    ], classes: containerClasses);
  }
}
