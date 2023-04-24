import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class CodeWidget extends StatelessWidget {
  const CodeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Positioned(
                right: 150, bottom: 50, child: Image.asset(ImageAssets.blue)),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(ImageAssets.credit),
                  const SizedBox(width: 10),
                  Image.asset(ImageAssets.mobile),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        Text('Code',
            style: GoogleFonts.roboto(
                fontSize: 36.0,
                color: AppColors.dayone,
                fontWeight: FontWeight.w700)),
        const SizedBox(height: 25),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Learn how to code great \nvideo game interfaces for \ndifferent devices ',
            softWrap: true,
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 18.0,
                color: AppColors.dayone,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }
}
