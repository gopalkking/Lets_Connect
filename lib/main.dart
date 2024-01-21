import 'package:flutter/material.dart';
import 'package:lets_connect/pages/login_page.dart';
import 'package:lets_connect/themes/light_mode.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      theme: lightMode,
    );
  }
}