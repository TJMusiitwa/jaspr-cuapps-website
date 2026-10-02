import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// One client's testimonial, verbatim as supplied by the credit union.
class _Voice {
  const _Voice({
    required this.client,
    required this.logo,
    required this.logoSize,
    required this.quote,
    required this.person,
    required this.role,
  });

  final String client;

  /// File name under `/images/clients/`, without extension.
  final String logo;
  final (int width, int height) logoSize;

  /// Paragraphs of the testimonial, verbatim.
  final List<String> quote;
  final String person;
  final String role;
}

const _manchester = _Voice(
  client: 'Manchester Credit Union',
  logo: 'macu',
  logoSize: (321, 59),
  person: 'Ryan Young',
  role: 'CFO',
  quote: [
    'We introduced the mobile app to strengthen our digital offering during COVID, and CU Apps’ relationship with our back-office providers made the transition seamless. It has significantly improved the mobile experience for our members.',
    'Adoption has been excellent, with 78% of our members registered and over 12,000 active users each month. Member feedback has been incredibly positive, reflected in our 4.9★ app store rating from more than 1,600 reviews.',
    'The app has had a clear impact on both engagement and retention. We now receive over 1,000 responses per month through in-app surveys — something that was minimal before. Features like push notifications and the in-app survey window have played a key role in this.',
    'The app has also changed how members interact with us, with many members choosing to message us directly through the app than call. This has created a more secure, centralised way to support our members, while also reducing pressure on our team.',
    'From an operational perspective, the app is easy to manage. The CRM is intuitive, and the self-serve functionality allows us to make updates quickly whenever needed.',
  ],
);

/// Figures Manchester Credit Union gives in its testimonial above.
const _manchesterFigures = [
  ('78%', 'of members registered'),
  ('12,000+', 'active users each month'),
  ('4.9★', 'app store rating, 1,600+ reviews'),
  ('1,000+', 'in-app survey responses a month'),
];

const _thistle = _Voice(
  client: 'Thistle Credit Union',
  logo: 'thistle',
  logoSize: (499, 194),
  person: 'Aaron Kerr',
  role: 'CEO',
  quote: [
    'Digital transformation, brand identity & actionable analytics are not merely just buzzwords that are used to sound flashy and interesting, partnering with CU Apps has brought Thistle Credit Union into digital relevance.',
    'Introducing the mobile app has drastically changed how we operate, with a 32% decrease in the volume of calls and enquiries, we are better placed to serve without any additional resources. It has allowed us to focus on our strategic goal of providing that open relationship to the member, with communication, convenience, and ease of use at the forefront. I would wholeheartedly recommend CU Apps to anyone looking to take their Credit Union to the next stage.',
  ],
);

const _northern = _Voice(
  client: 'Northern Community Bank',
  logo: 'ncb',
  logoSize: (480, 145),
  person: 'Tia Warbrick',
  role: 'Chief Operating Officer',
  quote: [
    'Collaborating with CU Apps to enhance our digital services has been a truly refreshing experience.',
    'The mobile app for our credit union not only competes but surpasses other financial banking apps. The feedback we have received since the app’s launch has been tremendously positive. Our account holders now enjoy unrestricted access to their accounts and feel more connected to their credit union. This is extremely important to us as a community credit union that services lots of individuals who are financially excluded from mainstream banks.',
    'Thank you CU Apps - your app and chatbot offering has elevated our credit union significantly.',
  ],
);

const _enterprise = _Voice(
  client: 'Enterprise Credit Union',
  logo: 'ecu',
  logoSize: (463, 133),
  person: 'Sam Brown',
  role: 'Marketing & Communications Officer',
  quote: [
    'I’ve had the pleasure of working closely with the CU Apps team for nearly four years now, and I can’t speak highly enough of the experience. I can confidently say that they’re not just experts in their field but also incredibly friendly and approachable. The level of service they provide is truly second to none.',
    'Whenever we’ve needed support—whether it’s making updates in line with product launches or handling last-minute changes, they’ve always been right there, ready to help. Their dedication was especially evident when they assisted us in seamlessly live streaming our AGM last year, ensuring a smooth and successful event.',
    'The entire experience with CU Apps has been nothing short of outstanding, I can’t fault them in any way.',
  ],
);

const _londonPlus = _Voice(
  client: 'London Plus Credit Union',
  logo: 'lopcu',
  logoSize: (800, 400),
  person: 'Cheryl Gale',
  role: 'Chief Executive',
  quote: [
    'We transitioned our members mobile app across to CU Apps. From the very start the team at CU Apps have worked tirelessly to support us in ensuring our members journey is as smooth and as clear as possible.',
    'While CU Apps acts as a conduit between the platforms we use to provide our members services, they are the glue that holds it all together. They are very productive in working with other suppliers to offer a seamless service that aligns with our expectations.',
    'We have already have amazing feedback on ease of use and member experience and we have not even explored the full functionality available. We are looking forward to bringing even more intuitive and interactive ways for our members to use our service through CU Apps.',
  ],
);

const _copperPot = _Voice(
  client: 'No1 CopperPot Credit Union',
  logo: 'n1cpcu',
  logoSize: (1000, 300),
  person: 'Jo Moscrop',
  role: 'Chief Business Officer',
  quote: [
    'The app from CU Apps has been a game changer for how we interact with our members and how they manage their account. It’s simple, easy to use, quick and rivals some of the other banking apps. We’ve got thousands of great reviews on the app store too which is brilliant.',
  ],
);

const _scottishPolice = _Voice(
  client: 'Scottish Police Credit Union',
  logo: 'spcu',
  logoSize: (600, 217),
  person: 'George Nedley',
  role: 'CEO',
  quote: [
    'Working with CU Apps was a fantastic experience. Their attention to detail and commitment to delivering what we needed was exceptional. I would have no hesitation in recommending them to any potential clients.',
  ],
);

const _hoot = _Voice(
  client: 'Hoot Credit Union',
  logo: 'hocu',
  logoSize: (1194, 676),
  person: 'Chris Canham',
  role: 'CEO',
  quote: [
    'Our members love the app and the ability to access their account so easily. The app is an essential tool for us in our member communication, and enables us to offer the kind of services they want. CUApps offer a sterling service and we work with them regularly to improve our member experience',
  ],
);

class CaseStudies extends StatelessComponent {
  const CaseStudies({super.key});

  @override
  Component build(BuildContext context) {
    return main_([
      section(classes: 'page-hero stories-hero', [
        div(classes: 'site-container', [
          p(classes: 'eyebrow', [Component.text('Client stories')]),
          h1(classes: 'page-title', [
            Component.text('The work is measured in member experience.'),
          ]),
          p(classes: 'hero-lede', [
            Component.text(
              'Credit unions come to us with different challenges. Here is what they say changed after working together.',
            ),
          ]),
          div(classes: 'hero-actions', [
            quietLink('Read the CU Chat client stories', '/cu-chat/stories'),
          ]),
        ]),
      ]),
      _feature(
        _manchester,
        'Members signed up, and kept using it.',
        _manchesterFigures,
      ),
      section(classes: 'site-section story-list-section', [
        div(classes: 'site-container', [
          sectionIntro(
            eyebrow: 'More client voices',
            title: 'Partnerships that keep moving.',
          ),
          div(classes: 'story-list', [_row(_northern), _row(_enterprise)]),
        ]),
      ]),
      section(classes: 'story-pull-section', [
        div(classes: 'site-container story-pull', [
          _logo(_copperPot, height: 60),
          _quote(_copperPot),
        ]),
      ]),
      _feature(_thistle, 'More room for the conversations that matter.', [
        ('32%', 'fewer calls and enquiries'),
      ], tinted: true),
      section(classes: 'site-section story-list-section story-list-plain', [
        div(classes: 'site-container', [
          div(classes: 'story-list', [_row(_londonPlus)]),
        ]),
      ]),
      section(classes: 'story-brief-section', [
        div(classes: 'site-container', [
          h2(classes: 'story-brief-title', [
            Component.text('And in a few words.'),
          ]),
          div(classes: 'story-briefs', [
            _brief(_scottishPolice),
            _brief(_hoot),
          ]),
        ]),
      ]),
      closingCta(
        eyebrow: 'Your next chapter',
        title: 'Let’s talk about your members.',
        body:
            'Bring your goals and questions. We will bring sector experience and a clear starting point.',
      ),
    ]);
  }

  /// The client's logo. The client is always named in text beside it, so the
  /// image is decorative.
  Component _logo(_Voice voice, {required int height}) {
    final (w, h) = voice.logoSize;
    return img(
      src: '/images/clients/${voice.logo}.webp',
      alt: '',
      width: (w * height / h).round(),
      height: height,
      loading: MediaLoading.lazy,
      classes: 'voice-logo',
    );
  }

  Component _quote(_Voice voice) {
    final last = voice.quote.length - 1;
    return blockquote(classes: 'voice-quote', [
      for (final (index, paragraph) in voice.quote.indexed)
        p([
          Component.text(
            '${index == 0 ? '“' : ''}$paragraph${index == last ? '”' : ''}',
          ),
        ]),
      footer([
        strong([Component.text(voice.person)]),
        Component.text(', ${voice.role} at ${voice.client}'),
      ]),
    ]);
  }

  /// A lead story: logo and figures beside a headline and the full quote.
  Component _feature(
    _Voice voice,
    String headline,
    List<(String, String)> figures, {
    bool tinted = false,
  }) {
    return section(
      classes: 'site-section${tinted ? ' story-feature-alt' : ''}',
      [
        div(classes: 'site-container featured-story', [
          div(classes: 'story-mark', [
            _logo(voice, height: 56),
            p(classes: 'voice-client', [Component.text(voice.client)]),
            dl(classes: 'story-figures', [
              for (final (figure, label) in figures)
                div([
                  dt([Component.text(figure)]),
                  dd([Component.text(label)]),
                ]),
            ]),
          ]),
          div(classes: 'story-body', [
            h2([Component.text(headline)]),
            _quote(voice),
          ]),
        ]),
      ],
    );
  }

  Component _row(_Voice voice) {
    return article(classes: 'story-row', [
      div(classes: 'story-row-client', [
        _logo(voice, height: 60),
        h3([Component.text(voice.client)]),
      ]),
      _quote(voice),
    ]);
  }

  Component _brief(_Voice voice) {
    return article(classes: 'story-brief', [
      _logo(voice, height: 44),
      _quote(voice),
    ]);
  }
}
