import 'package:flutter/material.dart';
import 'SplashScreen.dart';
class MyApp1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Splash Demo',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
