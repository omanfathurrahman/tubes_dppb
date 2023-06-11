import 'package:flutter/material.dart';
import 'package:moviees_app/theme.dart';

class LupaPage extends StatelessWidget {
  const LupaPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Center(
        child: Text(
          'Lupa AKun',
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
            Navigator.pushNamedAndRemoveUntil(
                context, '/sign-in', (route) => false);
          },
          child: Text(
            'Reset Password',
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
                button(),
                const SizedBox(
                  height: 30,
                ),
                const Divider(
                  endIndent: 40,
                  indent: 40,
                  thickness: 1,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
