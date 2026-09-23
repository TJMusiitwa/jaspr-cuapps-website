import 'package:cuapps_website/components/product_page.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// Landing page for AGM Hub.
class AgmHubPage extends StatelessComponent {
  const AgmHubPage({super.key});

  @override
  Component build(BuildContext context) {
    return ProductPage(
      slug: 'agm-hub',
      eyebrow: 'AGM Hub',
      title: 'A better AGM for',
      titleAccent: 'every member.',
      lede:
          'Bring the live stream, secure voting, questions and meeting information together in one easy place. Members can join through your app or a standalone branded web page.',
      highlights: const [
        'Secure member voting',
        'Works with any core system',
        'One-time fee',
      ],
      mockup: agmHubMockup(),
      mockupLabel:
          'AGM Hub showing a live-streamed annual general meeting alongside a member vote on the annual report, with 84% voting yes.',
      featuresEyebrow: 'Participation and logistics',
      featuresTitle: 'Everything needed for a well-run, well-attended AGM.',
      featuresBody:
          'AGM Hub handles the practical work of running a digital or hybrid meeting while giving members more ways to take part.',
      features: const [
        (
          'stream',
          'Live stream in one place',
          'Embed your Zoom, Microsoft Teams or other streaming platform directly inside the member experience.',
        ),
        (
          'vote',
          'Secure voting',
          'Give eligible members a simple, verified way to vote before or during the meeting.',
        ),
        (
          'question',
          'Engage members earlier',
          'Members can submit questions, ideas and other information in advance instead of waiting for the live event.',
        ),
        (
          'settings',
          'Self-service management',
          'Your team can manage the agenda, content, voting windows and submissions through the CU Apps portal.',
        ),
        (
          'browser',
          'App or standalone web page',
          'Use AGM Hub inside the credit union app or provide a branded browser experience for any member.',
        ),
        (
          'users',
          'Hybrid meeting support',
          'We help with setup so in-room and remote members can take part in the same meeting.',
        ),
      ],
      spotlightEyebrow: 'More than a webcast',
      spotlightTitle: 'Digital AGM logistics with community built in.',
      spotlightBody:
          'Members can read papers, submit questions, vote securely and follow the meeting without leaving the app. It makes the AGM easier to run and easier to join.',
      spotlightVisual: _portalView(),
      spotlightNote:
          'AGM Hub works with any core system and is available for a one-time fee with no annual contract.',
      stepsTitle: 'From planning to participation.',
      steps: const [
        (
          'Set up',
          'Create the meeting, add the agenda and choose how members will access it.',
        ),
        (
          'Invite',
          'Share the AGM through your app, website and member communications.',
        ),
        (
          'Run',
          'Stream the meeting, manage votes and support hybrid participation.',
        ),
        (
          'Follow up',
          'Review questions, results and engagement records in the portal.',
        ),
      ],
      faqs: const [
        (
          'Can the live stream use our existing platform?',
          'Yes. We can connect AGM Hub to Zoom, Microsoft Teams or another platform your credit union already uses.',
        ),
        (
          'Do members need the app?',
          'No. AGM Hub can be embedded in your app and can also run as a standalone branded web page.',
        ),
        (
          'Can members submit questions before the AGM?',
          'Yes. You can collect questions, proposals and other information in advance through the same hub.',
        ),
        (
          'Is there an annual contract?',
          'No. AGM Hub is available for a one-time fee with no annual contract.',
        ),
      ],
      closingTitle: 'Make your next AGM easier to join.',
      closingBody:
          'We can help you plan the digital experience, connect your live stream and support a confident hybrid setup.',
    );
  }
}

/// The AGM Hub portal on the day: the signature visual on this page,
/// showing the controls a credit union team works with during the meeting.
Component _portalView() {
  Component row(String item, String status, String state) {
    return li(classes: 'portal-row', [
      span(classes: 'portal-item', [Component.text(item)]),
      span(classes: 'portal-status portal-status-$state', [
        Component.text(status),
      ]),
    ]);
  }

  return figure(classes: 'portal-view', [
    div(
      classes: 'portal-panel',
      attributes: {
        'role': 'img',
        'aria-label':
            'Illustrative AGM Hub portal during a live meeting: papers published, advance questions received, a vote open, member access verified and results ready to export.',
      },
      [
        div(
          attributes: {'aria-hidden': 'true'},
          [
            div(classes: 'portal-head', [
              span([Component.text('CU Apps portal · AGM Hub')]),
              span(classes: 'mock-pill mock-pill-live', [
                Component.text('Live'),
              ]),
            ]),
            ul(classes: 'portal-list', [
              row('Meeting papers', '4 published', 'done'),
              row('Advance questions', '47 received', 'done'),
              row('Agenda', 'Item 3 of 6', 'live'),
              row('Vote: annual report', 'Open · closes 19:30', 'live'),
              row('Member access', 'Verified members only', 'done'),
              row('Results & records', 'Export after close', 'next'),
            ]),
          ],
        ),
      ],
    ),
    figcaption([
      Component.text(
        'Illustrative view of the portal your team uses on the day.',
      ),
    ]),
  ]);
}

Component _voteOption(String label, int percent) {
  return div(classes: 'mock-agm-option', [
    div(classes: 'mock-row', [
      span([Component.text(label)]),
      strong([Component.text('$percent%')]),
    ]),
    div(classes: 'mock-bar', [
      span(styles: Styles(width: Unit.percent(percent.toDouble())), []),
    ]),
  ]);
}

/// HTML mockup of the AGM Hub member screen. Decorative: callers must
/// provide an accessible label and hide this from assistive technology.
///
/// [compact] renders a small vote card sized for homepage product tiles.
Component agmHubMockup({bool compact = false}) {
  final vote = [_voteOption('Yes', 84), _voteOption('No', 16)];

  if (compact) {
    return div(
      classes: 'mock-window mock-window-sm mock-agm mock-agm-compact',
      [
        div(classes: 'mock-row', [
          span(classes: 'mock-label', [Component.text('Voting now')]),
          span(classes: 'mock-pill mock-pill-live', [Component.text('Live')]),
        ]),
        strong(classes: 'mock-agm-question', [
          Component.text('Approve the annual report?'),
        ]),
        div(classes: 'mock-agm-options', vote),
      ],
    );
  }

  return div(classes: 'mock-window mock-agm', [
    div(classes: 'mock-head', [
      div([
        span(classes: 'mock-label', [Component.text('Member AGM Hub')]),
        span(classes: 'mock-title', [
          Component.text('Annual General Meeting 2027'),
        ]),
      ]),
      span(classes: 'mock-pill mock-pill-live', [Component.text('Live')]),
    ]),
    div(classes: 'mock-agm-stream', [
      span(classes: 'mock-agm-play', []),
      div([
        span(classes: 'mock-label mock-agm-stream-label', [
          Component.text('Live stream'),
        ]),
        span(classes: 'mock-agm-stream-source', [
          Component.text('Streaming from Microsoft Teams'),
        ]),
        strong(classes: 'mock-agm-stream-title', [
          Component.text('Chair’s welcome and annual update'),
        ]),
      ]),
    ]),
    div(classes: 'mock-agm-vote', [
      div(classes: 'mock-row', [
        span(classes: 'mock-label', [Component.text('Voting now')]),
        span(classes: 'mock-pill mock-pill-ok', [Component.text('Open')]),
      ]),
      strong(classes: 'mock-agm-question', [
        Component.text('Approve the annual report?'),
      ]),
      div(classes: 'mock-agm-options', vote),
      p(classes: 'mock-muted mock-agm-count', [
        Component.text('312 verified votes'),
      ]),
    ]),
  ]);
}
