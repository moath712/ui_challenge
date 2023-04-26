import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/Day7/widgets/charts_draw.dart';
import 'package:ui_challenge/screens/Day7/widgets/circular_bar.dart';
import 'package:ui_challenge/screens/Day7/widgets/key_metrics_bar.dart';
import 'package:ui_challenge/screens/Day7/widgets/key_metrics_cards.dart';
import 'package:ui_challenge/screens/Day7/widgets/page_bar_chart.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class Day7 extends StatelessWidget {
  const Day7({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 60,
          ),
          Container(
              color: Colors.white,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                    child: IconButton(
                      icon: Image.asset(ImageAssets.chats),
                      onPressed: () {},
                    ),
                  ),
                ],
              )),
          Container(
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularBar(percentage: percentage),
                Image.asset(ImageAssets.social),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const KeyMetricsBar(),
          const KeyMetricsCards(),
          const ChartsDraw(),
          const PageBarChart(),
        ],
      ),
    );
  }
}
