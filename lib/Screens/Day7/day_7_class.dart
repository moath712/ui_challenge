import 'package:ui_challenge/Screens/Day1/day_1.dart';
import 'package:ui_challenge/style/assets_manager.dart';

final List<SalesData> chartData = [
  SalesData(DateTime(2010), 40),
  SalesData(DateTime(2011), 20),
  SalesData(DateTime(2012), 37),
];

class SalesData {
  SalesData(this.year, this.sales);
  final DateTime year;
  final double sales;
}

class Cards {
  final String name;
  final dynamic route;
  final String image;
  final String image2;
  final String count;

  Cards(
      {required this.image,
      required this.image2,
      required this.count,
      required this.name,
      required this.route});
}

List<Cards> cardList = [
  Cards(
      name: 'VISITS',
      route: const SwipePageView(),
      image: ImageAssets.chartArrow,
      image2: ImageAssets.pi,
      count: '4,324'),
  Cards(
      name: 'LIKES',
      route: const SwipePageView(),
      image: ImageAssets.like,
      image2: ImageAssets.gr,
      count: '654'),
  Cards(
      name: 'FAVORITES',
      route: const SwipePageView(),
      image: ImageAssets.star,
      image2: ImageAssets.ye,
      count: '855'),
  Cards(
      name: 'VIEWS',
      route: const SwipePageView(),
      image: ImageAssets.eye,
      image2: ImageAssets.bl,
      count: '5,436'),
];
