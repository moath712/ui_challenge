import 'package:ui_challenge/style/assets_manager.dart';

class Item {
  final String name;
  final String imageUrl;
  final int priceUsd;
  final int ratecount;
  final int count;

  Item(
      {required this.name,
      required this.ratecount,
      required this.priceUsd,
      required this.count,
      required this.imageUrl});
}

class ItemList {
  final List<Item> _items = [
    Item(
        name: 'Kit Kat',
        imageUrl: ImageAssets.menu5,
        priceUsd: 2,
        ratecount: 490,
        count: 3),
    Item(
        name: 'Pocky',
        imageUrl: ImageAssets.menu6,
        priceUsd: 3,
        ratecount: 300,
        count: 1),
    Item(
        name: 'Kit Kat',
        imageUrl: ImageAssets.menu5,
        priceUsd: 2,
        ratecount: 490,
        count: 5),
    Item(
        name: 'Pocky',
        imageUrl: ImageAssets.menu6,
        priceUsd: 3,
        ratecount: 300,
        count: 4),
    Item(
        name: 'Kit Kat',
        imageUrl: ImageAssets.menu5,
        priceUsd: 2,
        ratecount: 490,
        count: 1),
    Item(
        name: 'Kit Kat',
        imageUrl: ImageAssets.menu5,
        priceUsd: 2,
        ratecount: 490,
        count: 3),
    Item(
        name: 'Pocky',
        imageUrl: ImageAssets.menu6,
        priceUsd: 3,
        ratecount: 300,
        count: 1),
    Item(
        name: 'Kit Kat',
        imageUrl: ImageAssets.menu5,
        priceUsd: 2,
        ratecount: 490,
        count: 5),
    Item(
        name: 'Pocky',
        imageUrl: ImageAssets.menu6,
        priceUsd: 3,
        ratecount: 300,
        count: 4),
    Item(
        name: 'Kit Kat',
        imageUrl: ImageAssets.menu5,
        priceUsd: 2,
        ratecount: 490,
        count: 1),
  ];

  List<Item> get items => _items;
}

class Item2 {
  final String name;
  final String imageUrl;

  Item2({required this.name, required this.imageUrl});
}

class ItemList2 {
  final List<Item2> _items2 = [
    Item2(name: 'Cake', imageUrl: ImageAssets.cake),
    Item2(name: 'Candy', imageUrl: ImageAssets.candy),
    Item2(name: 'Chocolate', imageUrl: ImageAssets.chocolate),
    Item2(name: 'Cake', imageUrl: ImageAssets.cake),
    Item2(name: 'Candy', imageUrl: ImageAssets.candy),
    Item2(name: 'Chocolate', imageUrl: ImageAssets.chocolate),
    Item2(name: 'Cake', imageUrl: ImageAssets.cake),
    Item2(name: 'Candy', imageUrl: ImageAssets.candy),
    Item2(name: 'Chocolate', imageUrl: ImageAssets.chocolate),
  ];

  List<Item2> get items2 => _items2;
}
