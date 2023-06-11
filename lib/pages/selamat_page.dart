import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class SelamatPage extends StatelessWidget {
  const SelamatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Text(
              'SELAMAT DATANG',
              style: primaryTextStyle.copyWith(
                  fontSize: 24, fontWeight: FontWeight.w800),
            ),
            const SizedBox(
              height: 13,
            ),
            Text(
              'Memulai menikmati film kesayangan anda\nmoviee.oec',
              textAlign: TextAlign.center,
              style: primaryTextStyle.copyWith(
                  fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ],
        ),
      );
    }

    Widget body() {
      return SizedBox(
        height: 300,
        child: Center(
          child: Image.asset('assets/icons/icon_selamat.png'),
        ),
      );
    }

    Widget buttonLogin() {
      return Container(
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(),
          color: bgcolor1,
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/sign-in');
          },
          child: Text(
            'Login',
            style: primaryTextStyle.copyWith(
                fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      );
    }

    Widget buttonRegister() {
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
            'Register',
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
          children: [header(), body(), buttonLogin(), buttonRegister()],
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
