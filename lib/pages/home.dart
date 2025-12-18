import 'package:cuapps_website/pages/home/hero_section.dart';
import 'package:cuapps_website/pages/home/logo_section.dart';
import 'package:cuapps_website/pages/home/process_section.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Home extends StatelessComponent {
  const Home({super.key});

  @override
  Component build(BuildContext context) {
    return section([HeaderSection(), LogoSection(), ProcessSection()]);
  }
}
