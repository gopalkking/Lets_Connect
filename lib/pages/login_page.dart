import "package:flutter/material.dart";
import "package:lets_connect/services/auth/auth_service.dart";
import "package:lets_connect/components/my_button.dart";
import "package:lets_connect/components/my_textfield.dart";

class LoginPage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();

// tap to go to register 
final void Function()? onTap;

   LoginPage({super.key, required this.onTap});

 void login(BuildContext context) async{
    //auth service
    final authService=AuthService();

    //try login 
     try {
       await authService.signInWithEmailPassword(_emailcontroller.text, _pwcontroller.text,);
     } 
      catch (e) {
       showDialog(
        context: context, 
        builder: (context) => AlertDialog(
          title: Text(e.toString()),
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
          const Text("Hey! The chat room lights up when you join",
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
            onTap: () => login(context),
            
          ),
         const SizedBox(height: 25,),

          //register now
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Not a member? "),
            GestureDetector(
              onTap: onTap,
              child: const Text(
                "Register now",style: TextStyle(fontWeight: FontWeight.bold),))
          ],
        )
          ],
        ),
      ),
    );
  }
}