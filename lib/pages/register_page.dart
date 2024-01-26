

import 'package:flutter/material.dart';
import 'package:lets_connect/services/auth/auth_service.dart';
import 'package:lets_connect/components/my_button.dart';
import 'package:lets_connect/components/my_textfield.dart';


class RegisterPage extends StatelessWidget {
   final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();
  final TextEditingController _confirmpwcontroller = TextEditingController();

   final void Function()? onTap; 
   RegisterPage({super.key,required this.onTap});

   void register(BuildContext context)
   {
    // get auth service
    final _auth = AuthService();
    if(_pwcontroller.text ==_confirmpwcontroller.text){
      try {
        _auth.signUpWithEmailPassword(
      _emailcontroller.text, 
      _pwcontroller.text);
      } catch (e) {
         showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
        ),
        );
      }
    }
    else{
      showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text("Passwords don't match!"),
        ));
    }
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
          Text("Let's create account for you",
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

          //confirm pw textfield
        MyTextField(
            hintText: "Confirm password",
            obscureText: true,
            controller: _confirmpwcontroller,
          ),

          const SizedBox(height: 25,),

          //login button 
          MyButton(
            text: "Register",
            onTap: () => register(context),
            
          ),
         const SizedBox(height: 25,),

          //register now
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have an account? "),
            GestureDetector(
              onTap: onTap,
              child: Text("Login now",
              style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ],
        )
          ],
        ),
      ),
    );
  }
}