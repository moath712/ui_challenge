import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class NavigationBar2 extends StatelessWidget {
  const NavigationBar2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: Image.asset(ImageAssets.house),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            ImageAssets.charts,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            ImageAssets.bell,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            ImageAssets.location,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
        IconButton(
          icon: Image.asset(
            ImageAssets.avatar,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
