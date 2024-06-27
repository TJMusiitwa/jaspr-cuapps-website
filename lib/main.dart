import 'package:jaspr/server.dart';

import 'app.dart';
import 'jaspr_options.dart';
import 'styles.dart';

void main() {
  Jaspr.initializeApp(
    options: defaultJasprOptions,
  );

  runApp(Document(
    title: 'CU Apps',
    lang: 'en',
    head: [
      link(href: 'styles.css', rel: 'stylesheet'),
      script([],
          defer: true,
          src: 'https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js')
    ],
    styles: styles,
    body: App(),
  ));
}
