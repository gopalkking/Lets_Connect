import 'package:flutter/material.dart';
import 'package:lets_connect/auth/auth_service.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

void logout(){
  final _auth=AuthService();
  _auth.signOut();  
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
        actions: [
          IconButton(onPressed: logout, icon: Icon(Icons.logout))
        ],
      ),
    );
  }
}