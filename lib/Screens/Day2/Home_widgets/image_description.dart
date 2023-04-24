import 'package:flutter/material.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class ImageDescription extends StatelessWidget {
  const ImageDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Center(
          child: Stack(
            children: [
              Image.asset(
                ImageAssets.bg,
                height: 550.0,
                width: 400,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                bottom: 310.0,
                right: 300.0,
                child: FloatingActionButton(
                  elevation: 0.0,
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  child:
                      Image.asset(ImageAssets.cup, height: 24.0, width: 24.0),
                ),
              ),
              const Positioned(
                bottom: 270.0,
                right: 305.0,
                child: Text(
                  "Sour",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                ),
              ),
              const Positioned(
                bottom: 232.0,
                right: 293.0,
                child: Text(
                  "Best drink\n receipes",
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
