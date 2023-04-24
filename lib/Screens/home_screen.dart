import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/Day10/day_10.dart';
import 'package:ui_challenge/Screens/Day2/day_2_home.dart';
import 'package:ui_challenge/Screens/Day1/day_1.dart';
import 'package:ui_challenge/Screens/Day3/day_3.dart';
import 'package:ui_challenge/Screens/Day4/day_4.dart';
import 'package:ui_challenge/Screens/Day6/day_6.dart';
import 'package:ui_challenge/Screens/Day7/day_7.dart';
import 'package:ui_challenge/Screens/Day9/day_9.dart';

class ButtonsData {
  final String name;
  final dynamic route;

  ButtonsData({required this.name, required this.route});
}

class HomeScreen extends StatelessWidget {
  List<ButtonsData> dataList = [
    ButtonsData(
      name: 'Day 1',
      route: const SwipePageView(),
    ),
    ButtonsData(
      name: 'Day 2',
      route: const Day2(),
    ),
    ButtonsData(
      name: 'Day 3',
      route: const SignUpScreen(),
    ),
    ButtonsData(
      name: 'Day 4',
      route: const Day4(),
    ),
    ButtonsData(
      name: 'Day 6',
      route: Day6(),
    ),
    ButtonsData(
      name: 'Day 8',
      route: Day7(
        percentage: 50,
      ),
    ),
    ButtonsData(
      name: 'Day 9',
      route: const Day9(),
    ),
    ButtonsData(
      name: 'Day 10',
      route: const CartPage(),
    ),
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        padding: const EdgeInsets.all(10.0),
        children: List.generate(dataList.length, (index) {
          final button = dataList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => button.route,
                ),
              );
            },
            child: Card(
              child: ListTile(
                title: Text(button.name),
              ),
            ),
          );
        }),
      ),
    );
  }
}
