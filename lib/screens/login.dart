import 'package:flutter/material.dart';
import 'signup.dart';
import '../services/firebase_service.dart';
import '../theme/color.dart';
import '../widgets/emailtextfield-login.dart';
import '../widgets/passwordtextfield.dart';
import '../widgets/button-login.dart';
import '../widgets/signup-login.dart';
class login extends StatefulWidget {
  const login({super.key});
  @override
  State<login> createState() => _loginState();
}
class _loginState extends State<login> {
  final  emailcontroller = TextEditingController();
  final  passwordcontroller = TextEditingController();
  final FirebaseService _firebaseService = FirebaseService();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background ,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            EmailTextField(emailcontroller: emailcontroller),
            SizedBox(height: 20),
            PasswordTextField(passwordcontroller: passwordcontroller),
            SizedBox(height: 20),
            Buttonlogin(),
            SizedBox(height: 20),
            Buttonsignup(),

          ],
        ),
      ),
    );
  }
}
