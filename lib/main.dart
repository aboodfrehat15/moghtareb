import 'package:firebase_core/firebase_core.dart'
    show Firebase, FirebaseOptions;
import 'package:flutter/material.dart';
import 'package:moghtareb_off/firebase_options.dart';
import 'package:moghtareb_off/screens/auth.dart';
import 'package:moghtareb_off/screens/home_screen.dart';
// ignore: unused_import
import 'package:moghtareb_off/screens/login_screen.dart';
import 'dart:io';

import 'package:moghtareb_off/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!Platform.isAndroid && !Platform.isIOS) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBb_y2xGwkcdePbVEuhHtNk51VuGl0CEp4",
            appId: "1:71119952329:web:50afac1551f2db0596f018",
            messagingSenderId: "71119952329",
            projectId: "moghtareb-off",
            authDomain: "moghtareb-off.firebaseapp.com",
            storageBucket: "moghtareb-off.appspot.com"));
  } else {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      //home: const Auth(),
      routes: {
        'signupScreen': (context) => const SignUpScreen(),
        'loginScreen': (context) => const LoginScreen(),
        'homeScreen': (context) => HomeScreen(),
        '/': (context) => const Auth(),
      },
    );
  }
}
