import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class ProfileBio extends StatelessWidget {
  const ProfileBio({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 100,
        ),
        const Center(
          child: Text(
            "Laura Pergolizzi",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColors.inboxbox,
              ),
              child: Image.asset(ImageAssets.letter)),
          const SizedBox(width: 30),
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColors.callbox,
              ),
              child: Image.asset(ImageAssets.call)),
          const SizedBox(width: 30),
          Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColors.twitterbox,
              ),
              child: Image.asset(ImageAssets.twitterblue)),
        ]),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "About you",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.yellowfont),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Laura Pergolizzi is known professionally as LP, is\n an American singer and songwriter, best known\n for her single Lost on You.",
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w400,
                color: AppColors.blackfont),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            "Upcoming events",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: AppColors.yellowfont),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
