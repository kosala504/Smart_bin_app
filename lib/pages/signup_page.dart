import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:my_first_app/pages/login_page.dart';

void test() {
  // ignore: avoid_print
  print("Clicked");
}

// ignore: must_be_immutable
class SignUpPage extends StatefulWidget {
  SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool passwordVisible = true;
  bool passwordVisible2 = true;

  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPwController = TextEditingController();

  void registerUser() async {
    showDialog(
      context: context,
      builder: (_) => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    if (passwordController.text != confirmPwController.text) {
      Navigator.pop(context); //pop loading circle

      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("Passwords don't match"),
              ));
    } else {
      //try creating the user
      try {
        // ignore: unused_local_variable
        UserCredential? userCredential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
                email: emailController.text, password: passwordController.text);

        FirebaseFirestore.instance
            .collection("Users")
            .doc(userCredential.user!.uid)
            .set({
          'Name': userNameController.text,
          'email': emailController.text
        });

        //pop loading circle
        Navigator.pop(context);
        if (mounted) {
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => LoginPage()));
        }
      } on FirebaseAuthException catch (e) {
        Navigator.pop(context);
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.code),
                ));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'User Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5)),
                  controller: userNameController,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.5)),
                  controller: emailController,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  obscureText: passwordVisible,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      fillColor: Colors.white.withOpacity(0.5)),
                  controller: passwordController,
                ),
                SizedBox(
                  height: 16,
                ),
                TextField(
                  obscureText: passwordVisible2,
                  enableSuggestions: false,
                  autocorrect: false,
                  decoration: InputDecoration(
                      hintText: 'Confirm Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      filled: true,
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible2
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(
                            () {
                              passwordVisible2 = !passwordVisible2;
                            },
                          );
                        },
                      ),
                      fillColor: Colors.white.withOpacity(0.5)),
                  controller: confirmPwController,
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        registerUser();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black),
                      child: Text('Register')),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.white),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/');
                        },
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.amber),
                        child: Text(
                          'Login Here',
                          style:
                              TextStyle(decoration: TextDecoration.underline),
                        ))
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
