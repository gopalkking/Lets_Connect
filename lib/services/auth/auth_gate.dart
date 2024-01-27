import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lets_connect/services/auth/login_or_register.dart';
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
            return  Homepage();
          }
          //user is not logged in 
          else{
            return const LoginOrRegister();
          }
        },
        ),
    );
  }
}