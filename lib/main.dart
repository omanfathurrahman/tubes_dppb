import 'package:flutter/material.dart';
import 'package:moviees_app/home/bottom_nav.dart';
import 'package:moviees_app/home/pengaturan.dart';
import 'package:moviees_app/home/rekomen_page.dart';
import 'package:moviees_app/pages/category.dart';
import 'package:moviees_app/pages/cuplikan_movie_page.dart';
import 'package:moviees_app/pages/detail_movie_page.dart';
import 'package:moviees_app/pages/informasi_page.dart';
import 'package:moviees_app/pages/lupaakun_page.dart';
import 'package:moviees_app/pages/notifikasi_movie_page.dart';
import 'package:moviees_app/pages/register_page.dart';
import 'package:moviees_app/pages/selamat_page.dart';
import './pages/login_page.dart';
import './pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/selamat': (context) => SelamatPage(),
        '/sign-in': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/home': (context) => MainPage(),
        '/detail-movie': (context) => DetailMovie(),
        // '/genre-movie': (context) => GenreMovie(),
        '/cuplikan-movie': (context) => CuplikanMovie(),
        '/category-movie': (context) => CategoryMovie(),
        '/notifikasi-movie': (context) => NotifikasiMovie(),
        '/pengaturan':(context) => pengaturanpage(),
        '/lupaakun' : (context) => LupaPage(),
        '/rekomen': (context) => RekomenPage(),
        '/informasi-page': (context) => informasiPage(),
      },
    );
  }
}
