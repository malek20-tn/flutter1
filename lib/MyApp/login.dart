import 'package:flutter/material.dart';
import 'signup.dart';import 'package:firebase_auth/firebase_auth.dart';
class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {  final TextEditingController emailController = TextEditingController();
final TextEditingController passwordController = TextEditingController();
bool isLoading = false;
String? errorMessage;

void login() async {
  setState(() {
    isLoading = true;
    errorMessage = null;
  });
  try {
    UserCredential user = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    print("User logged in: ${user.user?.email}");
    // Ici tu peux naviguer vers la page principale de ton app
  } on FirebaseAuthException catch (e) {
    setState(() {
      errorMessage = e.message;
    });
    print("FirebaseAuth Error: $e");
  } catch (e) {
    setState(() {
      errorMessage = "Une erreur est survenue. Veuillez réessayer.";
    });
    print("Error: $e");
  } finally {
    setState(() {
      isLoading = false;
    });
  }
}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 300),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.blue,
                    width: 1.0,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.password),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.blue,
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
                  color: Colors.black,
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
                    color: Colors.blue,
                    fontSize: 20,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
