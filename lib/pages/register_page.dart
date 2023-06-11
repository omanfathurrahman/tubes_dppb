import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Text(
          'Register',
          style: primaryTextStyle.copyWith(
              fontSize: 36, fontWeight: FontWeight.w700),
        ),
      );
    }

    Widget namaInput() {
      return Container(
        margin: const EdgeInsets.only(top: 67),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Nama Lengkap',
            hintStyle: primaryTextStyle,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 33),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Email',
            hintStyle: primaryTextStyle,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 33),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Kata Sandi',
            hintStyle: primaryTextStyle,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      );
    }

    Widget ulangPasswordInput() {
      return Container(
        margin: const EdgeInsets.only(top: 33),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: 'Ulangi Kata Sandi',
            hintStyle: primaryTextStyle,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff000000),
              ),
            ),
          ),
        ),
      );
    }

    Widget button() {
      return Container(
        margin: const EdgeInsets.only(top: 32),
        width: double.infinity,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: TextButton(
          onPressed: () {},
          child: Text(
            'Register',
            style: primaryTextStyleButton.copyWith(
                fontSize: 20, fontWeight: FontWeight.w400),
          ),
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 50.0),
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              children: [
                header(),
                namaInput(),
                emailInput(),
                passwordInput(),
                ulangPasswordInput(),
                button(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
