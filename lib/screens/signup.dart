import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../theme/color.dart';
import 'screen1.dart';
import '../widgets/button-login.dart';
import '../widgets/Text-signup.dart';
import '../widgets/buttongoHome.dart';
import '../widgets/passwordtextfield.dart';
import '../widgets/emailtextfield-login.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signup();
}

class _signup extends State<signup> {
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final NameController = TextEditingController();
  final FirebaseService _firebaseService = FirebaseService();

  void handleSignup() async {
    final userCredential = await _firebaseService.signup(
      emailcontroller.text,
      passwordcontroller.text,
      NameController.text,
    );

    if (userCredential != null) {
      print("User signed up: ${userCredential.user?.email}");
    } else {
      print("Signup failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50),
            Textsignup(),
            SizedBox(height: 300),

            SizedBox(height: 20),
            EmailTextField(emailcontroller: emailcontroller),
            SizedBox(height: 20),
            PasswordTextField(passwordcontroller: passwordcontroller),
            SizedBox(height: 20),
            Buttonlogin(),
            SizedBox(height: 20),
            ButtonHome(),
          ],
        ),
      ),
    );
  }
}
