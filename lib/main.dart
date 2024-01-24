import 'package:flutter/material.dart';
import 'package:lets_connect/auth/login_or_register.dart';
import 'package:lets_connect/themes/light_mode.dart';
 
void main  ()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LoginOrRegister(),
      theme: lightMode,
    );
  }
}