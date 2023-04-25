import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/screens/Day9/day_9_class.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class DeliciousDopamineList extends StatelessWidget {
  const DeliciousDopamineList({
    super.key,
    required List<Item> items,
  }) : _items = items;

  final List<Item> _items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView.builder(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.horizontal,
        itemCount: _items.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  child: Stack(
                    children: [
                      Image.asset(
                        _items[index].imageUrl,
                      ),
                      Positioned(
                        right: 10,
                        top: 12,
                        child: Container(
                          decoration: BoxDecoration(
                            color: AppColors.pricetag,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Text(
                              " \$${_items[index].priceUsd.toStringAsFixed(0)} ",
                              style: GoogleFonts.openSans(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 1, horizontal: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _items[index].name,
                      style: GoogleFonts.openSans(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: AppColors.itemsblue),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 50,
                          child: ListView.builder(
                            itemCount: _items[index].count,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Image.asset(ImageAssets.star2),
                                  const SizedBox(width: 2),
                                ],
                              );
                            },
                          ),
                        ),
                        Text(
                          " (${_items[index].ratecount.toStringAsFixed(0)})",
                          style: GoogleFonts.openSans(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.grey),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
