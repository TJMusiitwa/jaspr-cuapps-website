import 'package:jaspr/jaspr.dart';

class ContactUs extends StatelessComponent {
  const ContactUs({super.key});
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(
          classes:
              'grid max-w-6xl grid-cols-1 px-6 mx-auto lg:px-8 md:grid-cols-2 ',
          [
            div(classes: 'py-6 md:py-0 md:px-6 h-full', [
              div(
                  id: 'left-side',
                  classes:
                      'col-span-1 absolute inset-y-0 left-0 isolate w-1/2 px-6 sm:py-32 h-full',
                  [
                    div(
                        id: 'background',
                        classes:
                            'absolute inset-x-0 top-[-10rem] -z-10 transform-gpu overflow-hidden blur-3xl sm:top-[-20rem]',
                        [
                          div(
                              classes:
                                  'relative left-1/2 -z-10 aspect-[1155/678] w-[36.125rem] max-w-none -translate-x-1/2 rotate-[30deg] bg-gradient-to-tr from-[#ff80b5] to-[#9089fc] opacity-30 sm:left-[calc(50%-40rem)] sm:w-[72.1875rem]',
                              styles: Styles.raw({
                                'clip-path':
                                    'polygon(74.1% 44.1%, 100% 61.6%, 97.5% 26.9%, 85.5% 0.1%, 80.7% 2%, 72.5% 32.5%, 60.2% 62.4%, 52.4% 68.1%, 47.5% 58.3%, 45.2% 34.5%, 27.5% 76.7%, 0.1% 64.9%, 17.9% 100%, 27.6% 76.8%, 76.1% 97.7%, 74.1% 44.1%)'
                              }),
                              []),
                        ]),
                    div(id: 'title', classes: 'mx-auto max-w-2xl text-left', [
                      h2(
                          classes:
                              'text-3xl font-bold tracking-tight text-gray-900 sm:text-4xl',
                          [
                            text(
                                'Need a Quote? Have a General Question? Get in Touch!')
                          ]),
                      p(classes: 'mt-2 text-lg leading-8 text-gray-600', [
                        text(
                            'We’re here to help your credit union provide an amazing experience to your members by exclusively focusing on member facing technology – credit union mobile banking apps and chatbots for credit unions.')
                      ]),
                    ]),
                    div(classes: 'flex px-6 mt-10', [
                      span([
                        svg([
                          path(
                              strokeWidth: '1.5',
                              d:
                                  'M2.25 21h19.5m-18-18v18m10.5-18v18m6-13.5V21M6.75 6.75h.75m-.75 3h.75m-.75 3h.75m3-6h.75m-.75 3h.75m-.75 3h.75M6.75 21v-3.375c0-.621.504-1.125 1.125-1.125h2.25c.621 0 1.125.504 1.125 1.125V21M3 3h12m-.75 4.5H21m-3.75 3.75h.008v.008h-.008v-.008Zm0 3h.008v.008h-.008v-.008Zm0 3h.008v.008h-.008v-.008Z',
                              [],
                              styles: Styles.raw({
                                'stroke-linecap': "round",
                                'stroke-linejoin': "round"
                              }))
                        ],
                            viewBox: '0 0 24 24',
                            classes: 'w-6 h-6',
                            styles: Styles.raw(
                                {'fill': 'none', 'stroke': 'currentColor'}))
                      ]),
                      a(
                          classes: 'pl-5',
                          [
                            text('70 West Regent Street'),
                            br(),
                            text('Glasgow'),
                            br(),
                            text('G2 2QZ')
                          ],
                          href: 'https://www.g.page/cu-apps')
                    ]),
                    div(classes: 'flex px-6 mt-5', [
                      span([
                        svg([
                          path(
                              strokeWidth: '1.5',
                              d:
                                  'M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 0 0 2.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 0 1-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 0 0-1.091-.852H4.5A2.25 2.25 0 0 0 2.25 4.5v2.25Z',
                              [],
                              styles: Styles.raw({
                                'stroke-linecap': "round",
                                'stroke-linejoin': "round"
                              }))
                        ],
                            viewBox: '0 0 24 24',
                            classes: 'w-6 h-6',
                            styles: Styles.raw(
                                {'fill': 'none', 'stroke': 'currentColor'}))
                      ]),
                      a(
                          classes: 'pl-5',
                          [text('0141 266 0189')],
                          href: 'tel:0141 266 0189'),
                    ]),
                    div(classes: 'flex px-6 mt-5', [
                      span([
                        svg([
                          path(
                              strokeWidth: '1.5',
                              d:
                                  'M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75',
                              [],
                              styles: Styles.raw({
                                'stroke-linecap': "round",
                                'stroke-linejoin': "round"
                              }))
                        ],
                            viewBox: '0 0 24 24',
                            classes: 'w-6 h-6',
                            styles: Styles.raw(
                                {'fill': 'none', 'stroke': 'currentColor'}))
                      ]),
                      a(
                          classes: 'pl-5',
                          [text('hello@cuapps.co.uk')],
                          href: 'mailto:hello@cuapps.co.uk')
                    ]),
                  ]),
            ]),
            div([
              form(
                  id: 'contact_form',
                  action: '#',
                  method: FormMethod.post,
                  //classes: 'flex flex-col py-6 space-y-6 md:py-0 md:px-6',
                  classes: ' flex flex-col mx-auto mt-16 max-w-xl sm:mt-20',
                  [
                    div(
                        classes:
                            'grid grid-cols-1 gap-x-8 gap-y-6 sm:grid-cols-2',
                        [
                          div([
                            label(
                                htmlFor: 'name',
                                classes:
                                    'block text-sm font-semibold leading-6 text-gray-900',
                                [text('Name')]),
                            div(classes: 'mt-2.5', [
                              input(
                                  id: 'name',
                                  name: 'Name',
                                  type: InputType.text,
                                  attributes: {'required': 'required'},
                                  classes:
                                      'block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6',
                                  [])
                            ])
                          ]),
                          div([
                            label(
                                htmlFor: 'email',
                                classes:
                                    'block text-sm font-semibold leading-6 text-gray-900',
                                [text('Email')]),
                            div(classes: 'mt-2.5', [
                              input(
                                  id: 'email',
                                  name: 'Email',
                                  type: InputType.email,
                                  attributes: {'required': 'required'},
                                  classes:
                                      'block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6',
                                  [])
                            ])
                          ]),
                          div(classes: 'sm:col-span-2', [
                            label(
                                htmlFor: 'company',
                                classes:
                                    'block text-sm font-semibold leading-6 text-gray-900',
                                [text('Company')]),
                            div(classes: 'mt-2.5', [
                              input(
                                  id: 'company',
                                  name: 'Company',
                                  type: InputType.text,
                                  classes:
                                      'block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6',
                                  [])
                            ])
                          ]),
                          div(classes: 'sm:col-span-2', [
                            label(
                                htmlFor: 'message',
                                classes:
                                    'block text-sm font-semibold leading-6 text-gray-900',
                                [text('Message')]),
                            div(classes: 'mt-2.5', [
                              textarea(
                                  id: 'message',
                                  name: 'Message',
                                  classes:
                                      'block w-full rounded-md border-0 px-3.5 py-2 text-gray-900 shadow-sm ring-1 ring-inset ring-gray-300 placeholder:text-gray-400 focus:ring-2 focus:ring-inset focus:ring-indigo-600 sm:text-sm sm:leading-6',
                                  [])
                            ])
                          ]),
                        ]),
                    div(classes: 'mt-10', [
                      button(
                          type: ButtonType.submit,
                          classes:
                              'inline-flex items-center justify-center w-full px-6 py-3 text-base font-semibold leading-6 text-white transition duration-150 ease-in-out bg-blue-600 border border-transparent rounded-md shadow-sm hover:bg-blue-700 focus:outline-none focus:border-blue-700 focus:shadow-outline-indigo active:bg-blue-700',
                          [text('Send Message')])
                    ])
                  ]),
            ],
                classes:
                    'col-span-2 absolute right-0 isolate inset-y-0 px-4 py-8 w-1/2 h-full')
          ])
    ], id: 'contact_us', classes: 'py-6');
  }
}
