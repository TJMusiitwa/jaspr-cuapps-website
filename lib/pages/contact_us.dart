import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactUs extends StatelessComponent {
  const ContactUs({super.key});

  @override
  Component build(BuildContext context) {
    return main_([
      section(classes: 'page-hero contact-hero', [
        div(classes: 'site-container page-hero-grid', [
          div([
            p(classes: 'eyebrow', [Component.text('Contact CU Apps')]),
            h1(classes: 'page-title', [
              Component.text('The right conversation starts here.'),
            ]),
            p(classes: 'hero-lede', [
              Component.text(
                'Thinking about an app or CU Chat? Have a question for the team? Choose the route that fits.',
              ),
            ]),
          ]),
          // The quickest routes, in the first frame: a phone line for each
          // country we work in, and the team inbox.
          nav(
            classes: 'contact-lines',
            attributes: {'aria-label': 'Phone and email'},
            [
              p(classes: 'contact-lines-title', [
                Component.text('Call or write'),
              ]),
              ul([
                for (final (place, number, href) in _lines)
                  li([
                    a(href: href, [
                      span([Component.text(place)]),
                      strong([Component.text(number)]),
                    ]),
                  ]),
              ]),
            ],
          ),
        ]),
      ]),
      section(classes: 'site-section', [
        div(classes: 'site-container contact-paths', [
          article(classes: 'contact-path contact-path-primary', [
            p(classes: 'eyebrow eyebrow-light', [
              Component.text('For a new project'),
            ]),
            h2([Component.text('Talk through the opportunity.')]),
            p([
              Component.text(
                'Book time to discuss your credit union, the members you serve and what you would like to improve.',
              ),
            ]),
            primaryLink('Book a call'),
          ]),
          article(classes: 'contact-path', [
            p(classes: 'eyebrow', [Component.text('For everything else')]),
            h2([Component.text('Write to the team.')]),
            p([
              Component.text(
                'Send your question, project outline or support enquiry by email. We will make sure it reaches the right person.',
              ),
            ]),
            quietLink('Email hello@cuapps.co.uk', 'mailto:hello@cuapps.co.uk'),
          ]),
        ]),
      ]),
      section(classes: 'contact-details', [
        div(classes: 'site-container contact-details-grid', [
          div([
            p(classes: 'eyebrow', [Component.text('Find us')]),
            h2([
              Component.text(
                'Based in Glasgow. Working with mutuals across the UK, Ireland and beyond.',
              ),
            ]),
          ]),
          div([
            p([
              Component.text('220 High Street, Glasgow G4 0QW, United Kingdom'),
            ]),
          ]),
        ]),
      ]),
      trustBand(),
    ]);
  }
}

/// Place, number as written, and link for each way to reach the team.
const _lines = [
  ('United Kingdom', '+44 141 343 2450', 'tel:+441413432450'),
  ('Ireland', '+353 749 707 869', 'tel:+353749707869'),
  ('United States', '+1 313 306 1560', 'tel:+13133061560'),
  ('Email', 'hello@cuapps.co.uk', 'mailto:hello@cuapps.co.uk'),
];
