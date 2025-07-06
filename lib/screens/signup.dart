import 'package:flutter/material.dart';
import '../services/firebase_service.dart';
import '../theme/color.dart';
import 'screen1.dart';
import '../widgets/button.dart';


class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _Signup();
}

class _Signup extends State<Signup> {
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
            SizedBox(height: 300),
            TextField(
              controller: NameController,
              decoration: InputDecoration(
                hintText: "Name",),
            ),
            SizedBox(height: 20),
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
              text: "login",
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Screen1()),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
