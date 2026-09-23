import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class CaseStudies extends StatelessComponent {
  const CaseStudies({super.key});

  @override
  Component build(BuildContext context) {
    return main_([
      section(classes: 'page-hero stories-hero', [
        div(classes: 'site-container', [
          p(classes: 'eyebrow', [Component.text('Client stories')]),
          h1(classes: 'page-title', [
            Component.text('The work is measured in member experience.'),
          ]),
          p(classes: 'hero-lede', [
            Component.text(
              'Credit unions come to us with different challenges. Here is what they say changed after working together.',
            ),
          ]),
          div(classes: 'hero-actions', [
            quietLink('Read the CU Chat client stories', '/cu-chat/stories'),
          ]),
        ]),
      ]),
      section(classes: 'site-section', [
        div(classes: 'site-container featured-story', [
          div(classes: 'story-mark', [
            img(
              src: '/images/clients/thistle.webp',
              alt: 'Thistle Credit Union',
              loading: MediaLoading.lazy,
            ),
            p(classes: 'eyebrow', [Component.text('Thistle Credit Union')]),
          ]),
          div(classes: 'story-body', [
            p(classes: 'eyebrow', [
              Component.text('Member app / client outcome'),
            ]),
            h2([
              Component.text('More room for the conversations that matter.'),
            ]),
            p([
              Component.text(
                'Thistle Credit Union reports a 32% decrease in calls and enquiries after introducing its mobile app. Its team says the change helped them focus on member relationships without adding resources.',
              ),
            ]),
            blockquote([
              p([
                Component.text(
                  '“Communication, convenience, and ease of use are at the forefront. I would wholeheartedly recommend CU Apps to anyone looking to take their credit union to the next stage.”',
                ),
              ]),
              footer([
                Component.text('Aaron Kerr, CEO · Thistle Credit Union'),
              ]),
            ]),
          ]),
        ]),
      ]),
      section(classes: 'site-section story-list-section', [
        div(classes: 'site-container', [
          sectionIntro(
            eyebrow: 'More client voices',
            title: 'Partnerships that keep moving.',
          ),
          div(classes: 'story-list', [
            _story(
              'Hoot Credit Union',
              'hocu',
              '“Our members love the app and the ability to access their account so easily. The app is an essential tool for us in our member communication.”',
              'Chris Canham, CEO',
            ),
            _story(
              'No1 CopperPot Credit Union',
              'n1cpcu',
              '“The app from CU Apps has been a game changer for how we interact with our members and how they manage their account.”',
              'Jo Moscrop, Chief Business Officer',
            ),
            _story(
              'Scottish Police Credit Union',
              'spcu',
              '“Their attention to detail and commitment to delivering what we needed was exceptional.”',
              'George Nedley, CEO',
            ),
          ]),
        ]),
      ]),
      closingCta(
        eyebrow: 'Your next chapter',
        title: 'Let’s talk about your members.',
        body:
            'Bring your goals and questions. We will bring sector experience and a clear starting point.',
      ),
    ]);
  }

  Component _story(String name, String logo, String quote, String attribution) {
    return article(classes: 'story-row', [
      div(classes: 'story-row-client', [
        img(
          src: '/images/clients/$logo.webp',
          alt: name,
          loading: MediaLoading.lazy,
        ),
        h3([Component.text(name)]),
      ]),
      blockquote([
        p([Component.text(quote)]),
        footer([Component.text(attribution)]),
      ]),
    ]);
  }
}
