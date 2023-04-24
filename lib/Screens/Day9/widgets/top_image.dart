import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class Topimage extends StatelessWidget {
  const Topimage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 170,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Positioned(
              bottom: 0, left: 30, child: Image.asset(ImageAssets.rectangle2)),
          Positioned(
            bottom: 10,
            left: 60,
            child: Row(
              children: [
                Column(
                  children: [
                    const Text("\n"),
                    Text(
                      "GET YOUR",
                      style: GoogleFonts.openSans(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: AppColors.menublue),
                    ),
                    Text(
                      "Daily",
                      style: GoogleFonts.openSans(
                          fontSize: 36,
                          fontWeight: FontWeight.w300,
                          color: AppColors.menublue),
                    ),
                    Text(
                      "Gift",
                      style: GoogleFonts.openSans(
                          fontSize: 36,
                          fontWeight: FontWeight.w800,
                          color: AppColors.menublue),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 10,
                ),
                Image.asset(ImageAssets.ice1),
                Image.asset(ImageAssets.ice2)
              ],
            ),
          )
        ],
      ),
    );
  }
}
