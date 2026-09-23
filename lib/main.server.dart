import 'package:cuapps_website/main.server.options.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/server.dart';

import 'app.dart';

void main() {
  Jaspr.initializeApp(options: defaultServerOptions);

  runApp(
    Document(
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
      //   'og:image': 'https://cuapps.co.uk/assets/images/cuapps-logo.webp',
      // },
      head: [
        link(
          href: '/fonts/outfit-latin.woff2',
          rel: 'preload',
          type: 'font/woff2',
          as: 'font',
          attributes: {'crossorigin': ''},
        ),
        link(href: '/theme.css', rel: 'stylesheet', type: 'text/css'),
        link(href: '/products.css', rel: 'stylesheet', type: 'text/css'),
        link(href: '/motion.css', rel: 'stylesheet', type: 'text/css'),
        script(src: '/motion.js', defer: true),
        script(src: '/nav.js', defer: true),
      ],
      body: App(),
    ),
  );
}
