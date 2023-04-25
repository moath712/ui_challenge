
import 'package:ui_challenge/style/assets_manager.dart';

class PagesView {
  final String texts;
  final String title;
  final String image;

  PagesView({required this.texts, required this.image, required this.title});
}

final List<PagesView> dataList = [
  PagesView(
    texts: 'Practice with real\n exercices and projects for \nyour portfolio',
    title: 'Learn',
    image: ImageAssets.learn,
  ),
  PagesView(
    texts:
        'Learn how to code great \nvideo game interfaces for \ndifferent devices ',
    title: 'Code',
    image: ImageAssets.code,
  ),
  PagesView(
    texts:
        'Collect case studies of the \nbest teachers in the \n  game  industry',
    title: 'Collect',
    image: ImageAssets.collect,
  ),
];

