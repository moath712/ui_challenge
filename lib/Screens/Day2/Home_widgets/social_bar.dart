import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class SocialBar extends StatelessWidget {
  const SocialBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 40,
      left: 0,
      right: 0,
      child: Center(
        child: Stack(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(ImageAssets.line),
              const SizedBox(width: 30),
              Image.asset(ImageAssets.instgram),
              const SizedBox(width: 30),
              Image.asset(ImageAssets.facebook),
              const SizedBox(width: 30),
              Image.asset(ImageAssets.twitter),
              const SizedBox(width: 30),
              Image.asset(ImageAssets.line),
            ])
          ],
        ),
      ),
    );
  }
}
