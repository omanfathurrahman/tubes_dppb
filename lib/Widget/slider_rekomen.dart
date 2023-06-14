import 'package:flutter/material.dart';

class SliderCardRekomen extends StatefulWidget {
  const SliderCardRekomen({super.key});

  @override
  State<SliderCardRekomen> createState() => _SliderCardRekomenState();
}

class _SliderCardRekomenState extends State<SliderCardRekomen> {
  PageController? _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      viewportFraction: 0.9,
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _cards = [
      Card(
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              'assets/img/cars_movie.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Card(
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/img/rumble_movie.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Card(
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/img/transformer.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Card(
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/img/tokyo_drift.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Card(
        child: GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(
              'assets/img/demon_slayer.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    ];

    return SizedBox(
      height: 350,
      width: 250,
      child: PageView.builder(
        controller: _pageController,
        itemCount: _cards.length,
        itemBuilder: (BuildContext context, int index) {
          return Transform.scale(
            scale: index == _currentIndex ? 1 : 0.9,
            child: _cards[index],
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
