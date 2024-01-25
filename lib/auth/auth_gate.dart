import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:lets_connect/auth/login_or_register.dart';
import 'package:lets_connect/pages/home_page.dart';


class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(), 
        builder: (context , snapshot)
        {
          //user logged in 
          if(snapshot.hasData){
            return const Homepage();
          }
          //user is not logged in 
          else{
            return const LoginOrRegister();
          }
        }),
    );
  }
}