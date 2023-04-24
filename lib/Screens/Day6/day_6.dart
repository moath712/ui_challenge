import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/Day6/day_6_class.dart';
import 'package:ui_challenge/Screens/Day6/widgets/horizental_articles.dart';
import 'package:ui_challenge/Screens/Day6/widgets/last_articles.dart';
import 'package:ui_challenge/Screens/Day6/widgets/models_art.dart';
import 'package:ui_challenge/Screens/Day6/widgets/top_bar.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class CardData {
  final String title;
  final String imageUrl;
  final String arttype;

  CardData(
      {required this.title, required this.arttype, required this.imageUrl});
}

class Day6 extends StatelessWidget {
  const Day6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(
            height: 50,
          ),
          TopBar(),
          SizedBox(
            height: 5,
          ),
          LastArticles(),
          SizedBox(
            height: 5,
          ),
          HorizentalArticles(),
          ModelsArt(),
        ],
      ),
    );
  }
}
