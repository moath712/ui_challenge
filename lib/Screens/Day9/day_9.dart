import 'package:flutter/material.dart';
import 'package:ui_challenge/Screens/Day9/day_9_class.dart';
import 'package:ui_challenge/Screens/Day9/widgets/delicious_dopamine.dart';
import 'package:ui_challenge/Screens/Day9/widgets/navigation_bar.dart';
import 'package:ui_challenge/Screens/Day9/widgets/search_bar.dart';
import 'package:ui_challenge/Screens/Day9/widgets/title_seeall.dart';
import 'package:ui_challenge/Screens/Day9/widgets/top_goodies.dart';
import 'package:ui_challenge/Screens/Day9/widgets/top_image.dart';
import 'package:ui_challenge/style/assets_manager.dart';
import 'package:ui_challenge/style/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Day9 extends StatefulWidget {
  const Day9({super.key});

  @override
  _Day9State createState() => _Day9State();
}

class _Day9State extends State<Day9> {
  final TextEditingController _searchController = TextEditingController();
  final List<Item> _items = ItemList().items;
  final List<Item2> _items2 = ItemList2().items2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const NavigationBar2(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 50),
            Searchbar(searchController: _searchController),
            const Topimage(),
            const TitleWithSeeAll(),
            DeliciousDopamineList(items: _items),
            const TitleWithSeeAll(),
            TopGoodiesList(items2: _items2),
          ],
        ),
      ),
    );
  }
}
