import 'package:cuapps_website/pages/app_features.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/demo_banner.dart';
import 'components/footer.dart';
import 'components/header.dart';
import 'components/ui.dart';
import 'pages/about.dart';
import 'pages/case_studies.dart';
import 'pages/contact_us.dart';
import 'pages/cu_chat/ai_chatbot.dart';
import 'pages/cu_chat/cu_chat_page.dart';
import 'pages/cu_chat/for_members.dart';
import 'pages/cu_chat/impact_calculator.dart';
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
              final chat =
                  state.location.startsWith('/cu-chat') ||
                  state.location.startsWith('/ai-assistant-for-members');
              return Component.fragment([
                skipLink(state.location),
                const DemoBanner(),
                Header(chat: chat, path: state.location),
                div(id: 'content', attributes: {'tabindex': '-1'}, [child]),
                Footer(chat: chat),
              ]);
            },
            routes: [
              Route(
                path: '/',
                title: 'CU Apps | Digital products for mutuals',
                builder: (context, state) => const Home(),
              ),
              Route(
                path: '/app-features',
                title: 'Member app features | CU Apps',
                builder: (context, state) => AppFeatures(),
              ),
              Route(
                path: '/about',
                title: 'About | CU Apps',
                builder: (context, state) => const About(),
              ),
              Route(
                path: '/contact-us',
                title: 'Contact Us | CU Apps',
                builder: (context, state) => ContactUs(),
              ),
              Route(
                path: '/case-studies',
                title: 'Client stories | CU Apps',
                builder: (context, state) => const CaseStudies(),
              ),
              Route(
                path: '/free-demo',
                title: 'Book a call | CU Apps',
                builder: (context, state) => FreeDemo(),
              ),
              Route(
                path: '/cu-chat',
                title: 'CU Chat | AI for credit unions',
                builder: (context, state) => const CuChatPage(),
              ),
              Route(
                path: '/cu-chat/ai-chatbot',
                title: 'Member-facing AI Chatbot | CU Chat',
                builder: (context, state) => const AiChatbotPage(),
              ),
              Route(
                path: '/cu-chat/impact-calculator',
                title: 'Impact calculator | CU Chat',
                builder: (context, state) => const ImpactCalculatorPage(),
              ),
              Route(
                path: '/cu-chat/knowledge-agent',
                title: 'Internal Knowledge Agent | CU Chat',
                builder: (context, state) => const KnowledgeAgentPage(),
              ),
              Route(
                path: '/cu-chat/voice',
                title: 'CU Voice | CU Chat',
                builder: (context, state) => const CuVoicePage(),
              ),
              // Linked from inside the chat widget on the old cu.chat site,
              // so it keeps its original top-level path.
              Route(
                path: '/ai-assistant-for-members',
                title: 'AI assistant for members | CU Chat',
                builder: (context, state) => const ForMembersPage(),
              ),
              Route(
                path: '/cu-chat/stories',
                title: 'Client stories | CU Chat',
                builder: (context, state) => const CuChatStoriesPage(),
              ),
              Route(
                path: '/agm-hub',
                title: 'AGM Hub | CU Apps',
                builder: (context, state) => const AgmHubPage(),
              ),
              Route(
                path: '/loan-calculators',
                title: 'Loan Calculators | CU Apps',
                builder: (context, state) => const LoanCalculatorsPage(),
              ),
              Route(
                path: '/member-origination',
                title: 'Origination & Applications | CU Apps',
                builder: (context, state) => const MemberOriginationPage(),
              ),
              Route(
                path: '/cu-flow',
                title: 'CU Flow | CU Apps',
                builder: (context, state) => const CuFlowPage(),
              ),
              Route(
                path: '/*',
                title: 'Page not found | CU Apps',
                builder: (context, state) => const Error404(),
              ),
            ],
          ),
        ],
        errorBuilder: (context, state) => Component.fragment([
          skipLink(state.location),
          const DemoBanner(),
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
