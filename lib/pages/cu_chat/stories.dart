import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// A client logo with its intrinsic size.
typedef _Logo = (String src, int width, int height);

/// Art for a chatbot: a character, or the bot shown in place on a device.
typedef _Art = (String src, int width, int height, String alt, bool device);

/// One client's chatbot and what their team says about it, verbatim from
/// the CU Chat portfolio.
class _Story {
  const _Story({
    required this.id,
    required this.bot,
    required this.client,
    required this.logo,
    required this.quote,
    required this.person,
    this.note,
    this.art,
    this.caseStudy,
    this.unnamedLabel,
  });

  final String id;

  /// The chatbot's name, or null where the client hasn't named it.
  final String? bot;
  final String client;

  /// Extra line under the client name, such as "Ireland's first credit union".
  final String? note;
  final _Logo logo;
  final _Art? art;

  /// Paragraphs of the testimonial, verbatim.
  final List<String> quote;

  /// Name and role, as credited on the portfolio.
  final String person;

  /// Case-study PDF: path and size label.
  final (String href, String size)? caseStudy;

  /// How to refer to a chatbot the client hasn't named.
  final String? unnamedLabel;

  String get label => bot ?? unnamedLabel ?? '$client’s chatbot';
}

const _heritage = _Story(
  id: 'heritage',
  bot: 'Harry',
  client: 'Heritage Credit Union',
  logo: ('/images/clients/heritage.webp', 413, 138),
  caseStudy: ('/case-studies/heritage-case-study.pdf', '0.9 MB'),
  person:
      'Lynsey McCluskey, Member Services Team Leader at Heritage Credit Union',
  quote: [
    'Since launching our AI chatbot, Harry, we’ve seen a noticeable improvement in how members access information. Members can now get answers to many common questions immediately without having to wait for office hours or contact a member of staff. We’ve also noticed that members appreciate the convenience of receiving immediate responses, particularly in the evenings and at weekends. Having support available 24/7 has enhanced the overall member experience.',
    'Rather than replacing human interaction, Harry complements it by handling routine questions and directing members to the right information. This has helped reduce the number of routine enquiries coming through to the team, allowing staff to focus on more complex and meaningful interactions with members.',
    'One of the most surprising benefits has been the insight Harry provides into what members are actually looking for. The weekly Insight Emails have been particularly useful because they provide a simple summary of key activity and trends without requiring us to actively search through reports. These insights have helped us identify opportunities to improve website content and proactively answer member questions before they become enquiries.',
    'If another credit union was considering introducing a chatbot, we would encourage them to explore the opportunity. Members increasingly expect instant access to information, and Harry provides a practical way to meet those expectations while supporting staff efficiency.',
  ],
);

const _northern = _Story(
  id: 'northern-community-bank',
  bot: 'Penny',
  client: 'Northern Community Bank',
  logo: ('/images/clients/ncb.webp', 480, 145),
  art: (
    '/images/cu-chat-stories/penny.webp',
    480,
    480,
    'Penny, Northern Community Bank’s chatbot character',
    false,
  ),
  caseStudy: ('/case-studies/northern-community-bank-case-study.pdf', '0.8 MB'),
  person: 'Tia Warbrick, Chief Operating Officer at Northern Community Bank',
  quote: [
    'Collaborating with CU Apps to enhance our digital services has been a truly refreshing experience.',
    'Implementing our AI chatbot, Penny, ahead of our busiest time of year definitely relieved some of the pressure on our staff members. We got lots of enquiries and Penny was able to provide details about when members could withdraw and start their Christmas shopping, all while freeing up staff to focus on other priorities.',
    'Members are responding really well to communicating with Penny, and we are enjoying using the insights we get from her on a weekly basis to shape future developments or awareness email campaigns.',
  ],
);

const _fairFinance = _Story(
  id: 'fair-finance',
  bot: 'Faira',
  client: 'Fair Finance',
  logo: ('/images/clients/fair-finance.webp', 413, 138),
  caseStudy: ('/case-studies/fair-finance-case-study.pdf', '0.8 MB'),
  person: 'Nick Olosunde, Head of Marketing & Operations at Fair Finance',
  quote: [
    'For us, AI isn’t simply about efficiency. It’s about using technology to make financial services easier to access, easier to understand and more responsive, while giving our staff more time to support the customers who need them the most.',
    'Our chatbot, Faira, handles the straightforward questions, so our people can focus on the conversations where people matter most.',
    'Faira wasn’t introduced to replace our customer service team. Her role is to handle the straightforward questions that can be answered quickly and digitally, freeing our people to concentrate on conversations where human support makes the greatest difference.',
    'This is particularly important when supporting customers experiencing financial difficulty or vulnerability. It means we can use automation where it improves the experience while keeping people at the heart of the interactions that need them.',
  ],
);

const _features = [_heritage, _northern, _fairFinance];

const _roll = <_Story>[
  _Story(
    id: 'manchester',
    bot: 'Honey',
    client: 'Manchester Credit Union',
    logo: ('/images/clients/macu.webp', 321, 59),
    art: (
      '/images/cu-chat-stories/honey.webp',
      480,
      480,
      'Honey, Manchester Credit Union’s bee chatbot character',
      false,
    ),
    person: 'Ryan Young, CFO at Manchester Credit Union',
    quote: [
      'We introduced the AI chatbot to handle routine queries from both existing and potential members, particularly around our services.',
      'The chatbot, Honey, manages around 1,000 conversations per month, which is effectively the equivalent of an additional full-time team member. This has made a noticeable difference to our workload, allowing the team to focus on more complex enquiries while also improving our call answer rates.',
      'The insights we get from the chatbot conversations have also helped inform improvements across the credit union. For example, we’ve updated our loans information page to better explain multiple loan balances based on common queries. We’re also exploring ways to provide clearer updates on loan application statuses in response to the feedback we’re seeing.',
      'Overall, the chatbot has improved both efficiency and the quality of service we provide to our members.',
    ],
  ),
  _Story(
    id: 'savvi',
    bot: null,
    unnamedLabel: 'Savvi’s chatbot',
    client: 'Savvi Credit Union',
    logo: ('/images/clients/savvi.webp', 300, 110),
    person: 'Simon Dunne, Business Relationship Manager at Savvi Credit Union',
    quote: [
      'Savvi Credit Union has been using the member-facing chatbot provided by CU Apps since Aug ’25. The chatbot has been very helpful in providing our members with up-to-date information at any time of the day. This reduces the need for members to call or email our Member Services Team and has proven to be a convenient source of information for our members.',
      'The chatbot has also enabled us to identify and correct information gaps on our website, based on the questions our members were asking. We are very happy with the contribution of the chatbot towards helping us improve the lives of our members.',
    ],
  ),
  _Story(
    id: 'synergy',
    bot: 'Sammy',
    client: 'Synergy Credit Union',
    logo: ('/images/clients/sycu.webp', 934, 279),
    art: (
      '/images/cu-chat-stories/sammy.webp',
      600,
      1200,
      'Sammy answering a member’s loan question on Synergy Credit Union’s mobile site',
      true,
    ),
    person: 'Pat Morrissey, Marketing and Business Development Officer',
    quote: [
      'Our Chatbot, Sammy, delivers personalised and informative support, helping members to find the information they need, 24/7. This frees up our member service team to tackle more complex inquiries, allowing them the time to offer personalised solutions like financial planning and general insurances, to members. We continuously learn from the chatbot’s interactions, allowing us to improve the member experience and address website issues for a smoother member journey.',
    ],
  ),
  _Story(
    id: 'enterprise',
    bot: 'Bob',
    client: 'Enterprise Credit Union',
    logo: ('/images/clients/ecu.webp', 463, 133),
    art: (
      '/images/cu-chat-stories/bob.webp',
      480,
      480,
      'Bob, Enterprise Credit Union’s chatbot character',
      false,
    ),
    person:
        'Sam Brown, Marketing & Communications Officer at Enterprise Credit Union',
    quote: [
      'I’ve had the pleasure of working closely with the CU Apps team for nearly four years now, and I can’t speak highly enough of the experience. Having met the team on several occasions and spent hours over video calls, I can confidently say that they’re not just experts in their field but also incredibly friendly and approachable. The level of service they provide is truly second to none. Whenever we’ve needed support—whether it’s making updates in line with product launches or handling last-minute changes, they’ve always been right there, ready to help. And as for Bob, our chatbot, he’s been a game changer for our members, consistently delivering accurate and helpful responses. The entire experience with CU Apps has been nothing short of outstanding, I can’t fault them in any way.',
    ],
  ),
  _Story(
    id: 'donore',
    bot: null,
    unnamedLabel: 'Donore’s chatbot',
    client: 'Donore Credit Union',
    note: 'Ireland’s first credit union',
    logo: ('/images/clients/donore.webp', 980, 448),
    art: (
      '/images/cu-chat-stories/donore.webp',
      1200,
      753,
      'The CU Chat chatbot open on Donore Credit Union’s website',
      true,
    ),
    person: 'David McAuley, CEO',
    quote: [
      'As a credit union with tight resources, we are always looking for smart ways to enhance our offerings for members. Partnering with CU Apps has given us a Chatbot. With its generative AI ability it is giving us suggestions and feedback to update and adjust our website messaging and content while allowing another service channel to our members. We look forward to the new innovations that CU Apps will deliver to help us continue to grow our credit union and help us deliver for our members.',
    ],
  ),
  _Story(
    id: 'no1-copperpot',
    bot: 'CopperBot',
    client: 'No1 CopperPot Credit Union',
    logo: ('/images/clients/n1cpcu.webp', 1000, 300),
    art: (
      '/images/cu-chat-stories/copperbot.webp',
      600,
      1200,
      'CopperBot greeting a visitor on No1 CopperPot Credit Union’s mobile site',
      true,
    ),
    person: 'Jo Moscrop, Chief Business Officer at No1 CopperPot Credit Union',
    quote: [
      'Our chatbot “CopperBot” helps us free up staff time to allow us to use that resource elsewhere, it’s been a great benefit. We love working with CU Apps, they’re always thinking ahead and creating new solutions. And more importantly, our members enjoy using what they create as it bring them additional value.',
    ],
  ),
  _Story(
    id: 'hoot',
    bot: 'Owlbert',
    client: 'Hoot Credit Union',
    logo: ('/images/clients/hocu.webp', 1194, 676),
    art: (
      '/images/cu-chat-stories/owlbert.webp',
      480,
      480,
      'Owlbert, Hoot Credit Union’s owl chatbot, in its website greeting',
      false,
    ),
    person: 'Chris Canham, CEO at Hoot Credit Union',
    quote: [
      'Owlbert (Einstein) is our favourite character, and has proved invaluable to us in supporting member enquiries. We learn alongside him to improve the service we offer and using Owlbert enhances the way we communicate with new and existing members.',
    ],
  ),
];

/// CU Chat client stories at `/cu-chat/stories`: every chatbot introduced
/// by name, three in depth with their case studies, then the rest of the
/// roll in the clients' own words.
class CuChatStoriesPage extends StatelessComponent {
  const CuChatStoriesPage({super.key});

  @override
  Component build(BuildContext context) {
    return main_(classes: 'cu-chat-page chat-stories-page', [
      _hero(),
      for (final (index, story) in _features.indexed) _feature(story, index),
      _rollSection(),
      section(classes: 'chat-stories-close', [
        div(classes: 'site-container chat-stories-close-inner', [
          div([
            h2([Component.text('Want to join them?')]),
            p([
              Component.text(
                'Bring your member questions to a call. We’ll show you a prototype chatbot based on your own website, and you can start thinking about its name.',
              ),
            ]),
          ]),
          primaryLink(bookingLabel, chat: true),
        ]),
      ]),
    ]);
  }

  Component _hero() {
    return section(classes: 'chat-stories-hero', [
      div(classes: 'site-container chat-stories-hero-grid', [
        div(classes: 'chat-stories-hero-copy', [
          h1(classes: 'page-title', [
            Component.text('Meet Harry, Penny, Honey'),
            em([Component.text(' and the rest of the team.')]),
          ]),
          p(classes: 'hero-lede', [
            Component.text(
              'Every CU Chat chatbot is set up with the credit union or community lender that runs it, and most are given a name. Ten of those teams describe what changed, in their own words.',
            ),
          ]),
          div(classes: 'hero-actions', [
            primaryLink(bookingLabel, chat: true),
            quietLink('Read the three case studies', '#heritage'),
          ]),
        ]),
        nav(
          classes: 'chat-stories-roster',
          attributes: {'aria-label': 'Chatbots on this page'},
          [
            p(classes: 'chat-stories-roster-title', [
              Component.text('On the team'),
            ]),
            ol([
              for (final story in [..._features, ..._roll])
                li([
                  a(href: '#${story.id}', [
                    span(classes: 'roster-bot', [Component.text(story.label)]),
                    span(classes: 'roster-client', [
                      Component.text(story.client),
                    ]),
                  ]),
                ]),
            ]),
          ],
        ),
      ]),
    ]);
  }

  Component _logo(_Logo logo, String client, {int height = 44}) {
    final (src, w, h) = logo;
    // The client is named in text beside every logo, so the logo is
    // decorative here.
    return img(
      src: src,
      alt: '',
      width: (w * height / h).round(),
      height: height,
      loading: MediaLoading.lazy,
      classes: 'story-logo',
    );
  }

  Component _quote(_Story story, {bool lead = false}) {
    // The opening sentence carries the lead; the rest of that paragraph
    // continues at body size, so the words stay verbatim.
    final paragraphs = [...story.quote];
    String? opening;
    if (lead) {
      final first = paragraphs.first;
      final stop = first.indexOf('. ');
      if (stop == -1) {
        opening = paragraphs.removeAt(0);
      } else {
        opening = first.substring(0, stop + 1);
        paragraphs[0] = first.substring(stop + 2);
      }
    }
    final last = paragraphs.isEmpty ? -1 : paragraphs.length - 1;
    return blockquote(classes: 'story-quote', [
      if (opening != null)
        p(classes: 'story-quote-lead', [
          Component.text('“$opening${last == -1 ? '”' : ''}'),
        ]),
      for (final (index, paragraph) in paragraphs.indexed)
        p([
          Component.text(
            '${opening == null && index == 0 ? '“' : ''}$paragraph${index == last ? '”' : ''}',
          ),
        ]),
      footer([Component.text(story.person)]),
    ]);
  }

  Component _feature(_Story story, int index) {
    final tone = ['light', 'dark', 'lilac'][index];
    return article(id: story.id, classes: 'story-feature story-feature-$tone', [
      div(classes: 'site-container story-feature-grid', [
        header(classes: 'story-feature-id', [
          _logo(story.logo, story.client, height: 48),
          h2(classes: 'story-bot-name', [Component.text(story.bot!)]),
          p(classes: 'story-client', [
            Component.text('${story.client} · Chatbot for mobile and desktop'),
          ]),
          if (story.art case final art?)
            img(
              src: art.$1,
              alt: art.$4,
              width: art.$2,
              height: art.$3,
              loading: MediaLoading.lazy,
              classes: 'story-feature-art',
            ),
          if (story.caseStudy case (final href, final size))
            a(
              href: href,
              classes: 'story-pdf',
              attributes: {'download': ''},
              [
                span(classes: 'story-pdf-label', [
                  Component.text('Download the case study'),
                  linkArrow(ArrowKind.down),
                ]),
                span(classes: 'story-pdf-meta', [
                  Component.text('PDF · 4 pages · $size'),
                ]),
              ],
            ),
        ]),
        _quote(story, lead: true),
      ]),
    ]);
  }

  Component _rollSection() {
    return section(classes: 'chat-stories-roll', [
      div(classes: 'site-container', [
        div(classes: 'chat-stories-roll-intro', [
          h2(classes: 'section-title', [
            Component.text('Seven more, in their own words.'),
          ]),
          p(classes: 'section-copy', [
            Component.text(
              'Different credit unions, the same pattern: the chatbot takes the routine questions, and the team learns from what members ask.',
            ),
          ]),
        ]),
        ol(classes: 'roll-list', [
          for (final story in _roll)
            li(id: story.id, classes: 'roll-row', [
              div(classes: 'roll-id', [
                if (story.art case final art?)
                  img(
                    src: art.$1,
                    alt: art.$4,
                    width: art.$2,
                    height: art.$3,
                    loading: MediaLoading.lazy,
                    classes:
                        'roll-art${art.$5 ? ' roll-art-device' : ''}${art.$2 > art.$3 ? ' roll-art-wide' : ''}',
                  ),
                h3(classes: 'roll-bot', [Component.text(story.label)]),
                p(classes: 'story-client', [
                  Component.text(story.client),
                  if (story.note case final note?) ...[
                    br(),
                    Component.text(note),
                  ],
                ]),
                _logo(story.logo, story.client, height: 34),
              ]),
              _quote(story),
            ]),
        ]),
      ]),
    ]);
  }
}
