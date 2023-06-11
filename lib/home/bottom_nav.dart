import 'package:flutter/material.dart';
import 'package:moviees_app/home/home_page.dart';
import 'package:moviees_app/home/movie_page.dart';
import 'package:moviees_app/home/profile_page.dart';
import 'package:moviees_app/theme.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget customButtonNav() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
        child: ClipRRect(
          borderRadius:const BorderRadius.all(Radius.circular(30)),
          child: BottomNavigationBar(
            backgroundColor: primaryColor,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/icons/icon_home.png',
                    width: 30,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/icons/icon_movie.png',
                    width: 30,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Container(
                  margin: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/icons/icon_profile.png',
                    width: 30,
                  ),
                ),
                label: '',
              ),
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
          break;
        case 1:
          return const MoviePage();
          break;
        case 2:
          return const ProfilePage();
          break;
        default:
          return const HomePage();
      }
    }

    return Scaffold(
      bottomNavigationBar: customButtonNav(),
      body: body(),
    );
  }
}
