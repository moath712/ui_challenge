import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_challenge/screens/day1/widgets/get_started_btn.dart';
import 'package:ui_challenge/screens/day1/widgets/page_view_class.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';
import 'widgets/pagenation_bar.dart';

class SwipePageView extends StatefulWidget {
  const SwipePageView({super.key});

  @override
  State<SwipePageView> createState() => _SwipePageViewState();
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
          pagesViews(),
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: PagenationBar(
              pageCount: 3,
              currentIndex: _currentIndex,
              pageController: _pageController,
            ),
          ),
        ]));
  }

  PageView pagesViews() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          _currentIndex = index;
        });
      },
      children: List.generate(
        dataList.length,
        (index) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(dataList[index].image),
            const SizedBox(height: 60),
            Text(dataList[index].title,
                style: GoogleFonts.roboto(
                    fontSize: 36.0,
                    color: AppColors.dayone,
                    fontWeight: FontWeight.w700)),
            const SizedBox(height: 20),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dataList[index].texts,
                  softWrap: true,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 18.0,
                      color: AppColors.dayone,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
