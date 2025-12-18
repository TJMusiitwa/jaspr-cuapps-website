import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

import 'about/about_hero.dart';
import 'about/company_stats.dart';
import 'about/our_mission.dart';
import 'about/team_section.dart';
import 'about/what_we_do.dart';

class About extends StatelessComponent {
  const About({super.key});

  @override
  Component build(BuildContext context) {
    return div([
      const AboutHero(),
      const WhatWeDo(),
      const OurMission(),
      const CompanyStats(),
      const TeamSection(),
    ]);
  }
}
