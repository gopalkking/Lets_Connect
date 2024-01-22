import "package:flutter/material.dart";
import "package:lets_connect/components/my_button.dart";
import "package:lets_connect/components/my_textfield.dart";

class LoginPage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();


   LoginPage({super.key});

 void login(){

 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          //logo
          Icon(
            Icons.message,
            size: 60,
            color: Theme.of(context).colorScheme.primary,
          ),
          const SizedBox(height: 50,),
          //welcome message
          Text("Hey! The chat room lights up when you join",
          style: TextStyle(color: Colors.black87,
          fontSize: 20,
          ),
          ),
          const SizedBox(height: 25),
          //email textfield
          MyTextField(
            hintText: "Email",
            obscureText: false,
            controller: _emailcontroller,
          ),
         const SizedBox(height: 10,),
          //pw  textfield
         MyTextField(
            hintText: "Password",
            obscureText: true,
            controller: _pwcontroller,
          ),
        const SizedBox(height: 25,),
          //login button 
          MyButton(
            text: "Login",
            onTap: login,
          ),
        
          //register now
        
          ],
        ),
      ),
    );
  }
}