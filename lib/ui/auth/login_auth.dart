import 'dart:js_interop';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_practise/ui/auth/sign_up.dart';
import 'package:firebase_practise/utils/utils.dart';
import 'package:firebase_practise/widgets/Rounded_button.dart';
import 'package:firebase_practise/widgets/textFormfield.dart';
import 'package:flutter/material.dart';

class Login_screen extends StatefulWidget {
  const Login_screen({super.key});

  @override
  State<Login_screen> createState() => _Login_screenState();
}

class _Login_screenState extends State<Login_screen> {
  final form_key = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();
  final _auth = FirebaseAuth.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // EmailController.dispose();
    // PasswordController.dispose();
  }

  void Login() {
    _auth
        .signInWithEmailAndPassword(
            email: EmailController.text,
            password: PasswordController.text.toString())
        .then((value) {})
        .onError((error, stackTrace) {
      Utils().showToast(error.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
            child: Text(
              'Log In',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Form(
              key: form_key,
              child: Column(
                children: [
                  TEXTFORM(
                    mycontroller: EmailController,
                    hinttext: 'EMAIL',
                    myIcon: Icon(Icons.mail),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TEXTFORM(
                      mycontroller: PasswordController,
                      hinttext: 'PASSWORD',
                      myIcon: Icon(Icons.lock)),
                  SizedBox(
                    height: 10,
                  ),
                ],
              )),
          SizedBox(
            height: 20,
          ),
          Rounded_button(
              b_name: 'LOGIN',
              ontap: () {
                if (form_key.currentState!.validate()) {
                  Login();
                }
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Dont't Have any Account?"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => SignUp_screen()));
                  },
                  child: Text('SignUP'))
            ],
          )
        ]),
      ),
    );
  }
}
