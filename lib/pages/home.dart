import 'dart:js' as js;

import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      HeaderSection(),
      LogoSection(),
      TestimonialsSection(),
    ]);
  }
}

class HeaderSection extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      div([
        div([],
            styles: Styles.raw({
              'clip-path':
                  'polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)'
            }),
            classes:
                'relative left-[calc(50%-11rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-[#ff80b5] to-[#9089fc] opacity-30 sm:left-[calc(50%-30rem)] sm:w-[72.1875rem]'),
      ],
          classes:
              'absolute inset-x-0 -top-40 -z-10 transform-gpu overflow-hidden blur-3xl sm:-top-80'),
      div(classes: 'text-center mt-5 py-10 sm:py-16', [
        h1(
            classes:
                'text-4xl font-bold tracking-tight text-gray-900 sm:text-6xl',
            [
              text(
                  'Revolutionising mutuals through premium, affordable and bespoke mobile applications')
            ]),
        ConsultationButton(),
      ]),
      div([
        div([],
            styles: Styles.raw({
              'clip-path':
                  'polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)'
            }),
            classes:
                'relative left-[calc(50%-11rem)] aspect-[1155/678] w-[36.125rem] -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-[#ff80b5] to-[#9089fc] opacity-30 sm:left-[calc(50%-30rem)] sm:w-[72.1875rem]')
      ],
          classes:
              'absolute inset-x-0 top-[calc(100%-13rem)] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[calc(100%-30rem)]')
    ], classes: 'relative isolate px-6 pt-14 lg:px-8');
  }
}

class ConsultationButton extends StatefulComponent {
  const ConsultationButton({super.key});

  @override
  State<ConsultationButton> createState() => _ConsultationButtonState();
}

class _ConsultationButtonState extends State<ConsultationButton> {
  bool dialogOpen = false;
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div(classes: 'mt-10 flex items-center justify-center gap-x-6', [
      button(
        id: 'consultation-button',
        type: ButtonType.button,
        classes:
            'rounded-md bg-blue-600 px-3.5 py-2.5 text-sm font-semibold text-white shadow-sm hover:bg-blue-500 focus-visible:outline focus-visible:outline-2 focus-visible:outline-offset-2 focus-visible:outline-blue-600',
        [text('Get A Free Consultation')],
        onClick: () {
          js.context.callMethod('open',
              ['https://cuapps.co.uk/free-credit-union-app-demo/', '_blank']);
        },
        // onClick: () => window.open('https://cuapps.co.uk/free-credit-union-app-demo/', '_blank')
        //href: 'https://cuapps.co.uk/free-credit-union-app-demo/'
        // onClick: () {
        //   setState(() => dialogOpen = true);
        //   document.getElementById('consultation-button')!.addEventListener(
        //       'click',
        //       (event) => document
        //           .getElementById('consultation-dialog')!
        //           .setAttribute('open', 'true'));
        //   setState(() {
        //     consultationDialog(dialogOpen);
        //   });
        // },
      ),
    ]);
  }

  Component consultationDialog(bool dialogOpen) {
    return dialog(
        open: dialogOpen,
        id: 'consultation-dialog',
        classes: 'fixed inset-0 z-50 overflow-y-auto rounded',
        [
          h2([text('Get A Free Consultation')]),
          text('This is going to hold a dialog for the Calendly invite')
        ]);
  }
}

class LogoSection extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield div([
      div([
        h2([text('Trusted by leading credit unions in the UK')],
            classes:
                'text-center block antialiased tracking-normal font-sans font-semibold text-blue-gray-900 my-4 !text-2xl !leading-snug lg:!text-3xl'),
        p([
          text(
              'We are proud to have worked with some of the leading credit unions in the UK, helping them to revolutionise their digital presence and provide a better service to their members.')
        ], classes: 'text-center mt-10 text-base font-medium text-gray-500'),
        div([
          logoBuilder(
              imgSrc:
                  'https://cuapps.co.uk/wp-content/uploads/2020/12/Serve-and-Protect-Credit-Union.jpg'),
          logoBuilder(imgSrc: 'images/cu_logo.png'),
          logoBuilder(imgSrc: 'images/cu_logo.png'),
          logoBuilder(
              imgSrc:
                  'https://cuapps.co.uk/wp-content/uploads/2019/11/enterprise_credit_union.jpg'),
          logoBuilder(imgSrc: 'images/cu_logo.png'),
          logoBuilder(imgSrc: 'images/cu_logo.png'),
          logoBuilder(imgSrc: 'images/cu_logo.png'),
          logoBuilder(imgSrc: 'images/cu_logo.png'),
          logoBuilder(imgSrc: 'images/cu_logo.png'),
          logoBuilder(
              imgSrc:
                  'https://cuapps.co.uk/wp-content/uploads/2019/11/scottish_police_credit_union.png'),
        ],
            classes:
                'mx-auto mt-10 grid max-w-lg grid-cols-4 items-center gap-x-8 gap-y-10 sm:max-w-xl sm:grid-cols-6 sm:gap-x-10 lg:mx-0 lg:max-w-none lg:grid-cols-5'),
        p([text('and many more')],
            classes: 'text-center mt-10 text-base font-medium text-gray-500'),
      ], classes: 'mx-auto max-w-7xl px-6 lg:px-8'),
    ], classes: 'bg-white mt-5 py-10 sm:py-16');
  }

  Component logoBuilder({required String imgSrc}) {
    return a([
      img(
          src: imgSrc,
          alt: 'ABCUL',
          classes:
              'col-span-2 max-h-12 w-full object-contain lg:col-span-1 grey-scale',
          height: 48,
          width: 158)
    ], href: '#');
  }
}

class TestimonialsSection extends StatelessComponent {
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div([
        div([
          div([
            h2([text('What our clients say about us')],
                classes: 'text-4xl font-bold'),
            p([
              text(
                  'We are proud of our work so much so that our clients are happy to share their experiences with us.')
            ], classes: 'mt-6 text-xl leading-8 text-gray-700 text-center')
          ],
              classes:
                  'max-w-2xl mx-auto my-8 space-y-4 text-center xl:col-span-2 xl:text-left'),
          div([
            div([
              div([
                testimonialBuilder(
                    testimonial:
                        'Being in the financial industry, we were always looking for ways to enhance our transactions\' security and efficiency.',
                    name: 'Michael Andreuzza',
                    role: 'CEO',
                    image: 'https://source.unsplash.com/50x50/?portrait?1'),
                testimonialBuilder(
                    testimonial:
                        "Implementing Semplice's blockchain technology has been a game-changer for our supply chain management. We have seen a 30% increase in efficiency and a 20% decrease in costs.",
                    name: 'Michael Andreuzza',
                    role: 'CEO',
                    image: 'https://source.unsplash.com/50x50/?portrait?1'),
              ], classes: 'grid content-center gap-4'),
              div([
                testimonialBuilder(
                    testimonial:
                        "We have been using Semplice's services for over 5 years now and we have never been disappointed. Their customer service is top-notch and their products are always cutting-edge.",
                    name: 'Michael Andreuzza',
                    role: 'CEO',
                    image: 'https://source.unsplash.com/50x50/?portrait?1'),
                testimonialBuilder(
                    testimonial:
                        "Semplice's team is always available to help us with any issues we may have. They are professional, knowledgeable, and always go above and beyond to help us.",
                    name: 'Michael Andreuzza',
                    role: 'CEO',
                    image: 'https://source.unsplash.com/50x50/?portrait?1'),
              ], classes: 'grid content-center gap-4')
            ], classes: 'grid gap-4 md:grid-cols-2')
          ], classes: 'p-6 xl:col-span-3')
        ], classes: 'grid items-center gap-4 xl:grid-cols-5')
      ], classes: 'mx-auto max-w-7xl px-6 lg:px-8'),
    ], classes: 'bg-white mt-5 py-10 sm:py-16');
  }

  Component testimonialBuilder(
      {required String testimonial,
      required String name,
      required String role,
      required String image}) {
    return div([
      p([text(testimonial)]),
      div([
        img(
            src: image,
            classes: 'w-12 h-12 bg-center bg-cover rounded-full bg-gray-500'),
        div([
          blockquote([
            p([text(name)], classes: 'font-semibold text-lg'),
          ]),
          p([text(role)], classes: 'text-gray-500 text-sm')
        ], classes: 'flex-shrink-0'),
      ], classes: 'inline-flex items-center gap-3 mt-4')
    ], classes: 'p-6 rounded shadow-md bg-gray-50');
  }
}
