import 'package:cuapps_website/components/ui.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

/// A capability: icon name (see [lineIcon]), title and body.
typedef ProductFeature = Capability;

/// A question and its answer.
typedef ProductFaq = (String question, String answer);

/// A numbered step: title and body.
typedef ProductStep = (String title, String body);

/// Shared layout for single-product landing pages.
///
/// Sections, in order: hero with a live HTML mockup, capability index,
/// optional extra sections, spotlight band, how it works, questions with a
/// certification note, closing call to action. Each product gives the
/// spotlight its own [spotlightVisual] so the pages don't read as one
/// template. [chat] switches the page to the purple CU Chat palette.
class ProductPage extends StatelessComponent {
  const ProductPage({
    super.key,
    required this.slug,
    required this.eyebrow,
    required this.title,
    this.titleAccent,
    required this.lede,
    required this.highlights,
    required this.mockup,
    required this.mockupLabel,
    this.ctaLabel = bookingLabel,
    required this.featuresEyebrow,
    required this.featuresTitle,
    this.featuresBody,
    required this.features,
    this.spotlightEyebrow,
    this.spotlightTitle,
    this.spotlightBody,
    this.spotlightPoints = const [],
    this.spotlightVisual,
    this.spotlightNote,
    required this.stepsTitle,
    required this.steps,
    required this.faqs,
    required this.closingTitle,
    required this.closingBody,
    this.afterFeatures = const [],
    this.chat = false,
  });

  /// Used as a class hook (`product-page-<slug>`) for page-specific styling.
  final String slug;
  final String eyebrow;
  final String title;

  /// Optional trailing words of [title], shown in the accent colour.
  final String? titleAccent;
  final String lede;

  /// Three short proof points shown under the hero buttons.
  final List<String> highlights;

  /// Product mockup built in HTML/CSS, shown beside the hero copy.
  final Component mockup;

  /// Accessible description of [mockup].
  final String mockupLabel;
  final String ctaLabel;
  final String featuresEyebrow;
  final String featuresTitle;
  final String? featuresBody;
  final List<ProductFeature> features;
  final String? spotlightEyebrow;

  /// The spotlight band is omitted when this is null.
  final String? spotlightTitle;
  final String? spotlightBody;

  /// Short items listed in the spotlight band, when there is no
  /// [spotlightVisual].
  final List<String> spotlightPoints;

  /// A product-specific visual shown in the spotlight band in place of
  /// [spotlightPoints].
  final Component? spotlightVisual;

  /// Optional small print under the spotlight body.
  final String? spotlightNote;
  final String stepsTitle;
  final List<ProductStep> steps;
  final List<ProductFaq> faqs;
  final String closingTitle;
  final String closingBody;

  /// Optional extra sections inserted between the features and the spotlight.
  final List<Component> afterFeatures;
  final bool chat;

  @override
  Component build(BuildContext context) {
    return main_(
      classes:
          'product-page product-page-$slug${chat ? ' cu-chat-page product-page-chat' : ''}',
      [
        section(classes: 'product-hero', [
          div(classes: 'site-container product-hero-grid', [
            div(classes: 'product-hero-copy', [
              p(classes: 'eyebrow', [Component.text(eyebrow)]),
              h1(classes: 'page-title', [
                Component.text(title),
                if (titleAccent != null) ...[
                  Component.text(' '),
                  em([Component.text(titleAccent!)]),
                ],
              ]),
              p(classes: 'hero-lede', [Component.text(lede)]),
              div(classes: 'hero-actions', [
                primaryLink(ctaLabel, chat: chat),
                quietLink('Explore the product', '#features'),
              ]),
              ul(classes: 'product-highlights', [
                for (final item in highlights) li([Component.text(item)]),
              ]),
            ]),
            div(
              classes: 'product-mockup-stage',
              attributes: {'role': 'img', 'aria-label': mockupLabel},
              [
                div(attributes: {'aria-hidden': 'true'}, [mockup]),
              ],
            ),
          ]),
        ]),
        section(id: 'features', classes: 'site-section product-features', [
          div(classes: 'site-container', [
            capabilityList(
              intro: sectionIntro(
                eyebrow: featuresEyebrow,
                title: featuresTitle,
                body: featuresBody,
              ),
              items: features,
            ),
          ]),
        ]),
        ...afterFeatures,
        if (spotlightTitle != null)
          section(classes: 'product-spotlight', [
            div(classes: 'site-container product-spotlight-grid', [
              div([
                if (spotlightEyebrow != null)
                  p(classes: 'eyebrow eyebrow-light', [
                    Component.text(spotlightEyebrow!),
                  ]),
                h2([Component.text(spotlightTitle!)]),
                if (spotlightBody != null) p([Component.text(spotlightBody!)]),
                if (spotlightNote != null)
                  p(classes: 'product-spotlight-note', [
                    Component.text(spotlightNote!),
                  ]),
              ]),
              ?spotlightVisual,
              if (spotlightVisual == null && spotlightPoints.isNotEmpty)
                ul(classes: 'product-spotlight-list', [
                  for (final point in spotlightPoints)
                    li([
                      span(
                        attributes: {'aria-hidden': 'true'},
                        [Component.text('✓')],
                      ),
                      Component.text(point),
                    ]),
                ]),
            ]),
          ]),
        section(classes: 'site-section product-steps-section', [
          div(classes: 'site-container', [
            sectionIntro(eyebrow: 'How it works', title: stepsTitle),
            ol(classes: 'process-list', [
              for (final (index, step) in steps.indexed)
                li([
                  span(classes: 'step-number', [
                    Component.text((index + 1).toString().padLeft(2, '0')),
                  ]),
                  h3([Component.text(step.$1)]),
                  p([Component.text(step.$2)]),
                ]),
            ]),
          ]),
        ]),
        section(classes: 'site-section faq-section product-faq', [
          div(classes: 'site-container faq-grid', [
            div([
              sectionIntro(
                eyebrow: 'Questions',
                title: 'What credit unions ask us.',
              ),
              trustNote(),
            ]),
            div(classes: 'faq-list', [
              for (final faq in faqs)
                details([
                  summary([Component.text(faq.$1)]),
                  p([Component.text(faq.$2)]),
                ]),
            ]),
          ]),
        ]),
        closingCta(
          eyebrow: 'See it working',
          title: closingTitle,
          body: closingBody,
          label: ctaLabel,
          chat: chat,
        ),
      ],
    );
  }
}
