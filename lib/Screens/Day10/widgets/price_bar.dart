import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/Screens/Day10/day_10_class.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

double _calculateTotal() {
  double total = 0;
  for (var item in cartItems) {
    total += item.priceUsd * item.quantity;
  }
  return total;
}

SizedBox PriceBar() {
  return SizedBox(
    height: 200,
    child: Stack(
      children: [
        Positioned(
            right: 0, bottom: 130, child: Image.asset(ImageAssets.candy1)),
        Positioned(
            right: 60, bottom: 90, child: Image.asset(ImageAssets.candy2)),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: 250,
                    height: 60,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xFFBB6BD9),
                            Color(0xFFBB6BD9),
                            Color(0xFF151A6A),
                          ],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'CHECKOUT',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.openSans(
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              letterSpacing: 0.0,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "TOTAL",
                        style: GoogleFonts.openSans(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: AppColors.cartpink),
                      ),
                      Row(
                        children: [
                          Text(
                            "\$",
                            style: GoogleFonts.openSans(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: AppColors.totalpink),
                          ),
                          Text(
                            _calculateTotal().toStringAsFixed(1),
                            style: GoogleFonts.openSans(
                                fontSize: 25,
                                fontWeight: FontWeight.w700,
                                color: AppColors.totalpink),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
