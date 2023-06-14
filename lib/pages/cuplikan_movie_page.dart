import 'package:flutter/material.dart';
import 'package:moviees_app/Widget/movie_cuplikan_grid.dart';
import 'package:moviees_app/theme.dart';


class CuplikanMovie extends StatelessWidget {
  const CuplikanMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() { 
        return Column(
      children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cuplikan Movie",
              style: primaryColorTextStyle.copyWith(
                fontSize: 25, fontWeight: FontWeight.w600,
              ),
              ),
              Text(
                "lihat semua",
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                ),
                ),
          ],
        ),
        ),

      ],
    );
    }

    Widget content() {
      return Container(
        margin: EdgeInsets.only(top: 35),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           CuplikanMovieGrid(),
          ],
        ),
      );
    }

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(
        children: [
          SizedBox(height: 25),
          header(),
          SizedBox(
            height: 38,
          ),
          content(),
        ],
      ),
    );
  
  }
        
  }