import 'package:flutter/material.dart';

class PageIndicator extends StatefulWidget {
  final int pageCount;
  final int currentIndex;
  final PageController pageController;

  const PageIndicator(
      {super.key,
      required this.pageCount,
      required this.currentIndex,
      required this.pageController});

  @override
  _PageIndicatorState createState() => _PageIndicatorState();
}

class _PageIndicatorState extends State<PageIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(milliseconds: 200),
      vsync: this,
    );

    _scaleAnimation = Tween<double>(begin: 1, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.transparent,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.pageCount, (index) {
            bool isSelected = index == widget.currentIndex;
            return GestureDetector(
              onTap: () {
                _controller.reset();
                _controller.forward();
                widget.pageController.animateToPage(
                  index,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.ease,
                );
              },
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  double scale = isSelected ? _scaleAnimation.value : 1.0;
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5.0),
                    width: isSelected ? (34.22) : 14 * scale,
                    height: 14 * scale,
                    decoration: BoxDecoration(
                      color: isSelected ? Colors.grey : Colors.white,
                      border: isSelected
                          ? Border.all(
                              color: Colors.grey, width: isSelected ? 2 : 1)
                          : Border.all(
                              color: Colors.grey, width: isSelected ? 2 : 1),
                      borderRadius: BorderRadius.circular(7 * scale),
                    ),
                  );
                },
              ),
            );
          }),
        ),
      ),
    );
  }
}
