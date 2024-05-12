import 'package:cuapps_website/pages/app_features.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/footer.dart';
import 'components/header.dart';
import 'pages/about.dart';
import 'pages/contact_us.dart';
import 'pages/error.dart';
import 'pages/home.dart';

@client
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'main', [
      Router(
        routes: [
          ShellRoute(
            builder: (context, state, child) =>
                Builder(builder: (context) sync* {
              yield div([
                Header(),
                child,
                Footer(),
              ], classes: 'relative');
            }),
            routes: [
              Route(
                  path: '/',
                  title: 'Home',
                  builder: (context, state) => const Home()),
              Route(
                  path: '/app-features',
                  title: 'Features',
                  builder: (context, state) => AppFeatures()),
              Route(
                  path: '/about',
                  title: 'About',
                  builder: (context, state) => const About()),
              Route(
                  path: '/contact-us',
                  title: 'Contact Us',
                  builder: (context, state) => ContactUs()),
            ],
          ),
        ],
        errorBuilder: (context, state) => Error404(),
      ),
    ]);
  }

  static get styles => [
        css('.main', [
          css('&')
              .box(height: 100.vh)
              .flexbox(direction: FlexDirection.column, wrap: FlexWrap.wrap),
          css('section').flexItem(flex: Flex(grow: 1)).flexbox(
                direction: FlexDirection.column,
                justifyContent: JustifyContent.center,
                alignItems: AlignItems.center,
              ),
        ]),
        //...Header.styles,
        //...Home.styles,
        //...About.styles,
      ];
}
