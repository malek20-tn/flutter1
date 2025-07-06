import 'package:flutter/material.dart';
import '../theme/color.dart';

class AppLabel extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final TextAlign textAlign;

  const AppLabel({
    super.key,
    required this.text,
    this.fontSize = 16,
    this.color = AppColor.signupText,
    this.textAlign = TextAlign.start,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontSize: fontSize,
        color: color,
      ),
    );
  }
}
