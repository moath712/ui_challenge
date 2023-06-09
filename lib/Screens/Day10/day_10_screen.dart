import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/home_screen.dart';
import 'package:ui_challenge/screens/Day10/day_10_class.dart';
import 'package:ui_challenge/screens/Day10/widgets/cart_bar.dart';
import 'package:ui_challenge/screens/Day10/widgets/price_bar.dart';

import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DayTen extends StatefulWidget {
  const DayTen({super.key});

  @override
  State<DayTen> createState() => _DayTenState();
}

class _DayTenState extends State<DayTen> {
  void _incrementItem(CartItem item) {
    setState(() {
      item.quantity++;
    });
  }

  void _decrementItem(CartItem item) {
    setState(() {
      if (item.quantity > 1) {
        item.quantity--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cartback,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            child: Image.asset(
              ImageAssets.arrowcart,
              width: 50,
              height: 50,
            ),
          ),
          const CartBar(),
          itemslist(),
          pricebar(),
        ],
      ),
    );
  }

  Expanded itemslist() {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: cartItems.length,
        itemBuilder: (BuildContext context, int index) {
          final CartItem item = cartItems[index];
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      item.image,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: AppColors.cartpink),
                        ),
                        SizedBox(
                          height: 20,
                          width: 60,
                          child: ListView.builder(
                            itemCount: item.starCount,
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
                          "\$${item.priceUsd.toStringAsFixed(1)}",
                          style: GoogleFonts.openSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: AppColors.totalpink),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      item.quantity.toString(),
                      style: GoogleFonts.openSans(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                          color: AppColors.cartpink),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () => _incrementItem(item),
                              child: Image.asset(ImageAssets.plus),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () => _decrementItem(item),
                              child: Image.asset(ImageAssets.minus),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
