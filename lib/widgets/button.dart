import 'package:flutter/material.dart';
import '../screens/login.dart';
import '../theme/color.dart';
class Button  extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;


  const Button ({super.key,required this.text,
    required this.onPressed,});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        backgroundColor: Colors.blue,
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, color: Colors.white),
      ),
    );
  }
}