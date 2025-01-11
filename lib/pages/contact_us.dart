import 'package:jaspr/jaspr.dart';

class ContactUs extends StatelessComponent {
  const ContactUs({super.key});
  @override
  Iterable<Component> build(BuildContext context) sync* {
    yield section([
      div(
        classes: 'max-w-[85rem] px-4 py-10 sm:px-6 lg:px-8 lg:py-14 mx-auto',
        [
          div(classes: 'max-w-2xl lg:max-w-5xl mx-auto', [
            div(classes: 'text-center', [
              h1(
                  classes:
                      'text-3xl font-bold text-gray-800 sm:text-4xl dark:text-white',
                  [
                    text('Need a Quote? Have a General Question? Get in Touch!')
                  ]),
              p(classes: 'mt-1 text-gray-600 dark:text-neutral-400', [
                text(
                    'We’re here to help your credit union provide an amazing experience to your members by exclusively focusing on member facing technology – credit union mobile banking apps and chatbots for credit unions.')
              ])
            ]),
            div(
                classes:
                    'mt-12 grid items-center lg:grid-cols-2 gap-6 lg:gap-16',
                [
                  div(classes: 'flex flex-col p-4 sm:p-6 lg:p-8', [
                    form(
                        method: FormMethod.post,
                        autoComplete: AutoComplete.on,
                        name: 'contact-form',
                        [
                          div(classes: 'grid gap-4', [
                            div(
                                classes:
                                    'grid grid-cols-1 sm:grid-cols-2 gap-4',
                                [
                                  input(
                                      type: InputType.text,
                                      name: 'name',
                                      classes: 'input input-bordered w-full',
                                      attributes: {
                                        'placeholder': 'Name',
                                        'required': 'true',
                                      },
                                      []),
                                  input(
                                      type: InputType.email,
                                      name: 'email',
                                      classes: 'input input-bordered w-full',
                                      attributes: {
                                        'placeholder': 'Email',
                                        'required': 'true',
                                      },
                                      []),
                                ]),
                            input(
                                classes: 'input input-bordered w-full',
                                type: InputType.text,
                                attributes: {'placeholder': 'Company'},
                                []),
                            textarea(
                                classes:
                                    'textarea textarea-bordered textarea-lg',
                                placeholder: 'Message',
                                required: true,
                                []),
                            div(classes: 'mt-4 grid', [
                              button(
                                  classes: 'btn btn-secondary btn-wide',
                                  type: ButtonType.submit,
                                  [text('Send Message')])
                            ])
                          ])
                        ])
                  ]),
                  div(classes: 'divide-y divide-neutral-content', [
                    div(
                      [
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
                                {'fill': 'none', 'stroke': 'currentColor'})),
                        div(
                          [
                            h3(
                              [text('Our Address')],
                              classes:
                                  'font-semibold text-gray-800 dark:text-neutral-200',
                            ),
                            a(
                                classes: 'mt-1 text-sm text-base-content',
                                [
                                  text('70 West Regent Street'),
                                  br(),
                                  text('Glasgow'),
                                  br(),
                                  text('G2 2QZ')
                                ],
                                href: 'https://www.g.page/cu-apps')
                          ],
                          classes: 'grow',
                        ),
                      ],
                      classes: 'flex gap-x-7 py-6',
                    ),
                    div(
                      [
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
                                {'fill': 'none', 'stroke': 'currentColor'})),
                        div(
                          [
                            h3(
                              [text('Call Us')],
                              classes:
                                  'font-semibold text-gray-800 dark:text-neutral-200',
                            ),
                            a(
                                classes: 'mt-1 text-sm text-base-content',
                                [text('0141 266 0189')],
                                href: 'tel:0141 266 0189')
                          ],
                          classes: 'grow',
                        ),
                      ],
                      classes: 'flex gap-x-7 py-6',
                    ),
                    div(
                      [
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
                                {'fill': 'none', 'stroke': 'currentColor'})),
                        div(
                          [
                            h3(
                              [text('Email Us')],
                              classes:
                                  'font-semibold text-gray-800 dark:text-neutral-200',
                            ),
                            a(
                                classes: 'mt-1 text-sm text-base-content',
                                [text('hello@cuapps.co.uk')],
                                href: 'mailto:hello@cuapps.co.uk')
                          ],
                          classes: 'grow',
                        ),
                      ],
                      classes: 'flex gap-x-7 py-6',
                    ),
                  ])
                ])
          ])
        ],
      )
    ], id: 'contact_us');
  }
}
