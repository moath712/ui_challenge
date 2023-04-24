import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/Day4/widgets/events_list.dart';
import 'package:ui_challenge/Screens/Day4/widgets/profile_bio.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class Day4 extends StatelessWidget {
  const Day4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.sky,
        child: Stack(
          children: [
            Positioned(
              top: 45,
              right: 0,
              left: 0,
              child: Image.asset(
                ImageAssets.trees,
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 620,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ProfileBio(),
                    EventsList(),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 30,
              right: 0,
              left: 0,
              child: Image.asset(
                ImageAssets.profile,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
