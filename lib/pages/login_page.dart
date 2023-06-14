import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:moviees_app/session_manager.dart';

Future<String?> cariUsername(String email) async {
  var url = Uri.parse(
      'https://omanfathurrahmannur.pythonanywhere.com/users'); // Ganti dengan URL endpoint yang sesuai

  var response = await http.get(url);

  if (response.statusCode == 200) {
    var tes = jsonDecode(response.body);
    for (var i in tes) {
      if (i['email'] == email) {
        return i['username'];
      }
    }
  }
  return null;
}

Future<bool> login(String email, String password) async {
  var url = Uri.parse(
      'https://omanfathurrahmannur.pythonanywhere.com/users'); // Ganti dengan URL endpoint yang sesuai

  var response = await http.get(url);

  if (response.statusCode == 200) {
    var tes = jsonDecode(response.body);
    for (var i in tes) {
      if (i['email'] == email && i['password'] == password) {
        print('Login Berhasil');
        return true;
      }
    }
    return false; // Mengembalikan response jika permintaan berhasil
  } else {
    throw Exception(
        'Request failed with status: ${response.statusCode}.'); // Melempar Exception jika permintaan tidak berhasil
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    Widget header() {
      return Center(
        child: Text(
          'Login',
          style: primaryTextStyle.copyWith(
              fontSize: 38, fontWeight: FontWeight.w700),
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 48),
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
            hintText: 'password',
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
            String email = emailController.text;
            String password = passwordController.text;
            String username = '';
            cariUsername(email).then((value){
              username = value!;
            });
            SessionManager.saveUser(username, email);

            login(email, password).then(
              (value) {
                if (value) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/home',
                    (route) => false,
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Email atau Password salah'),
                    ),
                  );
                }
              },
            );
          },
          child: Text(
            'Login',
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
                emailInput(),
                passwordInput(),
                button(),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
