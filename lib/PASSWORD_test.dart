import 'package:flutter/material.dart';

class PasswordTest extends StatefulWidget {
  const PasswordTest({super.key});

  @override
  State<PasswordTest> createState() => _PasswordTestState();
}

class _PasswordTestState extends State<PasswordTest> {
  TextEditingController textField = TextEditingController();
  bool textHide = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TextField(
        controller: textField,
        obscureText: textHide,
        decoration: InputDecoration(
          hintText: "Enter the password",
          suffixIcon: IconButton(onPressed: () {
            setState(() {

              textHide = !textHide;

            });
          }, icon: textHide ? Icon(Icons.remove_red_eye):
              Icon(Icons.add)
          )

        ),

      ),
    );
  }
}
