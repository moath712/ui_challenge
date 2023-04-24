import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/Screens/Day9/day_9_class.dart';
import 'package:ui_challenge/style/colors.dart';

class TopGoodiesList extends StatelessWidget {
  const TopGoodiesList({
    super.key,
    required List<Item2> items2,
  }) : _items2 = items2;

  final List<Item2> _items2;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: _items2.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image.asset(_items2[index].imageUrl),
                      ),
                      Text(
                        _items2[index].name,
                        style: GoogleFonts.openSans(
                            fontSize: 11.0,
                            color: AppColors.itemsblue,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
