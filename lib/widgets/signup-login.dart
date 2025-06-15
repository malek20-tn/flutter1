import 'package:flutter/material.dart';
import '../screens/signup.dart';
import '../theme/color.dart';
class Buttonsignup  extends StatelessWidget {
  const Buttonsignup ({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const signup()),
        );
        },
      child: Text('Sign Up',
          style: TextStyle(
            color: AppColor.signupText,
            fontSize: 20,
          )
      ),
    );
  }
}