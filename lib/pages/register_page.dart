import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  void postData(String username, String email, String password) {
    http.post(
      Uri.parse('https://omanfathurrahmannur.pythonanywhere.com/users'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': username,
        'email': email,
        'password': password,
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState>  formKey = GlobalKey<FormState>();
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();
    final TextEditingController valpassController = TextEditingController();

    String? validateConfirmPassword(String? value) {
      if (value!.isEmpty) {
        return 'Ulangi Password harus diisi';
      }

      if (value != passwordController.text) {
        return 'Password tidak cocok';
      }

      return null;
    }

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
          controller: nameController,
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
          controller: emailController,
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
          controller: passwordController,
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
          controller: valpassController,
          validator: validateConfirmPassword,
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
          onPressed: () {
            if (formKey.currentState!.validate()) {
              // Validasi berhasil, lanjutkan dengan operasi berikutnya
              print('Password dan Ulangi Password cocok');
            }

            String name = nameController.text;
            String email = emailController.text;
            String password = passwordController.text;
            String valpass = valpassController.text;
            // Lakukan operasi atau manipulasi data

            postData(name, email, password);
            print('Name: $name');
            print('Email: $email');
            print('Password: $password');
            print('Validasi Password: $valpass');

            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
          },
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
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      namaInput(),
                      emailInput(),
                      passwordInput(),
                      ulangPasswordInput(),
                    ],
                  ),
                ),
                button(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
