import 'package:flutter/material.dart';

class MovieGrid extends StatefulWidget {
  const MovieGrid({super.key});

  @override
  State<MovieGrid> createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid> {
  final List<Map<String, dynamic>> gridMovie = [
    {
      'image': 'assets/img/cars_movie.jpeg',
    },
    {
      'image': 'assets/img/demon_slayer.jpeg',
    },
    {
      'image': 'assets/img/rumble_movie.jpeg',
    },
    {
      'image': 'assets/img/tokyo_drift.jpeg',
    },
    {
      'image': 'assets/img/transformer.jpeg',
    }
  ];
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
              child: Image.asset(
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
