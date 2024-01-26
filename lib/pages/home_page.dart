import 'package:flutter/material.dart';
import 'package:lets_connect/services/auth/auth_service.dart';
import 'package:lets_connect/components/my_drawer.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      
      ),
      drawer: MyDrawer(),
    );
  }
}