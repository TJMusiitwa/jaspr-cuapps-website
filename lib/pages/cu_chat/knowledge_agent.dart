import 'package:cuapps_website/components/product_page.dart';
import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// CU Chat Internal Knowledge Agent landing page at `/cu-chat/knowledge-agent`.
class KnowledgeAgentPage extends StatelessComponent {
  const KnowledgeAgentPage({super.key});

  @override
  Component build(BuildContext context) {
    return ProductPage(
      slug: 'knowledge-agent',
      chat: true,
      eyebrow: 'CU Chat / Internal Knowledge Agent',
      title: 'Your credit union’s knowledge,',
      titleAccent: 'when your staff need it.',
      lede:
          'Policies, procedures, product information and internal guidance contain everything your team needs to know. The Internal Knowledge Agent gives staff one place to ask questions and find answers from your own documents.',
      highlights: const [
        'Answers from your approved documents',
        'Works alongside SharePoint',
        'Review date reminders',
      ],
      mockup: knowledgeAgentMockup(),
      mockupLabel:
          'A staff workspace answering a policy question with a cited source document, a conflict alert and a review reminder',
      featuresEyebrow: 'More than a chatbot',
      featuresTitle:
          'Ask in plain English. Get answers from your own knowledge.',
      featuresBody:
          'Instead of searching through folders or asking a colleague, staff simply ask a question. The Internal Knowledge Agent searches your approved internal documents and gives a clear answer based on the information available to it.',
      features: const [
        (
          'question',
          'Ask questions about your documents',
          'Staff ask in natural language and get answers based on your internal knowledge, without searching through multiple documents.',
        ),
        (
          'layers',
          'Summarise lengthy documents',
          'Turn long policies, procedures and reports into concise summaries and key points, so staff understand what matters quickly.',
        ),
        (
          'search',
          'Find specific information',
          'Ask for a particular detail, requirement or process and let the Internal Knowledge Agent find it in your documentation.',
        ),
        (
          'compare',
          'Compare documents',
          'Compare policies, procedures or other documents to identify differences, changes and important points.',
        ),
        (
          'document',
          'Understand individual documents',
          'Ask questions about a specific document to understand what it says and what is relevant to you.',
        ),
        (
          'upload',
          'Work with uploaded documents',
          'Upload a document to summarise it, extract key information or ask questions. It stays in that conversation and does not join your permanent knowledge base.',
        ),
      ],
      afterFeatures: [_keepUpToDate()],
      stepsTitle: 'A better way to use what your team already knows.',
      steps: const [
        (
          'Book a call',
          'We show you how the Internal Knowledge Agent works with policies, procedures and guidance like yours.',
        ),
        (
          'Connect your documents',
          'It works alongside your existing document storage, such as SharePoint libraries, which remain the source of truth.',
        ),
        (
          'Staff start asking',
          'Your team asks questions in plain English and gets answers based on your approved knowledge.',
        ),
        (
          'Keep knowledge current',
          'Conflict checks and review reminders help you keep one consistent source of knowledge.',
        ),
      ],
      faqs: const [
        (
          'Where do the answers come from?',
          'From your credit union’s approved internal documents. The Internal Knowledge Agent answers based on the information available to it.',
        ),
        (
          'Do we need to move our documents?',
          'No. It can work alongside your existing document storage, such as SharePoint document libraries, so your existing systems remain the source of truth.',
        ),
        (
          'What happens to documents staff upload?',
          'Uploaded documents can be used within that conversation without becoming part of your permanent knowledge base.',
        ),
        (
          'How does it help keep documents up to date?',
          'When a new or updated document is added, it can identify existing documents that may contain conflicting information. It can also email a reminder two months before a policy or procedure is due for review.',
        ),
        (
          'Is our data used to train AI models?',
          'No. CU Apps has an enterprise-level AI agreement. Your documents and conversations are never used to train external AI models, and all data remains private to your credit union.',
        ),
        (
          'Do we need the member chatbot as well?',
          'No. The Internal Knowledge Agent is available as a standalone product, or alongside the Member-Facing AI Chatbot.',
        ),
      ],
      closingTitle: 'Give your staff a better way to find answers.',
      closingBody:
          'Your credit union has already invested in its policies and procedures. We will show how to make that knowledge easier to access, understand and keep up to date.',
    );
  }

  Component _keepUpToDate() {
    return section(classes: 'site-section ka-upkeep', [
      div(classes: 'site-container trust-grid', [
        sectionIntro(
          eyebrow: 'Keep your knowledge up to date',
          title: 'Answers are only as good as the documents behind them.',
          body:
              'Good internal knowledge is not just about finding information. It is about making sure what staff find is current and consistent.',
        ),
        div(classes: 'trust-list ka-upkeep-list', [
          _item(
            'layers',
            'Your systems stay the source of truth',
            'The Internal Knowledge Agent works alongside your existing document storage, such as SharePoint document libraries.',
          ),
          _item(
            'alert',
            'Spot conflicting information',
            'When a document is added or updated, it scans the wider knowledge base for documents that may conflict. Update your loan policy, and it can highlight others that still contain the previous requirements.',
          ),
          _item(
            'calendar',
            'Never forget a document review',
            'It monitors review dates and sends an email reminder two months before a policy or procedure is due, giving your team time to assess and update it.',
          ),
          _item(
            'check',
            'One consistent source',
            'Staff review flagged documents and update them where needed, reducing the risk of outdated information being left elsewhere.',
          ),
        ]),
      ]),
    ]);
  }

  Component _item(String icon, String title, String body) {
    return div(classes: 'trust-item ka-upkeep-item', [
      div(classes: 'feature-icon', [lineIcon(icon)]),
      h3([Component.text(title)]),
      p([Component.text(body)]),
    ]);
  }
}

/// Static HTML mockup of the staff-facing Internal Knowledge Agent workspace.
/// [compact] trims it for small card visuals.
Component knowledgeAgentMockup({bool compact = false}) {
  return div(classes: 'mock-window mock-ka${compact ? ' mock-window-sm' : ''}', [
    div(classes: 'mock-head', [
      div([
        span(classes: 'mock-label', [Component.text('Staff workspace')]),
        span(classes: 'mock-title', [Component.text('Knowledge Agent')]),
      ]),
      span(classes: 'mock-pill mock-pill-chat', [Component.text('Internal')]),
    ]),
    div(classes: 'mock-thread', [
      div(classes: 'mock-bubble mock-bubble-user mock-bubble-chat', [
        Component.text('What’s our maximum unsecured loan term?'),
      ]),
      div(classes: 'mock-bubble mock-ka-answer', [
        Component.text(
          compact
              ? 'The Lending Policy sets the maximum unsecured term.'
              : 'The Lending Policy sets the maximum term for unsecured loans, with longer terms needing approval.',
        ),
        span(classes: 'mock-ka-source', [
          Component.text('Lending Policy v4 · p.12'),
        ]),
      ]),
    ]),
    div(classes: 'mock-ka-alerts', [
      div(classes: 'mock-ka-alert mock-ka-alert-warn', [
        span(classes: 'mock-ka-dot', []),
        Component.text('2 documents may conflict with the updated loan policy'),
      ]),
      if (!compact)
        div(classes: 'mock-ka-alert', [
          span(classes: 'mock-ka-dot', []),
          Component.text('Savings procedure review due in 8 weeks'),
        ]),
    ]),
    if (!compact)
      div(classes: 'mock-input mock-ka-ask', [
        span([Component.text('Ask about a policy or procedure…')]),
        span(classes: 'mock-ka-upload', [Component.text('Upload')]),
      ]),
  ]);
}
