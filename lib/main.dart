import 'package:jaspr/server.dart';

import 'app.dart';
import 'jaspr_options.dart';
import 'styles.dart';

void main() {
  Jaspr.initializeApp(options: defaultJasprOptions);

  runApp(Document(
    title: 'CU Apps',
    lang: 'en',
    charset: 'UTF-8',
    viewport: 'width=device-width, initial-scale=1.0',
    meta: {
      'description':
          'CU Apps offer Premium and Affordable Bespoke Mobile Apps for Financial Mutuals',
      'author': 'CU Apps',
      'keywords': 'CU Apps, Mobile Apps, Financial Mutuals, Bespoke Apps',
      'og:title': 'CU Apps',
      'og:description':
          'CU Apps offer Premium and Affordable Bespoke Mobile Apps for Financial Mutuals',
      'og:image': 'https://cuapps.co.uk/assets/images/cuapps-logo.png',
    },
    head: [
      // link(href: 'https://cdn.tailwindcss.com'),
      // script([], src: 'https://cdn.tailwindcss.com'),
      link(href: 'styles.css', rel: 'stylesheet'),
      script([],
          defer: true,
          src: 'https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js')
    ],
    styles: styles,
    body: App(),
  ));
}
