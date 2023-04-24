import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class PageBarChart extends StatelessWidget {
  const PageBarChart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Image.asset(ImageAssets.house),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(ImageAssets.charts),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(ImageAssets.bell),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(ImageAssets.location),
            onPressed: () {},
          ),
          IconButton(
            icon: Image.asset(ImageAssets.avatar),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
