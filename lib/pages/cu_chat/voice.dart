import 'package:cuapps_website/components/product_page.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// A demo line: accent, display number and the dialable `tel:` value.
typedef VoiceLine = (String accent, String agent, String display, String tel);

// TODO: replace with the live demo numbers. These are placeholders: the UK
// one is from Ofcom's range reserved for drama, so it never reaches anyone.
const _voiceLines = <VoiceLine>[
  ('UK English', 'Our UK agent', '0808 157 0192', '+448081570192'),
  ('Irish English', 'Our Irish agent', '+353 1 555 0147', '+35315550147'),
];

/// CU Voice landing page at `/cu-chat/voice`: the CU Chat assistant, answering
/// the phone.
class CuVoicePage extends StatelessComponent {
  const CuVoicePage({super.key});

  @override
  Component build(BuildContext context) {
    return ProductPage(
      slug: 'voice',
      chat: true,
      eyebrow: 'CU Chat / CU Voice',
      title: 'Your members call.',
      titleAccent: 'Your AI assistant answers.',
      lede:
          'CU Voice puts the knowledge behind your CU Chat assistant on the end of a phone line. Members ask in their own words and hear a clear, natural answer, at any hour, without waiting in a queue.',
      heroActions: [
        for (final (index, line) in _voiceLines.indexed)
          _callButton(line, primary: index == 0),
      ],
      highlights: const [
        'Answers every call, 24/7',
        'UK and Irish English voices',
        'A route to your team when needed',
      ],
      mockup: voiceMockup(),
      mockupLabel:
          'A member on a phone call with a credit union voice assistant, with a live transcript of a loan question and answer',
      featuresEyebrow: 'CU Voice features',
      featuresTitle: 'The phone line that never puts members on hold.',
      featuresBody:
          'Not every member wants to type. CU Voice gives the ones who pick up the phone the same fast, accurate help your chatbot gives on the website.',
      features: const [
        (
          'headset',
          'No more hold music',
          'Every call is answered straight away, so routine questions stop queuing behind the conversations that need your team.',
        ),
        (
          'chat',
          'The same knowledge as your chatbot',
          'CU Voice answers from your credit union’s own products, rates, branches and policies, so members hear what they would read in the chat.',
        ),
        (
          'globe',
          'A voice that sounds local',
          'Choose a natural UK English or Irish English voice, so your assistant sounds like it belongs to your community.',
        ),
        (
          'calculator',
          'Loan estimates, out loud',
          'Members can ask what a loan might cost and hear an example repayment, then be pointed to the next step to apply.',
        ),
        (
          'users',
          'A clear route to your team',
          'When a question needs a person, the assistant says so and offers the next step, so no member is left going round in circles.',
        ),
        (
          'phone',
          'Nothing new to learn',
          'Members simply call a number. No app, no login and no website visit needed, which suits members who prefer to talk.',
        ),
      ],
      afterFeatures: [_tryIt()],
      spotlightEyebrow: 'One assistant, two channels',
      spotlightTitle: 'Type it or say it. The answer is the same.',
      spotlightBody:
          'CU Voice and the Member-Facing AI Chatbot share one knowledge base. Update a rate or a branch opening time once, and members hear it on the phone and read it on your website.',
      spotlightVisual: _channelsVisual(),
      stepsTitle: 'From first call to every call.',
      steps: const [
        (
          'Call the demo',
          'Ring one of our demo lines above and ask the questions your members ask. Then book a call to talk it through.',
        ),
        (
          'Tailor your assistant',
          'We shape it around your products, services and the questions your members phone about, and you choose its voice.',
        ),
        (
          'Connect your number',
          'Your assistant answers on the number you choose, alongside the ways members already reach you.',
        ),
        (
          'Keep it current',
          'As your products and policies change, the knowledge behind every call changes with them.',
        ),
      ],
      faqs: const [
        (
          'How is CU Voice different from the AI Chatbot?',
          'The knowledge is the same; the channel is different. The chatbot helps members who type on your website, and CU Voice helps members who would rather pick up the phone.',
        ),
        (
          'Can we use it with our existing phone number?',
          'Tell us how your phone lines are set up today and we will talk through the options for connecting CU Voice.',
        ),
        (
          'Which voices are available?',
          'You can try a UK English and an Irish English voice on our demo lines now. Ask us on a call about the voice that suits your credit union.',
        ),
        (
          'What happens when a member needs a person?',
          'The assistant recognises when a question is one for your team and explains the next step, rather than guessing.',
        ),
        (
          'Is our data used to train AI models?',
          'No. CU Apps has an enterprise-level AI agreement, and your credit union’s information is never used to train external AI models.',
        ),
        (
          'Can we have CU Voice and the chatbot together?',
          'Yes. They draw on the same knowledge base, so one update keeps both channels accurate.',
        ),
      ],
      closingTitle: 'Heard enough? Let’s talk about your lines.',
      closingBody:
          'We will show how CU Voice could answer your members’ calls and fit the way your team works.',
    );
  }

  Component _callButton(VoiceLine line, {required bool primary}) {
    return a(
      href: 'tel:${line.$4}',
      classes: primary
          ? 'button button-primary button-chat voice-call'
          : 'button voice-call voice-call-secondary',
      attributes: {
        'aria-label': 'Call the ${line.$1} demo agent on ${line.$3}',
      },
      [
        _phoneGlyph(),
        span(classes: 'voice-call-text', [
          span([Component.text('Try the ${line.$1} agent')]),
          span(classes: 'voice-call-number', [Component.text(line.$3)]),
        ]),
      ],
    );
  }

  Component _tryIt() {
    return section(id: 'try-it', classes: 'voice-try', [
      div(classes: 'site-container voice-try-grid', [
        div(classes: 'voice-try-copy', [
          p(classes: 'eyebrow', [Component.text('Hear it for yourself')]),
          h2([Component.text('Pick up the phone and ask it anything.')]),
          p([
            Component.text(
              'Our demo agents answer as a sample credit union. Ask about loans, savings or opening times, interrupt it, change your mind. Then imagine it answering for yours.',
            ),
          ]),
          ul(classes: 'voice-try-prompts', [
            li([Component.text('“How much could I borrow?”')]),
            li([Component.text('“Are you open on Saturday?”')]),
            li([Component.text('“How do I join?”')]),
          ]),
        ]),
        div(classes: 'voice-lines', [
          for (final line in _voiceLines)
            a(
              href: 'tel:${line.$4}',
              classes: 'voice-line',
              attributes: {
                'aria-label': 'Call the ${line.$1} demo agent on ${line.$3}',
              },
              [
                div(classes: 'voice-line-head', [
                  span(classes: 'voice-line-accent', [Component.text(line.$1)]),
                  _wave(7),
                ]),
                span(classes: 'voice-line-agent', [Component.text(line.$2)]),
                span(classes: 'voice-line-number', [Component.text(line.$3)]),
                span(classes: 'voice-line-action', [
                  _phoneGlyph(),
                  Component.text('Call now'),
                ]),
              ],
            ),
          p(classes: 'voice-lines-note', [
            Component.text(
              'Demo lines only. Please don’t share personal or account details on the call.',
            ),
          ]),
        ]),
      ]),
    ]);
  }

  // Spotlight: the same question answered in the chat and on the phone.
  Component _channelsVisual() {
    return div(
      classes: 'voice-channels',
      attributes: {
        'role': 'img',
        'aria-label':
            'The same opening-hours question answered in the website chatbot and on a CU Voice call',
      },
      [
        div(
          classes: 'voice-channel',
          attributes: {'aria-hidden': 'true'},
          [
            span(classes: 'voice-channel-label', [
              Component.text('On your website'),
            ]),
            p(classes: 'voice-channel-q', [
              Component.text('Is the Market Street branch open Saturday?'),
            ]),
            p(classes: 'voice-channel-a', [
              Component.text('Yes, from 9am to 12pm this Saturday.'),
            ]),
          ],
        ),
        div(
          classes: 'voice-channels-hub',
          attributes: {'aria-hidden': 'true'},
          [
            span([Component.text('One knowledge base')]),
          ],
        ),
        div(
          classes: 'voice-channel voice-channel-call',
          attributes: {'aria-hidden': 'true'},
          [
            span(classes: 'voice-channel-label', [
              Component.text('On the phone'),
            ]),
            p(classes: 'voice-channel-q', [
              Component.text('“Is the Market Street branch open Saturday?”'),
            ]),
            div(classes: 'voice-channel-a voice-channel-spoken', [
              _wave(14),
              span([Component.text('“Yes, from nine till twelve.”')]),
            ]),
          ],
        ),
      ],
    );
  }
}

Component _wave(int bars) {
  return span(
    classes: 'voice-wave',
    attributes: {'aria-hidden': 'true'},
    [for (var i = 0; i < bars; i++) span([])],
  );
}

Component _phoneGlyph() {
  return svg(
    viewBox: '0 0 24 24',
    classes: 'voice-phone-icon',
    attributes: {'aria-hidden': 'true', 'focusable': 'false'},
    [
      path(
        d: 'M5 3.5h3.2l1.6 4.3-2.1 1.4a11 11 0 0 0 7.1 7.1l1.4-2.1 4.3 1.6V19a1.9 1.9 0 0 1-2 1.9A16.5 16.5 0 0 1 3 5.5a1.9 1.9 0 0 1 2-2Z',
        fill: Color('none'),
        stroke: Color('currentColor'),
        strokeWidth: '1.8',
        styles: Styles(raw: {'stroke-linejoin': 'round'}),
        [],
      ),
    ],
  );
}

/// Static HTML mockup of a member on a CU Voice call, with a live transcript.
Component voiceMockup() {
  return div(classes: 'mock-window mock-voice', [
    div(classes: 'mock-voice-head', [
      span(classes: 'mock-voice-status', [Component.text('On call')]),
      span(classes: 'mock-voice-timer', [Component.text('01:24')]),
    ]),
    div(classes: 'mock-voice-caller', [
      span(classes: 'mock-voice-avatar', [
        span(classes: 'mock-voice-ring', []),
        Component.text('CU'),
      ]),
      span(classes: 'mock-voice-name', [Component.text('Your CU assistant')]),
      span(classes: 'mock-voice-sub', [Component.text('UK English voice')]),
    ]),
    _wave(24),
    div(classes: 'mock-thread mock-voice-transcript', [
      p(classes: 'mock-voice-line mock-voice-member', [
        span([Component.text('Member')]),
        Component.text('What would three thousand pounds cost over two years?'),
      ]),
      p(classes: 'mock-voice-line', [
        span([Component.text('Assistant')]),
        Component.text(
          'As an example, around £138 a month. Shall I tell you how to apply?',
        ),
      ]),
      p(classes: 'mock-voice-line mock-voice-member', [
        span([Component.text('Member')]),
        Component.text('Yes please.'),
      ]),
    ]),
    div(classes: 'mock-voice-controls', [
      span([Component.text('Mute')]),
      span([Component.text('Keypad')]),
      span(classes: 'mock-voice-end', [Component.text('End')]),
    ]),
  ]);
}
