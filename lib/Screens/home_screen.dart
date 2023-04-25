import 'package:flutter/material.dart';
import 'package:ui_challenge/screens/day3/day_3_screen.dart';
import 'package:ui_challenge/Screens/day4/day_4_screen.dart';
import 'package:ui_challenge/screens/day6/day_6_screen.dart';
import 'package:ui_challenge/screens/day9/day_9_screen.dart';
import 'package:ui_challenge/screens/Day10/day_10.dart';
import 'package:ui_challenge/screens/Day2/day_2_home.dart';
import 'package:ui_challenge/screens/day7/day_7_screen.dart';
import 'package:ui_challenge/Screens/day1/day_1_screen.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class ButtonsData {
  final String name;
  final dynamic route;
  final String image;

  ButtonsData({required this.name, required this.image, required this.route});
}

class HomeScreen extends StatelessWidget {
  final List<ButtonsData> dataList = [
    ButtonsData(
      name: 'Day 1',
      route: const SwipePageView(),
      image: ImageAssets.one,
    ),
    ButtonsData(
      name: 'Day 2',
      route: const Day2(),
      image: ImageAssets.two,
    ),
    ButtonsData(
      name: 'Day 3',
      route: const SignUpScreen(),
      image: ImageAssets.three,
    ),
    ButtonsData(
      name: 'Day 4',
      route: const Day4(),
      image: ImageAssets.four,
    ),
    ButtonsData(
      name: 'Day 6',
      route: const Day6(),
      image: ImageAssets.six,
    ),
    ButtonsData(
      name: 'Day 8',
      route: const Day7(
        percentage: 50,
      ),
      image: ImageAssets.eight,
    ),
    ButtonsData(
      name: 'Day 9',
      route: const Day9(),
      image: ImageAssets.nine,
    ),
    ButtonsData(
      name: 'Day 10',
      route: const DayTen(),
      image: ImageAssets.ten,
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10.0),
        children: List.generate(dataList.length, (index) {
          final button = dataList[index];
          return Container(
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(5)),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => button.route,
                  ),
                );
              },
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      button.name,
                      style: const TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
