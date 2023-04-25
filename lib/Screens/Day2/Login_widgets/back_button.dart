import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/Day2/day_2_home.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class BackFloatButton extends StatelessWidget {
  const BackFloatButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 60.0,
      left: 28.0,
      child: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Day2()),
          );
        },
        child: Image.asset(ImageAssets.arrow, height: 24.0, width: 24.0),
      ),
    );
  }
}
