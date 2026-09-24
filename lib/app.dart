import 'package:cuapps_website/pages/app_features.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'pages/about.dart';
import 'pages/contact_us.dart';
import 'pages/case_studies.dart';
import 'pages/cu_chat/ai_chatbot.dart';
import 'pages/cu_chat/cu_chat_page.dart';
import 'pages/cu_chat/knowledge_agent.dart';
import 'pages/cu_chat/stories.dart';
import 'pages/cu_chat/voice.dart';
import 'pages/error.dart';
import 'pages/free_demo.dart';
import 'pages/home.dart';
import 'pages/products/agm_hub.dart';
import 'pages/products/cu_flow.dart';
import 'pages/products/loan_calculators.dart';
import 'pages/products/member_origination.dart';

@client
class App extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return div([
      Router(
        routes: [
          ShellRoute(
            builder: (context, state, child) {
              // CU Chat pages adopt the purple brand shell.
              final chat = state.location.startsWith('/cu-chat');
              return Component.fragment([
                const Header(),
                div(id: 'content', attributes: {'tabindex': '-1'}, [child]),
                Footer(chat: chat),
              ]);
            },
            routes: [
              Route(
                path: '/',
                title: 'Home',
                builder: (context, state) => const Home(),
              ),
              Route(
                path: '/app-features',
                title: 'Features',
                builder: (context, state) => AppFeatures(),
              ),
              Route(
                path: '/about',
                title: 'About',
                builder: (context, state) => const About(),
              ),
              Route(
                path: '/contact-us',
                title: 'Contact Us',
                builder: (context, state) => ContactUs(),
              ),
              Route(
                path: '/case-studies',
                title: 'Client stories',
                builder: (context, state) => const CaseStudies(),
              ),
              Route(
                path: '/free-demo',
                title: 'Book a call',
                builder: (context, state) => FreeDemo(),
              ),
              Route(
                path: '/cu-chat',
                title: 'CU Chat',
                builder: (context, state) => const CuChatPage(),
              ),
              Route(
                path: '/cu-chat/ai-chatbot',
                title: 'AI Chatbot',
                builder: (context, state) => const AiChatbotPage(),
              ),
              Route(
                path: '/cu-chat/knowledge-agent',
                title: 'Internal Knowledge Agent',
                builder: (context, state) => const KnowledgeAgentPage(),
              ),
              Route(
                path: '/cu-chat/voice',
                title: 'CU Voice',
                builder: (context, state) => const CuVoicePage(),
              ),
              Route(
                path: '/cu-chat/stories',
                title: 'CU Chat client stories',
                builder: (context, state) => const CuChatStoriesPage(),
              ),
              Route(
                path: '/agm-hub',
                title: 'AGM Hub',
                builder: (context, state) => const AgmHubPage(),
              ),
              Route(
                path: '/loan-calculators',
                title: 'Loan Calculators',
                builder: (context, state) => const LoanCalculatorsPage(),
              ),
              Route(
                path: '/member-origination',
                title: 'Origination & Applications',
                builder: (context, state) => const MemberOriginationPage(),
              ),
              Route(
                path: '/cu-flow',
                title: 'CU Flow',
                builder: (context, state) => const CuFlowPage(),
              ),
              Route(
                path: '/*',
                title: 'Page not found',
                builder: (context, state) => const Error404(),
              ),
            ],
          ),
        ],
        errorBuilder: (context, state) => Component.fragment([
          const Header(),
          div(
            id: 'content',
            attributes: {'tabindex': '-1'},
            [const Error404()],
          ),
          const Footer(),
        ]),
      ),
    ]);
  }
}
