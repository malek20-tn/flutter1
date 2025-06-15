import 'package:flutter/material.dart';
import 'package:flutter1/screens/signup.dart';
import '../screens/screen1.dart';
import '../theme/color.dart';
class Textsignup extends StatelessWidget {
  const Textsignup  ({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Sign up to continue ",
      style: TextStyle(
        color: AppColor.signupText,
        fontSize: 50,
        fontWeight: FontWeight.bold,
      ),
    );}}