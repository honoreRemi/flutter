import 'package:crud_app1/components/my_button.dart';
import 'package:crud_app1/homepage.dart';
import 'package:flutter/material.dart';

import '../components/my_textfield.dart';
import 'register_page.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
    LoginPage({Key? key, required this.onTap}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //text controller
 final TextEditingController emailController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();

 void Login() {
   // Ajoutez ici la logique pour la connexion
   print('Email: ${emailController.text}');
   print('Password: ${passwordController.text}');
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
              Icons.person,
              size: 80,
              color: Theme.of(context).colorScheme.onSurface,
            ),
            const SizedBox(height: 25),
            //app name
         const   Text(
              "M I N I M A L", style:
            TextStyle(fontSize: 20),
            ),

            const SizedBox(height: 50),
            //email textField
            MyTextField(
              hintText: "Email",
              obscureText: false,
              controller: emailController,
              
            ),

            const SizedBox(height: 10),
            //password textfield

            MyTextField(
              hintText: "Password",
              obscureText: true,
              controller: passwordController,
            ),

            const SizedBox(height: 10),
            //forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("Forgot password?", style: TextStyle(color: Theme.of(context).colorScheme.secondary),
                ),
              ],
            ),

            const SizedBox(height: 25),
            //sign in button
            MyButton(
                Text: "Login",
                onTap: Login
            ),

            const SizedBox(height: 25),
            //don't have an account? Register here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return RegisterPage(onTap: () {  },); // Remplacez LoginPage() par la classe de votre page de connexion
                        },
                      ),
                    );
                  },
                  child: const Text(
                    "Create an account",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}