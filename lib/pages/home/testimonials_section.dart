import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class TestimonialsSection extends StatelessComponent {
  @override
  Component build(BuildContext context) {
    return section([
      div([
        div(classes: 'mx-auto max-w-screen-sm text-center mb-16', [
          h2(
            classes:
                'mb-4 text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl',
            [Component.text('We have worked with')],
          ),
          h2(
            classes:
                'mb-8 text-4xl tracking-tight font-extrabold text-gray-900 sm:text-5xl',
            [Component.text('thousands of amazing people')],
          ),
        ]),

        // Responsive asymmetric grid layout for testimonials
        div([
          // Left column
          div([
            // Leslie Alexander testimonial
            testimonialBuilder(
              testimonial:
                  'Working with CU Apps was a fantastic experience. Their attention to detail and commitment to delivering what we needed was exceptional and I would have no hesitation in recommending them to any potential clients.',
              name: 'George Nedley',
              role: 'CEO | Scottish Police Credit Union',
              company: 'spcu',
              featured: true,
            ),

            // Michael Foster testimonial
            testimonialBuilder(
              testimonial:
                  'Our members love the app and the ability to access their account so easily. The app is an essential tool for us in our member communication, and enables us to offer the kind of services they want. CU Apps offer a sterling service and we work with them regularly to improve our member experience.',
              name: 'Chris Canham',
              role: 'CEO | Hoot Credit Union',
              company: 'hocu',
              featured: true,
            ),

            // Dries Vincent testimonial
            testimonialBuilder(
              testimonial:
                  'Declan and the team at CU Apps have been a great help since our first discussion about launching a mobile banking App. They have been open, honest, professional and helpful every step of the way and have made what could have appeared a daunting process one that we have managed with relative ease. I look forward to a successful working relationship continuing for many years to come',
              name: 'Logan Taylor',
              role: 'Marketing Consultant | NHS Credit Union',
              company: 'nhscu',
              featured: true,
            ),
          ], classes: 'flex flex-col gap-8 lg:w-1/3'),

          // Center column
          div([
            div(classes: 'flex items-center justify-center h-full py-6', [
              div([
                // Brenna Goyette testimonial - Larger featured card
                testimonialBuilder(
                  testimonial:
                      'Digital transformation, brand identity & actionable analytics are not merely just buzzwords that are used to sound flashy and interesting, partnering with CU Apps has brought Thistle Credit Union into digital relevance.\nIntroducing the mobile app has drastically changed how we operate, with a 32% decrease in the volume of calls and enquiries, we are better placed to serve without any additional resources.\nIt has allowed us to focus on our strategic goal of providing that open relationship to the member, with communication, convenience, and ease of use at the forefront. I would wholeheartedly recommend CU Apps to anyone looking to take their Credit Union to the next stage.',
                  name: 'Aaron Kerr',
                  role: 'CEO | Thistle Credit Union',
                  featured: true,
                  company: 'thistle',
                ),
              ], classes: 'w-full'),
            ]),

            // Tom Cook testimonial
            testimonialBuilder(
              testimonial:
                  'The app from CU Apps has been a game changer for how we interact with our members and how they manage their account. It’s simple, easy to use, quick and rivals some of the other banking apps. We’ve got thousands of great reviews on the app store too which is brilliant!\n\nWe love working with CU Apps, they’re always thinking ahead and willing to work together to solve any problems and create solutions.',
              name: 'Jo Moscrop',
              role: 'Chief Business Officer | No1 CopperPot Credit Union',
              company: 'n1cpcu',
              featured: true,
            ),
          ], classes: 'flex flex-col gap-8 lg:w-1/3'),

          // Right column
          div([
            // Floyd Miles testimonial
            testimonialBuilder(
              testimonial:
                  'We have recently transitioned our members mobile app across to CU Apps. From the very start Declan and the team have worked tirelessly to support us in ensuring our members journey is as smooth and as clear as possible.\nWhile CU Apps acts as a conduit between the platforms we use to provide our members services, they are the glue that holds it all together. They are very productive in working with other suppliers to offer a seamless service that aligns with our expectations.\nWe have already have amazing feedback on ease of use and member experience and we have not even explored the full functionality available. We are looking forward to bringing even more intuitive and interactive ways for our members to use our service through CU Apps.',
              name: 'Cheryl Gale',
              role: 'CEO | London Plus Credit Union',
              company: 'lopcu',
            ),
          ], classes: 'flex flex-col gap-8 lg:w-1/3'),
        ], classes: 'grid grid-cols-1 gap-8 lg:flex'),
      ], classes: 'py-16 px-4 mx-auto max-w-screen-xl lg:px-6'),
    ], classes: 'bg-base-100');
  }

  Component testimonialBuilder({
    required String testimonial,
    required String name,
    required String role,
    bool featured = true,
    String? company,
  }) {
    return div([
      div(
        [
          div(classes: 'card-body', [
            p([
              em([Component.text('"$testimonial"')]),
            ], classes: 'text-base text-gray-700 md:text-lg'),

            div([
              div([
                div([
                  h3([Component.text(name)], classes: 'card-title'),
                  p([Component.text(role)], classes: 'text-sm text-gray-600'),
                ], classes: 'flex flex-col gap-1'),
              ], classes: 'flex items-center space-x-3'),

              if (company != null)
                div([
                  img(
                    src: 'images/clients/$company.png',
                    alt: company,
                    width: 100,
                    height: 40,
                    classes: 'h-10 object-contain',
                  ),
                ], classes: 'mt-4'),
            ], classes: 'flex justify-between items-end'),
          ]),
        ],
        classes:
            'card ${featured ? "bg-base-100 shadow-lg" : "bg-base-200 shadow-md"}',
      ),
    ], classes: featured ? 'h-full' : null);
  }
}
