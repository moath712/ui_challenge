import 'package:ui_challenge/style/assets_manager.dart';

class CartItem {
  final String name;
  final double priceUsd;
  final String image;
  int starCount;
  int quantity;

  CartItem(
      {required this.image,
      required this.starCount,
      required this.name,
      required this.priceUsd,
      required this.quantity});
}

final List<CartItem> cartItems = [
  CartItem(
      name: "Roll Lollipop",
      priceUsd: 1.5,
      quantity: 1,
      image: ImageAssets.lolipop,
      starCount: 5),
  CartItem(
      name: "Chocolate cookies",
      priceUsd: 2.0,
      quantity: 1,
      image: ImageAssets.icecream,
      starCount: 3),
  CartItem(
      name: "Black icecream",
      priceUsd: 3.0,
      quantity: 1,
      image: ImageAssets.cookies,
      starCount: 1),
];
