import 'package:flutter/material.dart';
import '../theme/color.dart';
import '../widgets/logo-Splash.dart';
import '../widgets/Text.dart';
import '../widgets/button.dart';
import 'login.dart';

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
          AppLabel(
            text:"Welcom",
          ),
            const SizedBox(height: 20),
            Button(
              text: "login",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const login()),
                );
              },
            ),


          ],
        ),
      ),
    );
  }
}
