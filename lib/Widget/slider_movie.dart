import 'package:flutter/material.dart';

class SliderCardMovie extends StatefulWidget {
  const SliderCardMovie({super.key});

  @override
  State<SliderCardMovie> createState() => _SliderCardMovieState();
}

class _SliderCardMovieState extends State<SliderCardMovie> {
  PageController? _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> cards = [
      Card(
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/img/rumble.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Card(
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/img/rumble.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Card(
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/img/rumble.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ];

    return SizedBox(
      height: 158,
      child: PageView.builder(
        controller: _pageController,
        itemCount: cards.length,
        itemBuilder: (BuildContext context, int index) {
          return Transform.scale(
            scale: index == _currentIndex ? 1 : 0.9,
            child: cards[index],
          );
        },
        onPageChanged: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
