import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:moghtareb_off/screens/home_screen.dart';
import 'package:moghtareb_off/screens/login_screen.dart';

class Auth extends StatelessWidget {
  const Auth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: ((context, snapshot) {
            if (snapshot.hasData) {
              // ignore: prefer_const_constructors
              return MyHomePage();
            } else {
              // ignore: prefer_const_constructors
              return LoginScreen();
            }
          })),
    );
  }
}
