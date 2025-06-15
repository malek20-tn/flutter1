import 'package:flutter/material.dart';
import '../screens/screen1.dart';
import '../theme/color.dart';

class ButtonHome extends StatelessWidget {
  const ButtonHome  ({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Screen1()),
        );
      },
      child: Text(
        "Go to Home",
        style: TextStyle(
          color: AppColor.signupText,
          fontSize: 18,
        ),
      ),
    );
  }
}