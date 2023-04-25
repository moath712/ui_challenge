import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/style/colors.dart';

class TitleWithSeeAll2 extends StatelessWidget {
  const TitleWithSeeAll2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            " Top goodies",
            style: GoogleFonts.openSans(
                fontSize: 21,
                fontWeight: FontWeight.w300,
                color: AppColors.cartpink),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'SEE ALL',
            style: GoogleFonts.openSans(
                fontSize: 12,
                fontWeight: FontWeight.w700,
                color: AppColors.menublue),
          ),
        )
      ],
    );
  }
}
