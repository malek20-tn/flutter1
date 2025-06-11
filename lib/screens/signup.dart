import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../theme/color.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signup();
}

class _signup extends State<signup> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final NameController = TextEditingController();
  final FirebaseService _firebaseService = FirebaseService();


  void handleSignup() async {
    final userCredential = await _firebaseService.signup(
      emailController.text,
      passwordController.text,
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
        padding:  EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text("Sign up to continue ",
            style: TextStyle(
              color: AppColor.signupText ,
              fontSize: 50,
              fontWeight: FontWeight.bold,
            ),),
             SizedBox(height: 300),
            TextField(
              controller:NameController,
              decoration: InputDecoration(
                labelText: 'Name',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColor.border,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
               controller:emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColor.border,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller:passwordControlle,
              decoration: InputDecoration(
                labelText: 'password',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    color: AppColor.border,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              child: Text(
                'Sign up',
                style: TextStyle(
                  color: AppColor.signupText,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
