import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/screens/day3/day_3_screen.dart';
import 'package:ui_challenge/Screens/day4/day_4_screen.dart';
import 'package:ui_challenge/screens/day6/day_6_screen.dart';
import 'package:ui_challenge/screens/day9/day_9_screen.dart';
import 'package:ui_challenge/screens/day10/day_10_screen.dart';
import 'package:ui_challenge/screens/day2/day_2_home.dart';
import 'package:ui_challenge/screens/day7/day_7_screen.dart';
import 'package:ui_challenge/screens/day1/day_1_screen.dart';
import 'package:ui_challenge/style/assets_manager.dart';

class ButtonsData {
  final String name;
  final dynamic route;
  final String image;

  ButtonsData({required this.name, required this.image, required this.route});
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _opacity = 1.0;
  double _scale = 1.0;

  void _onTap(int index) {
    setState(() {
      _opacity = 0.5;
      _scale = 0.9;
    });

    Future.delayed(const Duration(milliseconds: 200), () {
      setState(() {
        _opacity = 1.0;
        _scale = 1.0;
      });

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => dataList[index].route),
      );
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 30.0,
        mainAxisSpacing: 30.0,
        padding: const EdgeInsets.all(10.0),
        children: List.generate(dataList.length, (index) {
          final button = dataList[index];
          return AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ], color: Colors.black, borderRadius: BorderRadius.circular(5)),
            transform: Matrix4.diagonal3Values(_scale, _scale, 1),
            child: GestureDetector(
              onTap: () => _onTap(index),
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedOpacity(
                      duration: const Duration(milliseconds: 200),
                      opacity: _opacity,
                      child: Text(
                        button.name,
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          fontWeight: FontWeight.w800,
                          color: Colors.black,
                        ),
                      ),
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
