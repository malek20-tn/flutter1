import 'package:flutter/material.dart';

import '../theme/color.dart';
import '../widgets/logo-Splash.dart';
import '../widgets/text-splash.dart';
import '../widgets/button-splash.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            logosplash(),
            const SizedBox(height: 20),
            textsplash(),
            const SizedBox(height: 20),
            buttonsplash(),

          ],
        ),
      ),
    );
  }
}
