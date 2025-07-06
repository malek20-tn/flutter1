import 'package:flutter/material.dart';
import 'signup.dart';
import '../services/firebase_service.dart';
import '../theme/color.dart';
import '../widgets/button.dart';
import '../widgets/TextField.dart';
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
            TextField(
              controller: emailcontroller,
          decoration: InputDecoration(
              hintText: "Email",),

            ),
            SizedBox(height: 20),
            TextField(
              controller:passwordcontroller ,
              decoration: InputDecoration(
                hintText: "password",),

            ),

            SizedBox(height: 20),
            Button(
              text: "Login",
              onPressed: () {
              },
            ),
            SizedBox(height: 20),
            Button(
              text: "Sign Up",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Signup()),
                );
              },
            ),
            SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}
