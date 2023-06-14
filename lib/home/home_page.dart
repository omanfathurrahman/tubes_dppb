import 'package:flutter/material.dart';
import 'package:moviees_app/Widget/movie_home_grid.dart';
import 'package:moviees_app/Widget/slider_movie.dart';
import 'package:moviees_app/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Row(
        children: [
          Expanded(
            child: Text(
              'MOVIEE',
              style: primaryColorTextStyle.copyWith(
                  fontSize: 32, fontWeight: FontWeight.w800),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: primaryColor,
            ),
          )
        ],
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 46),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Menu',
              style: primaryTextStyle.copyWith(
                  fontSize: 20, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Aksi yang akan dijalankan saat tombol ditekan
                          Navigator.pushNamed(context, '/category-movie');
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 18,
                            vertical: 18,
                          ),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/icons/icon_genre.png',
                            width: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Genre',
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                // NOte:Cuplikan
                SizedBox(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Aksi yang akan dijalankan saat tombol ditekan
                          Navigator.pushNamed(context, '/cuplikan-movie');
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 21,
                            vertical: 18,
                          ),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/icons/icon_movie.png',
                            width: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Cuplikan Film',
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                //Note: PEngaturan
                SizedBox(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          // Aksi yang akan dijalankan saat tombol ditekan
                          Navigator.pushNamed(context, '/pengaturan');
                        },
                        borderRadius: BorderRadius.circular(8),
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 21,
                            vertical: 18,
                          ),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Image.asset(
                            'assets/icons/icon_pengaturan.png',
                            width: 40,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Pengaturan',
                        style: primaryTextStyle.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 47,
            ),
            const MovieGrid()
          ],
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(
        children: [
          const SizedBox(height: 30),
          header(),
          const SizedBox(
            height: 48,
          ),
          const SliderCardMovie(),
          const SizedBox(
            height: 46,
          ),
          content(),
        ],
      ),
    );
  }
}
