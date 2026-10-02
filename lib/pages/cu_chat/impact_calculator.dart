import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ImpactCalculatorPage extends StatelessComponent {
  const ImpactCalculatorPage({super.key});

  @override
  Component build(BuildContext context) {
    return main_(classes: 'cu-chat-page product-page-chat impact-calculator-page', [
      div(classes: 'site-container impact-page-inner', [
        quietLink('Explore the AI Chatbot', '/cu-chat/ai-chatbot'),
        section(classes: 'impact-intro', [
          p(classes: 'eyebrow', [
            Component.text('CU Chat / Impact calculator'),
          ]),
          h1(classes: 'page-title', [
            Component.text('Less admin. '),
            em([Component.text('More time for members.')]),
          ]),
          p(classes: 'hero-lede', [
            Component.text(
              'What could CU Chat give back to your team? Explore the time you could save and the member enquiries you could generate.',
            ),
          ]),
          p(classes: 'impact-privacy', [
            Component.text(
              'Your figures stay in this browser. Example assumptions, ready to adjust.',
            ),
          ]),
        ]),
        Component.element(
          tag: 'noscript',
          children: [
            p(classes: 'impact-no-script', [
              Component.text(
                'Enable JavaScript to adjust this calculator and prepare a PDF summary. The figures below show the illustrative example.',
              ),
            ]),
          ],
        ),
        div(id: 'calculator-worksheet', classes: 'calculator', [
          section(
            classes: 'inputs',
            attributes: {'aria-labelledby': 'input-title'},
            [
              div(classes: 'panel-head', [
                h2(id: 'input-title', [
                  Component.text('Let’s run your numbers'),
                ]),
                button(
                  id: 'reset',
                  classes: 'reset',
                  attributes: {'type': 'button'},
                  [Component.text('Reset example')],
                ),
              ]),
              div(classes: 'fields', [
                div(classes: 'section-label', [
                  Component.text('Your member service'),
                ]),
                div(id: 'service-inputs', [
                  div(classes: 'field', [
                    div(classes: 'field-top', [
                      label(
                        attributes: {'for': 'enquiries'},
                        [Component.text('Member service enquiries per month')],
                      ),
                      div(classes: 'number', [
                        input(
                          id: 'enquiries',
                          attributes: {
                            'type': 'number',
                            'min': '0',
                            'max': '20000',
                            'step': '100',
                            'value': '2000',
                            'aria-describedby': 'enquiries-hint',
                          },
                        ),
                        span([]),
                      ]),
                    ]),
                    p(id: 'enquiries-hint', classes: 'hint', [
                      Component.text(
                        'Calls, emails and messages your team handles.',
                      ),
                    ]),
                    p(
                      id: 'enquiries-error',
                      classes: 'field-error',
                      attributes: {'hidden': ''},
                      [],
                    ),
                    input(
                      id: 'enquiries-range',
                      classes: 'slider',
                      attributes: {
                        'type': 'range',
                        'min': '0',
                        'max': '20000',
                        'step': '100',
                        'value': '2000',
                        'aria-label':
                            'Member service enquiries per month slider',
                        'aria-describedby': 'enquiries-hint',
                      },
                    ),
                    div(classes: 'ends', [
                      span([Component.text('0')]),
                      span([Component.text('20,000')]),
                    ]),
                  ]),
                  div(classes: 'field', [
                    div(classes: 'field-top', [
                      label(
                        attributes: {'for': 'minutes'},
                        [Component.text('Average handling time')],
                      ),
                      div(classes: 'number', [
                        input(
                          id: 'minutes',
                          attributes: {
                            'type': 'number',
                            'min': '1',
                            'max': '30',
                            'step': '1',
                            'value': '6',
                            'aria-describedby': 'minutes-hint',
                          },
                        ),
                        span([Component.text('min')]),
                      ]),
                    ]),
                    p(id: 'minutes-hint', classes: 'hint', [
                      Component.text(
                        'Include the conversation and any follow-up admin.',
                      ),
                    ]),
                    p(
                      id: 'minutes-error',
                      classes: 'field-error',
                      attributes: {'hidden': ''},
                      [],
                    ),
                    input(
                      id: 'minutes-range',
                      classes: 'slider',
                      attributes: {
                        'type': 'range',
                        'min': '1',
                        'max': '30',
                        'step': '1',
                        'value': '6',
                        'aria-label': 'Average handling time slider',
                        'aria-describedby': 'minutes-hint',
                      },
                    ),
                    div(classes: 'ends', [
                      span([Component.text('1')]),
                      span([Component.text('30')]),
                    ]),
                  ]),
                  div(classes: 'field', [
                    div(classes: 'field-top', [
                      label(
                        attributes: {'for': 'resolution'},
                        [Component.text('Enquiries fully resolved by CU Chat')],
                      ),
                      div(classes: 'number', [
                        input(
                          id: 'resolution',
                          attributes: {
                            'type': 'number',
                            'min': '0',
                            'max': '100',
                            'step': '5',
                            'value': '60',
                            'aria-describedby': 'resolution-hint',
                          },
                        ),
                        span([Component.text('%')]),
                      ]),
                    ]),
                    p(id: 'resolution-hint', classes: 'hint', [
                      Component.text(
                        'Your assumption for enquiries needing no staff support.',
                      ),
                    ]),
                    p(
                      id: 'resolution-error',
                      classes: 'field-error',
                      attributes: {'hidden': ''},
                      [],
                    ),
                    input(
                      id: 'resolution-range',
                      classes: 'slider',
                      attributes: {
                        'type': 'range',
                        'min': '0',
                        'max': '100',
                        'step': '5',
                        'value': '60',
                        'aria-label':
                            'Enquiries fully resolved by CU Chat slider',
                        'aria-describedby': 'resolution-hint',
                      },
                    ),
                    div(classes: 'ends', [
                      span([Component.text('0%')]),
                      span([Component.text('100%')]),
                    ]),
                  ]),
                ]),
              ]),
              div(classes: 'fields lead-fields', [
                div(classes: 'section-label', [
                  Component.text('Your website opportunity'),
                ]),
                div(id: 'lead-inputs', [
                  div(classes: 'field', [
                    div(classes: 'field-top', [
                      label(
                        attributes: {'for': 'visits'},
                        [Component.text('Monthly website visits')],
                      ),
                      div(classes: 'number', [
                        input(
                          id: 'visits',
                          attributes: {
                            'type': 'number',
                            'min': '0',
                            'max': '100000',
                            'step': '500',
                            'value': '10000',
                            'aria-describedby': 'visits-hint',
                          },
                        ),
                        span([]),
                      ]),
                    ]),
                    p(id: 'visits-hint', classes: 'hint', [
                      Component.text(
                        'Use your website analytics or try an estimate.',
                      ),
                    ]),
                    p(
                      id: 'visits-error',
                      classes: 'field-error',
                      attributes: {'hidden': ''},
                      [],
                    ),
                    input(
                      id: 'visits-range',
                      classes: 'slider',
                      attributes: {
                        'type': 'range',
                        'min': '0',
                        'max': '100000',
                        'step': '500',
                        'value': '10000',
                        'aria-label': 'Monthly website visits slider',
                        'aria-describedby': 'visits-hint',
                      },
                    ),
                    div(classes: 'ends', [
                      span([Component.text('0')]),
                      span([Component.text('100,000')]),
                    ]),
                  ]),
                ]),
              ]),
              div(classes: 'fields lead-fields', [
                p(classes: 'hint', [
                  Component.text(
                    'Your website assumptions · adjust these example rates',
                  ),
                ]),
                div(classes: 'assumption-grid', [
                  div([
                    label(
                      attributes: {'for': 'engage'},
                      [Component.text('Visitors starting a chat (%)')],
                    ),
                    input(
                      id: 'engage',
                      attributes: {
                        'type': 'number',
                        'min': '0',
                        'max': '100',
                        'value': '4',
                        'step': '0.1',
                      },
                    ),
                    p(
                      id: 'engage-error',
                      classes: 'field-error',
                      attributes: {'hidden': ''},
                      [],
                    ),
                  ]),
                  div([
                    label(
                      attributes: {'for': 'qualify'},
                      [Component.text('Chats becoming leads (%)')],
                    ),
                    input(
                      id: 'qualify',
                      attributes: {
                        'type': 'number',
                        'min': '0',
                        'max': '100',
                        'value': '20',
                        'step': '1',
                      },
                    ),
                    p(
                      id: 'qualify-error',
                      classes: 'field-error',
                      attributes: {'hidden': ''},
                      [],
                    ),
                  ]),
                ]),
              ]),
              details([
                summary([Component.text('Staff cost and currency')]),
                div(classes: 'assumption-grid', [
                  div([
                    label(
                      attributes: {'for': 'wage'},
                      [Component.text('Staff cost per hour')],
                    ),
                    input(
                      id: 'wage',
                      attributes: {
                        'type': 'number',
                        'min': '0',
                        'max': '1000',
                        'value': '25',
                        'step': '1',
                      },
                    ),
                    p(
                      id: 'wage-error',
                      classes: 'field-error',
                      attributes: {'hidden': ''},
                      [],
                    ),
                  ]),
                  div([
                    label(
                      attributes: {'for': 'currency'},
                      [Component.text('Currency')],
                    ),
                    select(id: 'currency', [
                      option(
                        attributes: {'value': 'GBP'},
                        [Component.text('GBP (£)')],
                      ),
                      option(
                        attributes: {'value': 'EUR'},
                        [Component.text('EUR (€)')],
                      ),
                      option(
                        attributes: {'value': 'USD'},
                        [Component.text('USD (\$)')],
                      ),
                    ]),
                  ]),
                ]),
                p([
                  Component.text(
                    'A lead is a chat resulting in a contactable enquiry. Existing service enquiries and website leads are modelled separately.',
                  ),
                ]),
              ]),
              p(id: 'error', attributes: {'role': 'alert', 'hidden': ''}, []),
            ],
          ),
          section(
            id: 'calculator-results',
            classes: 'results',
            attributes: {'aria-label': 'Your estimated impact'},
            [
              div(classes: 'result-top', [
                div(classes: 'eyebrow', [
                  Component.text('Illustrative estimate'),
                ]),
                div(
                  classes: 'period',
                  attributes: {'role': 'group', 'aria-label': 'Results period'},
                  [
                    button(
                      attributes: {
                        'type': 'button',
                        'aria-pressed': 'true',
                        'data-period': 'month',
                      },
                      [Component.text('Monthly')],
                    ),
                    button(
                      attributes: {
                        'type': 'button',
                        'aria-pressed': 'false',
                        'data-period': 'year',
                      },
                      [Component.text('Annually')],
                    ),
                  ],
                ),
              ]),
              p(
                id: 'result-state',
                classes: 'result-state',
                attributes: {'hidden': ''},
                [],
              ),
              div(id: 'impact-results', [
                div(classes: 'hero-number', [
                  span(id: 'hours', [Component.text('120')]),
                  small([Component.text('hours')]),
                ]),
                p(classes: 'result-caption', [
                  Component.text('back to your team, '),
                  span(id: 'period-caption', [Component.text('every month')]),
                ]),
                p(id: 'resolution-basis', classes: 'assumption-basis', [
                  Component.text(
                    'Based on 60% of enquiries fully resolved by CU Chat.',
                  ),
                ]),
                div(classes: 'time-note', [
                  Component.text('That’s '),
                  strong(id: 'days', [Component.text('16')]),
                  Component.text(' working days of staff capacity.'),
                ]),
                div(classes: 'comparison', [
                  div(classes: 'bar-label', [
                    span([Component.text('Today · staff handling time')]),
                    span(id: 'before', [Component.text('200 hrs')]),
                  ]),
                  div(classes: 'bar', [
                    span(
                      id: 'before-bar',
                      attributes: {'style': 'width:100%'},
                      [],
                    ),
                  ]),
                  div(classes: 'bar-label', [
                    span([Component.text('With CU Chat · remaining time')]),
                    span(id: 'after', [Component.text('80 hrs')]),
                  ]),
                  div(classes: 'bar after', [
                    span(
                      id: 'after-bar',
                      attributes: {'style': 'width:40%'},
                      [],
                    ),
                  ]),
                ]),
                div(classes: 'metrics', [
                  div([
                    div(id: 'value', classes: 'metric-value', [
                      Component.text('£3,000'),
                    ]),
                    div(classes: 'metric-label', [
                      Component.text('Staff capacity value'),
                    ]),
                    div(classes: 'metric-sub', [
                      Component.text('Time value, not cash savings'),
                    ]),
                  ]),
                  div([
                    div(id: 'leads', classes: 'metric-value', [
                      Component.text('80'),
                    ]),
                    div(classes: 'metric-label', [
                      Component.text('Potential website leads'),
                    ]),
                    div(id: 'chats', classes: 'metric-sub', [
                      Component.text('From 400 website chats'),
                    ]),
                  ]),
                ]),
              ]),
              div(
                id: 'website-funnel',
                classes: 'website-funnel',
                attributes: {'aria-label': 'Website lead calculation'},
                [],
              ),
              button(
                id: 'print-summary',
                classes: 'download',
                attributes: {'type': 'button'},
                [Component.text('Print / save PDF summary')],
              ),
              p(
                id: 'pdf-feedback',
                classes: 'pdf-feedback',
                attributes: {'role': 'status'},
                [],
              ),
              p(
                id: 'impact-announcement',
                classes: 'impact-sr-only',
                attributes: {'role': 'status', 'aria-atomic': 'true'},
                [],
              ),
              p(id: 'disclaimer', classes: 'disclaimer', [
                Component.text(
                  'Illustrative estimate, not a performance promise. Defaults are example assumptions, not measured CU Chat results. Software costs and implementation time are excluded.',
                ),
              ]),
            ],
          ),
        ]),
        aside(
          id: 'mobile-impact',
          classes: 'mobile-impact',
          attributes: {'aria-label': 'Live estimate'},
          [
            div([
              strong(id: 'mobile-hours', [Component.text('120 hours / month')]),
              p(id: 'mobile-state', [Component.text('Illustrative estimate')]),
            ]),
            a(href: '/cu-chat/impact-calculator#calculator-results', [
              Component.text('View results'),
            ]),
          ],
        ),
        section(
          classes: 'scenario-section',
          attributes: {'aria-labelledby': 'scenario-title'},
          [
            h2(id: 'scenario-title', [
              Component.text('Compare your scenarios'),
            ]),
            p(classes: 'hint', [
              Component.text(
                'Capture up to three sets of your own assumptions. Scenarios stay on this page and are cleared when you leave or reload.',
              ),
            ]),
            div(classes: 'scenario-controls', [
              div([
                label(
                  attributes: {'for': 'scenario-name'},
                  [Component.text('Scenario name')],
                ),
                input(
                  id: 'scenario-name',
                  attributes: {
                    'type': 'text',
                    'maxlength': '40',
                    'placeholder': 'For example, cautious estimate',
                  },
                ),
              ]),
              button(
                id: 'save-scenario',
                classes: 'scenario-button',
                attributes: {'type': 'button'},
                [Component.text('Add current estimate')],
              ),
            ]),
            p(id: 'scenario-feedback', attributes: {'role': 'status'}, []),
            div(id: 'scenario-comparison', []),
          ],
        ),
        section(
          id: 'print-report',
          classes: 'print-report',
          attributes: {'aria-label': 'Printable impact summary'},
          [],
        ),
        details(id: 'how-it-works', classes: 'method', [
          summary([
            Component.text('Transparent numbers. Here’s the calculation.'),
          ]),
          ul([
            li([
              strong([Component.text('Hours saved')]),
              Component.text(
                ' = monthly service enquiries × minutes per enquiry × share fully resolved by chat ÷ 60.',
              ),
            ]),
            li([
              strong([Component.text('Remaining handling time')]),
              Component.text(
                ' = original staff time minus hours saved. The model assumes fully resolved chats need no staff time and other enquiries take the same time as today.',
              ),
            ]),
            li([
              strong([Component.text('Working days')]),
              Component.text(
                ' = hours saved ÷ 7.5. These are staff-days of capacity, not elapsed days or a staffing recommendation.',
              ),
            ]),
            li([
              strong([Component.text('Staff capacity value')]),
              Component.text(
                ' = hours saved × hourly staff cost. It excludes subscription fees, setup, maintenance and lead follow-up time, so it is not net savings or ROI.',
              ),
            ]),
            li([
              strong([Component.text('Potential website leads')]),
              Component.text(
                ' = monthly website visits × chat engagement rate × lead conversion rate. These are total modelled chat leads, not proven additional leads or new members; no comparison to your existing conversion rate is made.',
              ),
            ]),
            li([
              Component.text(
                'Annual estimates multiply a typical month by 12. Calculations use unrounded values; displayed results are rounded.',
              ),
            ]),
          ]),
        ]),
      ]),
      closingCta(
        eyebrow: 'Explore your estimate',
        title: 'Put your numbers in context.',
        body:
            'Bring your summary to a call and explore how CU Chat could support your credit union.',
        label: 'Book a call',
        chat: true,
      ),
    ]);
  }
}

/// Contextual entry point kept separate from the member loan calculator.
Component impactCalculatorAction() {
  return aside(
    classes: 'chat-impact-action',
    attributes: {'aria-label': 'CU Chat impact calculator'},
    [
      div([
        p(classes: 'eyebrow', [Component.text('CU Chat impact calculator')]),
        h3([Component.text('What could CU Chat give back to your team?')]),
        p([
          Component.text(
            'Use your own numbers to explore potential staff time saved and website enquiries. An illustrative estimate you can take into a demo.',
          ),
        ]),
      ]),
      primaryLink(
        'Estimate your impact',
        href: '/cu-chat/impact-calculator',
        chat: true,
      ),
    ],
  );
}
