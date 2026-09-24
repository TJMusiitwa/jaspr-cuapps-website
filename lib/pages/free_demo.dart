import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class FreeDemo extends StatelessComponent {
  const FreeDemo({super.key});

  @override
  Component build(BuildContext context) {
    return main_(classes: 'booking-page', [
      section(classes: 'site-container booking-grid', [
        div(classes: 'booking-intro', [
          p(classes: 'eyebrow', [Component.text('A good place to start')]),
          h1(classes: 'page-title', [
            Component.text('Let’s talk about your members.'),
          ]),
          p(classes: 'hero-lede', [
            Component.text(
              'Book a call with CU Apps. Tell us where your digital experience stands today and what you want to make easier for members next.',
            ),
          ]),
          // The calendar sits beside the intro on desktop; this jump is only
          // shown once the layout stacks.
          div(classes: 'booking-jump', [
            primaryLink('Find a time', href: '/free-demo#booking-calendar'),
          ]),
          div(classes: 'booking-expectation', [
            h2([Component.text('What to expect')]),
            ol([
              li([
                Component.text(
                  'We hear about your credit union and the member needs you want to address.',
                ),
              ]),
              li([
                Component.text(
                  'We show the products that fit, from member apps and CU Chat AI to AGM Hub and CU Flow.',
                ),
              ]),
              li([Component.text('We agree on useful next steps together.')]),
            ]),
          ]),
          blockquote(classes: 'booking-quote', [
            p([
              Component.text(
                '“They have been open, honest, professional and helpful every step of the way.”',
              ),
            ]),
            footer([Component.text('Logan Taylor · NHS Credit Union')]),
          ]),
          trustNote(),
        ]),
        div(classes: 'booking-calendar', id: 'booking-calendar', [
          div(classes: 'booking-calendar-header', [
            p(classes: 'eyebrow', [Component.text('Choose a time')]),
            p([Component.text('Select a slot for a 45-minute conversation.')]),
            p(classes: 'booking-fallback', [
              Component.text('Calendar not showing? '),
              a(
                href: 'https://calendly.com/cuapps/cu-apps-meeting',
                target: Target.blank,
                attributes: {'rel': 'noopener noreferrer'},
                [
                  Component.text('Open the booking page'),
                  linkArrow(ArrowKind.out),
                ],
              ),
            ]),
          ]),
          iframe(
            src: 'https://calendly.com/cuapps/cu-apps-meeting',
            width: 640,
            height: 700,
            attributes: {'title': 'Book a call with CU Apps'},
            [],
          ),
        ]),
      ]),
    ]);
  }
}
