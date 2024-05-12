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
    head: [
      link(href: 'https://cdn.tailwindcss.com'),
      script([], src: 'https://cdn.tailwindcss.com')
    ],
    styles: styles,
    body: App(),
  ));
}
