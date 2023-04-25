import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class LearnWidget extends StatelessWidget {
  const LearnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height: 200),
        Stack(
          children: [
            Positioned(
                right: 180, top: 60, child: Image.asset(ImageAssets.yellow)),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageAssets.group),
                  const SizedBox(width: 5.0),
                  Image.asset(ImageAssets.group2),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 60),
        Text('Learn',
            style: GoogleFonts.roboto(
                fontSize: 36.0,
                color: AppColors.dayone,
                fontWeight: FontWeight.w700)),
        const SizedBox(height: 20),
        const Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'Practice with real\n exercices and projects for \nyour portfolio',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0,
                  color: AppColors.dayone,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
