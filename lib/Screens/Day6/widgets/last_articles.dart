import 'package:flutter/material.dart';
import 'package:ui_challenge/style/colors.dart';

class LastArticles extends StatelessWidget {
  const LastArticles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Last articles",
            style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: AppColors.day6color),
          ),
          Text(
            "Today, March 21",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(69, 46, 79, 0.75)),
          ),
        ],
      ),
    );
  }
}
