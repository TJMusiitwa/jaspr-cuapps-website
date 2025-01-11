import 'package:jaspr/server.dart';

import 'app.dart';
import 'jaspr_options.dart';

void main() {
  Jaspr.initializeApp(options: defaultJasprOptions);

  runApp(Document(
    title: 'CU Apps',
    lang: 'en',
    charset: 'UTF-8',
    viewport: 'width=device-width, initial-scale=1.0',
    // meta: {
    //   'description':
    //       'CU Apps offer Premium and Affordable Bespoke Mobile Apps for Financial Mutuals',
    //   'author': 'CU Apps',
    //   'keywords': 'CU Apps, Mobile Apps, Financial Mutuals, Bespoke Apps',
    //   'og:title': 'CU Apps',
    //   'og:description':
    //       'CU Apps offer Premium and Affordable Bespoke Mobile Apps for Financial Mutuals',
    //   'og:image': 'https://cuapps.co.uk/assets/images/cuapps-logo.png',
    // },
    head: [
      link(href: 'styles.css', rel: 'stylesheet'),
      link(
          href:
              'https://cdn.jsdelivr.net/npm/daisyui@4.12.14/dist/full.min.css',
          rel: 'stylesheet',
          type: 'text/css'),
      script(src: 'https://cdn.tailwindcss.com', []),
    ],
    body: App(),
  ));
}
