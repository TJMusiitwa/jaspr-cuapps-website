import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class ContactUs extends StatelessComponent {
  const ContactUs({super.key});

  @override
  Component build(BuildContext context) {
    return main_([
      section(classes: 'page-hero contact-hero', [
        div(classes: 'site-container', [
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
            a(href: 'mailto:hello@cuapps.co.uk', [
              Component.text('hello@cuapps.co.uk'),
            ]),
            div(classes: 'contact-phones', [
              p(classes: 'eyebrow', [Component.text('Call us')]),
              a(href: 'tel:+441413432450', [
                span([Component.text('United Kingdom')]),
                strong([Component.text('+44 141 343 2450')]),
              ]),
              a(href: 'tel:+353749707869', [
                span([Component.text('Ireland')]),
                strong([Component.text('+353 749 707 869')]),
              ]),
              a(href: 'tel:+13133061560', [
                span([Component.text('United States')]),
                strong([Component.text('+1 313 306 1560')]),
              ]),
            ]),
          ]),
        ]),
      ]),
      trustBand(),
    ]);
  }
}
