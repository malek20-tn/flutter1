import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'screens/MyApp1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();


  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyBISx-y1kZ4uSUF8xbVF01pkEEjEs9F2AE",
        authDomain: "flutter1-fe853.firebaseapp.com",
        projectId: "flutter1-fe853",
        storageBucket: "flutter1-fe853.appspot.com",
        messagingSenderId: "608055639289",
        appId: "1:608055639289:web:ab3167cf2236850a49b628",
        measurementId: "G-2Z5RV8PQ13",
      ),
    );
  } else {

    await Firebase.initializeApp();
  }

  runApp(MyApp());
}
