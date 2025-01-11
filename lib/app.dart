import 'package:cuapps_website/pages/app_features.dart';
import 'package:jaspr/jaspr.dart';
import 'package:jaspr_router/jaspr_router.dart';

import 'components/banner.dart';
import 'components/footer.dart';
import 'components/header.dart';
import 'pages/about.dart';
import 'pages/contact_us.dart';
import 'pages/error.dart';
import 'pages/free_demo.dart';
import 'pages/home.dart';

@client
class App extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(attributes: {
      'data-theme': 'winter'
    }, [
      Router(
        routes: [
          ShellRoute(
            builder: (context, state, child) => Fragment(children: [
              Banner(),
              Header(),
              child,
              Footer(),
            ]),
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
              Route(
                  path: '/free-demo',
                  title: 'Free Demo',
                  builder: (context, state) => FreeDemo()),
            ],
          ),
          Route(path: '/*', builder: (context, state) => Error404()),
        ],
        errorBuilder: (context, state) => Error404(),
      ),
    ]);
  }
}
