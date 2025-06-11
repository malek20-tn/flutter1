import 'package:flutter/material.dart';
import 'signup.dart';
import '../services/firebase_service.dart';
import '../theme/color.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseService _firebaseService = FirebaseService();
@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.background ,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 300),
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: AppColor.border,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.password),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: AppColor.border,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            MaterialButton(
              child: Text(
                'Login',
                style: TextStyle(
                  color: AppColor.loginButtonText,
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {},
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const signup()),
                );},
              child: Text('Sign Up',
                  style: TextStyle(
                    color: AppColor.signupText,
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
