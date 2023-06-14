import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class CategoryMovie extends StatelessWidget {
  const CategoryMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Genre Movie",
                      style: primaryColorTextStyle.copyWith(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/img/Mario.png',
                        height: 150,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Animasi",
                      style: primaryTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    Spacer(),
                  InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/cuplikan-movie');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
                  Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/img/Aladin.png',
                        height: 150,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Fantasi",
                      style: primaryTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    Spacer(),
                      InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/cuplikan-movie');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
                Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/img/emily.png',
                        height: 150,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Drama",
                      style: primaryTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    Spacer(),
                       InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/cuplikan-movie');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/img/Horor.png',
                        height: 150,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Horor",
                      style: primaryTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    Spacer(),
                     InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/cuplikan-movie');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
               Padding(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/img/transformer.jpeg',
                        height: 150,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Action",
                      style: primaryTextStyle.copyWith(
                        fontSize: 22,
                      ),
                    ),
                    Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/cuplikan-movie');
                      },
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 25,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
