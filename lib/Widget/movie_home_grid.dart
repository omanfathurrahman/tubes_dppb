import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MovieGrid extends StatefulWidget {
  const MovieGrid({super.key});

  @override
  State<MovieGrid> createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid> {

    @override
  void initState() {
    super.initState();
    // Panggil fungsi untuk mengambil data dari API
    fetchDataFromApi();
  }

  late List<Map<String, dynamic>> gridMovie = [];

  Future<void> fetchDataFromApi() async {
    final response = await http
        .get(Uri.parse('https://omanfathurrahmannur.pythonanywhere.com/films'));
    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      List<Map<String, dynamic>> tempList = [];
      for (var data in jsonData) {
        Map<String, dynamic> movie = {
          'image': 'https://drive.google.com/uc?export=view&id=${data['link']}',
        };
        tempList.add(movie);
      }
      setState(() {
        gridMovie = tempList;
      });
    } else {
      throw Exception('Failed to fetch data from API');
    }
  }

  
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        mainAxisExtent: 200,
      ),
      itemCount: gridMovie.length,
      itemBuilder: (_, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/detail-movie');
          },
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                '${gridMovie.elementAt(index)['image']}',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
