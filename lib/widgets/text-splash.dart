import 'package:flutter/material.dart';
import '../theme/color.dart';
class textsplash extends StatelessWidget {
  const textsplash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Welcome',
      style: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColor.welcomeTextColor,
      ),
    );
  }
}