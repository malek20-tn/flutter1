import 'package:flutter/material.dart';
import '../screens/login.dart';
import '../theme/color.dart';
class Buttonlogin  extends StatelessWidget {
  const Buttonlogin ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      child: Text(
        'Login',
        style: TextStyle(
          color: AppColor.loginButtonText,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {},
    );
  }
}