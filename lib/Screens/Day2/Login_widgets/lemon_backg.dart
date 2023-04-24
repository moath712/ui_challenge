import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class LemonBackg extends StatelessWidget {
  const LemonBackg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: Image.asset(
        ImageAssets.back1,
        fit: BoxFit.fill,
      ),
    );
  }
}
