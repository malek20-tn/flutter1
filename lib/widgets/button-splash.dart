import 'package:flutter/material.dart';
import '../screens/login.dart';
import '../theme/color.dart';

class buttonsplash extends StatelessWidget {
  const buttonsplash ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColor.buttonColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const login()),
        );
      },
      child: const Text(
        'Proceed to Login',
        style: TextStyle(
          color: AppColor.buttonTextColor,
          fontSize: 23,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }}