import 'package:flutter/material.dart';

class logosplash extends StatelessWidget {
  const logosplash({super.key});

    @override
    Widget build(BuildContext context) {
      return Image.asset(
        'assets/images/logo.jpg',
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      );
    }
  }
