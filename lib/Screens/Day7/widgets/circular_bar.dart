import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class CircularBar extends StatelessWidget {
  const CircularBar({
    super.key,
    required this.percentage,
  });

  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          SizedBox(
            width: 100,
            height: 150,
            child: Stack(
              children: [
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 100,
                    child: CircularProgressIndicator(
                      value: percentage / 100,
                      strokeWidth: 5,
                      backgroundColor: Colors.grey.withOpacity(0.3),
                      valueColor:
                          const AlwaysStoppedAnimation<Color>(Colors.green),
                    ),
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        percentage.toStringAsFixed(0),
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "REACH",
                        style: GoogleFonts.openSans(
                            fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(ImageAssets.up),
                          Text(
                            '${percentage.toStringAsFixed(0)}%',
                            style: GoogleFonts.openSans(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Text(
                "NEW ACHIEVEMENT",
                style: GoogleFonts.openSans(
                    fontSize: 10,
                    color: Colors.grey,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "Social Star",
                style: GoogleFonts.openSans(fontSize: 18, color: Colors.green),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
