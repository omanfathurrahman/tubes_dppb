import 'package:flutter/material.dart';

class CuplikanMovieGrid extends StatefulWidget {
  const CuplikanMovieGrid({super.key});

  @override
  State<CuplikanMovieGrid> createState() => _CuplikanMovieGridState();
}

class _CuplikanMovieGridState extends State<CuplikanMovieGrid> {
  final List<Map<String, dynamic>> gridMovie = [
 {
    'image': 'assets/img/cars_movie.jpeg',
    'name': 'Cars',
  },
  {
    'image': 'assets/img/demon_slayer.jpeg',
    'name': 'Demon Slayer',
  },
  {
    'image': 'assets/img/rumble_movie.jpeg',
    'name': 'Rumble',
  },
  {
    'image': 'assets/img/tokyo_drift.jpeg',
    'name': 'Tokyo Drift',
  },
  {
    'image': 'assets/img/transformer.jpeg',
    'name': 'Transformers',
  },
  {
    'image': 'assets/img/Mario.png',
    'name': 'Mario',
  },
  {
    'image': 'assets/img/Aladin.png',
    'name': 'Aladin',
  },
  {
    'image': 'assets/img/emily.png',
    'name': 'Emily',
  },
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
      final String movieName = gridMovie[index]['name'] as String;
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/detail-movie');
        },
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Stack(
              children: [
                Image.asset(
                  '${gridMovie.elementAt(index)['image']}',
                  width: 150,
                  height: 300,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                    width: 80,
                    child: Text(
                      movieName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
}
