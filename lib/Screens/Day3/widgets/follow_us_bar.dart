import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class FollowUsBar extends StatelessWidget {
  const FollowUsBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Text(
            "Follow us",
            style: TextStyle(
              color: AppColors.applesocial,
            ),
          ),
          const SizedBox(width: 30),
          ColorFiltered(
            colorFilter:
                const ColorFilter.mode(AppColors.applesocial, BlendMode.srcIn),
            child: Image.asset(ImageAssets.instgram),
          ),
          const SizedBox(width: 30),
          ColorFiltered(
            colorFilter:
                const ColorFilter.mode(AppColors.applesocial, BlendMode.srcIn),
            child: Image.asset(ImageAssets.facebook),
          ),
          const SizedBox(width: 30),
          ColorFiltered(
            colorFilter:
                const ColorFilter.mode(AppColors.applesocial, BlendMode.srcIn),
            child: Image.asset(ImageAssets.twitter),
          ),
          const SizedBox(width: 30),
        ])
      ],
    );
  }
}
