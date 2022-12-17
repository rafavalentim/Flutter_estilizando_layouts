import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/sections/recent_activity.dart';
import 'package:flutter/material.dart';
import '../components/content_division.dart';
import '../components/sections/account_actions.dart';
import '../components/sections/account_scores.dart';
import '../components/sections/header.dart';
import '../theme/theme_colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SingleChildScrollView(
        child: Column(
        children:  <Widget>[
          Header(),
          RecentActivity(),
          AccountActions(),
          AccountScores(),
        ],
    ),
      ),);
  }
}
