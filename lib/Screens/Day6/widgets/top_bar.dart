import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(ImageAssets.menu),
          Image.asset(ImageAssets.search),
        ],
      ),
    );
  }
}
