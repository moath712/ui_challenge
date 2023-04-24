import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/style/colors.dart';

class CartBar extends StatelessWidget {
  const CartBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text(
            " Shopping ",
            style: GoogleFonts.openSans(
                fontSize: 28,
                fontWeight: FontWeight.w300,
                color: AppColors.cartpink),
          ),
          Text(
            "Cart",
            style: GoogleFonts.openSans(
                fontSize: 28,
                fontWeight: FontWeight.w800,
                color: AppColors.cartpink),
          ),
        ],
      ),
    );
  }
}
