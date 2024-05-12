import 'package:jaspr/jaspr.dart';

class Error404 extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(
        id: '404_page',
        classes:
            'grid min-h-full grid-cols-1 grid-rows-[1fr,auto,1fr] bg-white lg:grid-cols-[max(50%,36rem),1fr]',
        [
          main_(
              classes:
                  'w-full px-6 py-24 mx-auto max-w-7xl sm:py-32 lg:col-span-2 lg:col-start-1 lg:row-start-2 lg:px-24',
              [
                div(classes: 'max-w-lg', [
                  p(
                      classes:
                          'text-base font-semibold leading-8 text-gray-400',
                      [text('404 😢')]),
                  h1(
                      classes:
                          'mt-4 text-3xl font-bold tracking-tight text-gray-900 sm:text-5xl',
                      [text('Page not found.')]),
                  p(classes: 'mt-6 text-base leading-7 text-gray-600', [
                    text('Sorry, we couldn’t find the page you’re looking for.')
                  ]),
                  div(classes: 'mt-6', [
                    a(
                        classes:
                            'text-base font-medium text-indigo-600 hover:text-indigo-500',
                        [text('Go back to the home page')],
                        href: '/')
                  ])
                ])
              ]),
          div(
              classes:
                  'hidden lg:relative lg:col-start-2 lg:row-start-1 lg:row-end-4 lg:block',
              [
                img(
                    src:
                        'https://images.unsplash.com/photo-1470847355775-e0e3c35a9a2c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1825&q=80',
                    classes: 'absolute inset-0 object-cover w-full h-full')
              ])
        ]);
  }
}
