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
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // EmailController.dispose();
    // PasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('LOGIN PAGE')),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
          Rounded_button(
              b_name: 'LOGIN',
              ontap: () {
                if (form_key.currentState!.validate()) {}
              }),
        ]),
      ),
    );
  }
}
