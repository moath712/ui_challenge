
import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class WhiteDraw extends StatelessWidget {
  const WhiteDraw({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        ImageAssets.back3,
        height: MediaQuery.of(context).size.height / 1.7,
        fit: BoxFit.fill,
      ),
    );
  }
}
