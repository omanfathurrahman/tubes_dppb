import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class pengaturanpage extends StatelessWidget {
  const pengaturanpage({super.key});

  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        title: Text(
          'Pengaturan',
          style: primaryColorTextStyle.copyWith(
              fontSize: 32, fontWeight: FontWeight.w800),
        ),
        backgroundColor: bgcolor1,
        elevation: 0,
      );
    }

    

    

    Widget informasi() {
      return Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          child: Text(
            'Informasi Aplikasi',
            style: primaryTextStyleButton.copyWith(
                fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      );
    }
    Widget notifikasi() {
      return Container(
        margin: const EdgeInsets.only(top: 30,bottom: 30),
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/register');
          },
          child: Text(
            'Notifikasi',
            style: primaryTextStyleButton.copyWith(
                fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          children: [header(),  notifikasi(), informasi()],
        ),
      );
    }

    return Scaffold(
      backgroundColor: bgcolor1,
      body: Center(
        child: SafeArea(
          child: Container(
            margin: const EdgeInsets.only(top: 40),
            child: content(),
          ),
        ),
      ),
    );
  }
}
