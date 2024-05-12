import 'package:cuapps_website/app.dart';
import 'package:jaspr/jaspr.dart';

const primaryColor = Color.hex('#35a0d9');

/// The main styles for this app.
List<StyleRule> get styles => [
      const StyleRule.import('https://fonts.googleapis.com/css?family=Roboto'),
      css('html, body')
          .text(
              fontFamily: const FontFamily.list(
                  [FontFamily('Roboto'), FontFamilies.sansSerif]))
          .box(width: 100.percent, minHeight: 100.vh)
          .box(margin: EdgeInsets.zero, padding: EdgeInsets.zero),
      css('h1').text(fontSize: 4.rem).box(margin: EdgeInsets.unset),
      ...App.styles,
    ];
