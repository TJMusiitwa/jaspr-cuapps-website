import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class AppFeatures extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return section(classes: 'bg-white', [
      div(classes: 'max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 lg:py-24', [
        AppFeaturesHeader(),
        AppFeaturesGrid(),
        _buildBottomCta(),
      ]),
    ]);
  }

  Component _buildBottomCta() {
    return div([
      blockquote(
        classes:
            'text-center mt-20 mb-12 text-xl md:text-2xl font-medium text-[#132139]/80 max-w-4xl mx-auto leading-relaxed',
        [
          Component.text(
            'Our app is not a one-size-fits-all solution. We work with you to understand your credit union’s unique needs and goals to create a custom mobile app that meets your requirements and exceeds your members’ expectations.',
          ),
        ],
      ),
      div(classes: 'pb-10', [
        div(classes: 'flex justify-center', [
          div(
            classes:
                'relative inline-flex items-center gap-x-2 rounded-full px-8 py-3 text-sm md:text-base font-medium text-[#132139]/70 ring-1 ring-[#132139]/10 hover:ring-[#132139]/20 bg-white shadow-sm transition-all hover:shadow-md',
            [
              span(classes: 'pr-1', [
                Component.text('Ready For a Free Evaluation and Demo'),
              ]),
              a(
                classes:
                    'font-bold text-[#259CE2] hover:text-[#1c86c4] transition-colors whitespace-nowrap',
                target: Target.self,
                href: '/free-demo',
                [
                  span(classes: 'absolute inset-0', []),
                  Component.text('Contact us'),
                  span(classes: 'ml-1.5', [RawText('&rarr;')]),
                ],
              ),
            ],
          ),
        ]),
      ]),
    ]);
  }
}

class AppFeaturesHeader extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div([
      h2(
        classes:
            'block tracking-tight text-[#132139] mb-6 text-3xl sm:text-4xl lg:text-5xl font-bold text-center',
        [
          span(classes: 'text-[#259CE2]', [Component.text('Credit Union ')]),
          Component.text('Mobile App Features'),
        ],
      ),
      p(
        classes:
            'text-center mt-4 text-lg md:text-xl font-normal text-[#132139]/60 max-w-3xl mx-auto leading-relaxed mb-16',
        [
          Component.text(
            'Packed with powerful features to help your credit union grow and save costs. We deliver premium mobile experiences that integrate seamlessly with your existing systems.',
          ),
        ],
      ),
    ]);
  }
}

/// Bento cell tones. One radius system: cells `rounded-3xl`, inner
/// elements `rounded-xl`.
enum _Tone { navy, blue, lilac, wash, white }

class AppFeaturesGrid extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div(
      classes:
          'grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-4 lg:auto-rows-fr',
      [
        // Row 1: anchor + image + blue
        _bentoCard(
          title: 'Bespoke Design',
          description:
              'Built specifically for your brand. We ensure a seamless visual journey from your website to your app, maintaining total brand consistency.',
          iconPath:
              'M9.53 16.122a3 3 0 0 0-5.78 1.128a2.25 2.25 0 0 1-2.4 2.245a4.5 4.5 0 0 0 8.4-2.245c0-.399-.078-.78-.22-1.128Zm0 0a15.998 15.998 0 0 0 3.388-1.62m-5.043-.025a15.994 15.994 0 0 1 1.622-3.395m3.42 3.42a15.995 15.995 0 0 0 4.764-4.648l3.876-5.814a1.151 1.151 0 0 0-1.597-1.597L14.146 6.32a15.996 15.996 0 0 0-4.649 4.763m3.42 3.42a6.776 6.776 0 0 0-3.42-3.42',
          tone: _Tone.navy,
          span: 'md:col-span-2 lg:col-span-2',
        ),
        _bentoCard(
          title: 'Biometric Login',
          description: 'Instant, secure access using FaceID and TouchID.',
          iconPath:
              'M7.864 4.243A7.5 7.5 0 0 1 19.5 10.5c0 2.92-.556 5.709-1.568 8.268M5.742 6.364A7.465 7.465 0 0 0 4.5 10.5a7.464 7.464 0 0 1-1.15 3.993m1.989 3.559A11.209 11.209 0 0 0 8.25 10.5a3.75 3.75 0 1 1 7.5 0c0 .527-.021 1.049-.064 1.565M12 10.5a14.94 14.94 0 0 1-3.6 9.75m6.633-4.596a18.666 18.666 0 0 1-2.485 5.33',
          tone: _Tone.white,
          span: 'md:col-span-1 lg:col-span-1',
        ),
        _bentoCard(
          title: 'Push Notifications',
          description: 'Unlimited free messages to re-engage members.',
          iconPath:
              'M14.857 17.082a23.848 23.848 0 0 0 5.454-1.31A8.967 8.967 0 0 1 18 9.75V9A6 6 0 0 0 6 9v.75a8.967 8.967 0 0 1-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 0 1-5.714 0m5.714 0a3 3 0 1 1-5.714 0',
          tone: _Tone.blue,
          span: 'md:col-span-1 lg:col-span-1',
        ),

        // Row 2: quiet quartet with one lilac
        _bentoCard(
          title: 'Member Surveys',
          description:
              'Gather feedback, run AGMs, and host competitions directly in-app.',
          iconPath:
              'M3.75 12h16.5m-16.5 3.75h16.5M3.75 19.5h16.5M5.625 4.5h12.75a1.875 1.875 0 0 1 0 3.75H5.625a1.875 1.875 0 0 1 0-3.75Z',
          tone: _Tone.white,
          span: 'md:col-span-1 lg:col-span-1',
        ),
        _bentoCard(
          title: 'News & Updates',
          description:
              'Integrated news feeds and blog posts keep your members informed.',
          iconPath:
              'M12 7.5h1.5m-1.5 3h1.5m-7.5 3h7.5m-7.5 3h7.5m3-9h3.375c.621 0 1.125.504 1.125 1.125V18a2.25 2.25 0 0 1-2.25 2.25M16.5 7.5V18a2.25 2.25 0 0 0 2.25 2.25M16.5 7.5V4.875c0-.621-.504-1.125-1.125-1.125H4.125C3.504 3.75 3 4.254 3 4.875V18a2.25 2.25 0 0 0 2.25 2.25h13.5M6 7.5h3v3H6v-3Z',
          tone: _Tone.white,
          span: 'md:col-span-1 lg:col-span-1',
        ),
        _bentoCard(
          title: 'Loan Applications',
          description: 'Apply for loans and track status seamlessly.',
          iconPath:
              'M19.5 14.25v-2.625a3.375 3.375 0 0 0-3.375-3.375h-1.5A1.125 1.125 0 0 1 13.5 7.125v-1.5a3.375 3.375 0 0 0-3.375-3.375H8.25m0 12.75h7.5m-7.5 3H12M10.5 2.25H5.625c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125V11.25a9 9 0 0 0-9-9Z',
          tone: _Tone.lilac,
          span: 'md:col-span-1 lg:col-span-1',
        ),
        _bentoCard(
          title: 'Personalised',
          description: 'Tailored experience for every member.',
          iconPath:
              'M9.813 15.904 9 18.75l-.813-2.846a4.5 4.5 0 0 0-3.09-3.09L2.25 12l2.846-.813a4.5 4.5 0 0 0 3.09-3.09L9 5.25l.813 2.846a4.5 4.5 0 0 0 3.09 3.09L15.75 12l-2.846.813a4.5 4.5 0 0 0-3.09 3.09ZM18.259 8.715 18 9.75l-.259-1.035a3.375 3.375 0 0 0-2.455-2.456L14.25 6l1.036-.259a3.375 3.375 0 0 0 2.455-2.456L18 2.25l.259 1.035a3.375 3.375 0 0 0 2.456 2.456L21.75 6l-1.035.259a3.375 3.375 0 0 0-2.456 2.456ZM16.894 20.567 16.5 21.75l-.394-1.183a2.25 2.25 0 0 0-1.423-1.423L13.5 18.75l1.183-.394a2.25 2.25 0 0 0 1.423-1.423l.394-1.183.394 1.183a2.25 2.25 0 0 0 1.423 1.423l1.183.394-1.183.394a2.25 2.25 0 0 0-1.423 1.423Z',
          tone: _Tone.white,
          span: 'md:col-span-1 lg:col-span-1',
        ),

        // Row 3: financial tools group + two quiet cells
        _financialTools(),
        _bentoCard(
          title: 'Full Account Control',
          description: 'Manage every aspect of your membership.',
          iconPath:
              'M10.5 6h9.75M10.5 6a1.5 1.5 0 1 1-3 0m3 0a1.5 1.5 0 1 0-3 0M3.75 6H7.5m3 12h9.75m-9.75 0a1.5 1.5 0 0 1-3 0m3 0a1.5 1.5 0 0 0-3 0m-3.75 0H7.5m9-6h3.75m-3.75 0a1.5 1.5 0 0 1-3 0m3 0a1.5 1.5 0 0 0-3 0m-9.75 0h9.75',
          tone: _Tone.white,
          span: 'md:col-span-1 lg:col-span-1',
        ),
        _bentoCard(
          title: 'Pay In & Withdraw',
          description: 'Easy fund transfers.',
          iconPath:
              'M7.5 21L3 16.5m0 0L7.5 12M3 16.5h13.5m0-13.5L21 7.5m0 0L16.5 12M21 7.5H7.5',
          tone: _Tone.white,
          span: 'md:col-span-1 lg:col-span-1',
        ),

        // Row 4: two quiet cells + image anchor
        _bentoCard(
          title: 'Statements',
          description: 'Searchable transaction history.',
          iconPath:
              'M19.5 14.25v-2.625a3.375 3.375 0 0 0-3.375-3.375h-1.5A1.125 1.125 0 0 1 13.5 7.125v-1.5a3.375 3.375 0 0 0-3.375-3.375H8.25m2.25 0H5.625c-.621 0-1.125.504-1.125 1.125v17.25c0 .621.504 1.125 1.125 1.125h12.75c.621 0 1.125-.504 1.125-1.125V11.25a9 9 0 0 0-9-9Z',
          tone: _Tone.white,
          span: 'md:col-span-1 lg:col-span-1',
        ),
        _bentoCard(
          title: 'Member Info',
          description: 'Member number & details.',
          iconPath:
              'M15 9h3.75M15 12h3.75M15 15h3.75M4.5 19.5h15a2.25 2.25 0 0 0 2.25-2.25V6.75A2.25 2.25 0 0 0 19.5 4.5h-15a2.25 2.25 0 0 0-2.25 2.25v10.5A2.25 2.25 0 0 0 4.5 19.5Zm6-10.125a1.875 1.875 0 1 1-3.75 0 1.875 1.875 0 0 1 3.75 0Zm1.294 6.336a6.721 6.721 0 0 1-3.17.789 6.721 6.721 0 0 1-3.168-.789 3.376 3.376 0 0 1 6.338 0Z',
          tone: _Tone.white,
          span: 'md:col-span-1 lg:col-span-1',
        ),
        _bentoCard(
          title: 'Support & FAQs',
          description: 'Live chat and answers to common questions.',
          iconPath:
              'M8.625 12a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H8.25m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0H12.375m4.125 0a.375.375 0 1 1-.75 0 .375.375 0 0 1 .75 0Zm0 0h-.375M21 12c0 4.556-4.03 8.25-9 8.25a9.764 9.764 0 0 1-2.555-.337A5.972 5.972 0 0 1 5.41 20.97a5.969 5.969 0 0 1-.474-.065 4.48 4.48 0 0 0 .978-2.025c.09-.457-.133-.901-.467-1.226C3.93 16.178 3 14.189 3 12c0-4.556 4.03-8.25 9-8.25s9 3.694 9 8.25Z',
          tone: _Tone.navy,
          span: 'md:col-span-2 lg:col-span-2',
        ),

        // Row 5: two wide closers
        _bentoCard(
          title: 'Security',
          description: 'Update PINs and Passwords anytime.',
          iconPath:
              'M16.5 10.5V6.75a4.5 4.5 0 1 0-9 0v3.75m-.75 11.25h10.5a2.25 2.25 0 0 0 2.25-2.25v-6.75a2.25 2.25 0 0 0-2.25-2.25H6.75a2.25 2.25 0 0 0-2.25 2.25v6.75a2.25 2.25 0 0 0 2.25 2.25Z',
          tone: _Tone.wash,
          span: 'md:col-span-1 lg:col-span-2',
        ),
        _bentoCard(
          title: 'Join & Refer',
          description: 'Onboard new members digitally.',
          iconPath:
              'M18 18.725A7.488 7.488 0 0 0 12 15.75a7.488 7.488 0 0 0-5.982 2.975m11.963 0a9 9 0 1 0-11.963 0m11.963 0A8.966 8.966 0 0 1 12 21a8.966 8.966 0 0 1-5.982-2.275M15 9.75a3 3 0 1 1-6 0 3 3 0 0 1 6 0Z',
          tone: _Tone.blue,
          span: 'md:col-span-1 lg:col-span-2',
        ),
      ],
    );
  }

  // --- Helper Methods ---

  Component _bentoCard({
    required String title,
    required String description,
    required String iconPath,
    required _Tone tone,
    required String span,
  }) {
    final (bg, text, iconColor) = switch (tone) {
      _Tone.navy => ('bg-[#132139]', 'text-white', 'text-[#C6E6FF]'),
      _Tone.blue => ('bg-[#259CE2]', 'text-white', 'text-white'),
      _Tone.lilac => ('bg-[#AA91D8]/30', 'text-[#281254]', 'text-[#433067]'),
      _Tone.wash => ('bg-[#C6E6FF]/40', 'text-[#132139]', 'text-[#259CE2]'),
      _Tone.white => (
        'bg-white border border-[#132139]/10',
        'text-[#132139]',
        'text-[#259CE2]',
      ),
    };

    return div(
      classes:
          'card overflow-hidden $bg $span transition-transform duration-300 hover:-translate-y-1 hover:shadow-lg hover:shadow-[#132139]/10',
      [
        div(classes: 'card-body p-6 md:p-8', [
          _icon(iconPath, 'w-8 h-8 $iconColor'),
          h3(classes: 'card-title mt-4 text-xl font-bold $text', [
            Component.text(title),
          ]),
          p(classes: 'mt-2 text-sm font-medium $text opacity-75 leading-snug', [
            Component.text(description),
          ]),
        ]),
      ],
    );
  }

  Component _financialTools() {
    return div(
      classes:
          'md:col-span-2 lg:col-span-2 card rounded-box p-6 md:p-8 bg-[#C6E6FF]/40',
      [
        h3(classes: 'text-2xl font-bold mb-6 text-[#132139]', [
          Component.text('Financial Tools'),
        ]),
        div(classes: 'grid grid-cols-1 sm:grid-cols-2 gap-4', [
          _miniFeature(
            'Loan Calculator',
            'Calculate payments instantly.',
            'M15.75 15.75V18m-7.5-6.75h.008v.008H8.25v-.008Zm0 2.25h.008v.008H8.25V13.5Zm0 2.25h.008v.008H8.25v-.008Zm0 2.25h.008v.008H8.25V18Zm2.498-6.75h.007v.008h-.007v-.008Zm0 2.25h.007v.008h-.007V13.5Zm0 2.25h.007v.008h-.007v-.008Zm0 2.25h.007v.008h-.007V18Zm2.504-6.75h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V13.5Zm0 2.25h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V18Zm2.498-6.75h.008v.008h-.008v-.008Zm0 2.25h.008v.008h-.008V13.5ZM8.25 6h7.5v2.25h-7.5V6ZM12 2.25c-1.892 0-3.758.11-5.593.322C5.307 2.7 4.5 3.65 4.5 4.757V19.5a2.25 2.25 0 0 0 2.25 2.25h10.5a2.25 2.25 0 0 0 2.25-2.25V4.757c0-1.108-.806-2.057-1.907-2.185A48.507 48.507 0 0 0 12 2.25Z',
          ),
          _miniFeature(
            'Eligibility Check',
            'Check eligibility without credit imprint.',
            'M9 12.75 11.25 15 15 9.75M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z',
          ),
          _miniFeature(
            'Savings Calculator',
            'Plan your savings growth.',
            'M21 12a2.25 2.25 0 0 0-2.25-2.25H15a3 3 0 1 1-6 0H5.25A2.25 2.25 0 0 0 3 12m18 0v6a2.25 2.25 0 0 1-2.25 2.25H5.25A2.25 2.25 0 0 1 3 18v-6m18 0V9M3 12V9a2.25 2.25 0 0 1 2.25-2.25h13.5A2.25 2.25 0 0 1 21 9v3',
          ),
          _miniFeature(
            'Savings Goals',
            'Set targets and track progress.',
            'M3 13.125C3 12.504 3.504 12 4.125 12h2.25c.621 0 1.125.504 1.125 1.125v6.75C7.5 20.496 6.996 21 6.375 21h-2.25A1.125 1.125 0 0 1 3 19.875v-6.75ZM9.75 8.625c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125v11.25c0 .621-.504 1.125-1.125 1.125h-2.25a1.125 1.125 0 0 1-1.125-1.125V8.625ZM16.5 4.125c0-.621.504-1.125 1.125-1.125h2.25C20.496 3 21 3.504 21 4.125v15.75c0 .621-.504 1.125-1.125 1.125h-2.25a1.125 1.125 0 0 1-1.125-1.125V4.125Z',
          ),
        ]),
      ],
    );
  }

  Component _miniFeature(String title, String subtitle, String iconPath) {
    return div(
      classes: 'card p-4 rounded-xl bg-white border border-[#132139]/10',
      [
        div(
          classes:
              'w-8 h-8 rounded-xl bg-[#259CE2] flex items-center justify-center mb-3',
          [_icon(iconPath, 'w-5 h-5 text-white')],
        ),
        h4(classes: 'font-semibold text-[#132139] text-sm', [
          Component.text(title),
        ]),
        p(classes: 'text-xs text-[#132139]/60 mt-1', [
          Component.text(subtitle),
        ]),
      ],
    );
  }

  Component _icon(String d, String classes) {
    return svg(
      viewBox: '0 0 24 24',
      classes: classes,
      styles: Styles(raw: {'fill': 'none', 'stroke': 'currentColor'}),
      [
        path(
          d: d,
          strokeWidth: '1.5',
          styles: Styles(
            raw: {'stroke-linecap': 'round', 'stroke-linejoin': 'round'},
          ),
          [],
        ),
      ],
    );
  }
}
