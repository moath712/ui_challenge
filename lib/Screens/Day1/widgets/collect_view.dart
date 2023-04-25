import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class CollectWidget extends StatelessWidget {
  const CollectWidget({
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
                right: 80, bottom: 40, child: Image.asset(ImageAssets.pink)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageAssets.book),
                const SizedBox(width: 5.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 60),

                    Image.asset(
                        ImageAssets.card2), 
                    const SizedBox(height: 5),
                    Image.asset(ImageAssets.card1),
                  ],
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 60),
        Text('Collect',
            style: GoogleFonts.roboto(
                fontSize: 36.0,
                color: AppColors.dayone,
                fontWeight: FontWeight.w700)),
        const SizedBox(height: 8),
        const Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Text(
              'Collect case studies of the \nbest teachers in the \n  game  industry',
              softWrap: true,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18.0,
                  color: AppColors.dayone,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
      ],
    );
  }
}
