import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SliderCardMovie extends StatefulWidget {
  const SliderCardMovie({super.key});

  @override
  State<SliderCardMovie> createState() => _SliderCardMovieState();
}

class _SliderCardMovieState extends State<SliderCardMovie> {
  late List<Widget> cardDataList = [];

  @override
  void initState() {
    super.initState();
    // Inisialisasi PageController
    _pageController = PageController(
      viewportFraction: 0.8,
    );
    // Panggil fungsi untuk mengambil data dari API
    fetchDataFromApi();
  }

  Future<void> fetchDataFromApi() async {
    final response = await http
        .get(Uri.parse('https://omanfathurrahmannur.pythonanywhere.com/films'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      List<Widget> tempList = [];
      for (var data in jsonData) {
        Widget cardData = Card(
          child: GestureDetector(
            onTap: () {},
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                'https://drive.google.com/uc?export=view&id=${data['link']}',
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
        tempList.add(cardData);
      }
      setState(() {
        cardDataList = tempList;
      });
    } else {
      throw Exception('Failed to fetch data from API');
    }
  }

  PageController? _pageController;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // final List<Widget> cards = [
    //   Card(
    //     child: GestureDetector(
    //       onTap: () {},
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(10),
    //         child: Image.network(
    //           'https://drive.google.com/uc?export=view&id=1iWB1Fr9bUgVJEkO9uyLNm0g8IQO2sab2',
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //   ),
    //   Card(
    //     child: GestureDetector(
    //       onTap: () {},
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(10),
    //         child: Image.asset(
    //           'assets/img/rumble.jpg',
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //   ),
    //   Card(
    //     child: GestureDetector(
    //       onTap: () {},
    //       child: ClipRRect(
    //         borderRadius: BorderRadius.circular(10),
    //         child: Image.asset(
    //           'assets/img/rumble.jpg',
    //           fit: BoxFit.cover,
    //         ),
    //       ),
    //     ),
    //   ),
    // ];

    return SizedBox(
      height: 158,
      child: PageView.builder(
        controller: _pageController,
        itemCount: cardDataList.length,
        itemBuilder: (BuildContext context, int index) {
          return Transform.scale(
            scale: index == _currentIndex ? 1 : 0.9,
            child: cardDataList[index],
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
