import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/Day1/pagenation_bar.dart';

import 'package:ui_challenge/Screens/Day1/widgets/code_view.dart';
import 'package:ui_challenge/Screens/Day1/widgets/collect_view.dart';
import 'package:ui_challenge/Screens/Day1/widgets/get_started_btn.dart';
import 'package:ui_challenge/Screens/Day1/widgets/learn_view.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';

class SwipePageView extends StatefulWidget {
  const SwipePageView({super.key});

  @override
  _SwipePageViewState createState() => _SwipePageViewState();
}

class _SwipePageViewState extends State<SwipePageView> {
  int _currentIndex = 0;
  final PageController _pageController = PageController(initialPage: 0);
  final List<Color> _buttonColors = [
    AppColors.greenColor,
    AppColors.blueColor,
    AppColors.pinkColor
  ];
  final List<dynamic> _imageColors = [
    Positioned(bottom: 0, left: 0, child: Image.asset(ImageAssets.yellow2)),
    Positioned(bottom: 0, child: Image.asset(ImageAssets.blue2)),
    Positioned(bottom: 0, right: 0, child: Image.asset(ImageAssets.pink2)),
  ];
  Color _currentButtonColor = AppColors.greenColor;
  dynamic _currentimageColor =
      Positioned(bottom: 0, left: 0, child: Image.asset(ImageAssets.yellow2));
  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int newIndex = _pageController.page!.round();
      if (newIndex != _currentIndex) {
        setState(() {
          _currentIndex = newIndex;
          _currentButtonColor = _buttonColors[newIndex % _buttonColors.length];
          _currentimageColor = _imageColors[newIndex % _imageColors.length];
        });
      }
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(children: <Widget>[
          _currentimageColor,
          GetStartedButton(currentButtonColor: _currentButtonColor),
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            children: const <Widget>[
              LearnWidget(),
              CodeWidget(),
              CollectWidget(),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: PageIndicator(
              pageCount: 3,
              currentIndex: _currentIndex,
              pageController: _pageController,
            ),
          ),
        ]));
  }
}
