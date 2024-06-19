import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_practise/ui/auth/login_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_practise/ui/auth/sign_up.dart';
import 'package:firebase_practise/widgets/Rounded_button.dart';
import 'package:firebase_practise/widgets/textFormfield.dart';
import 'package:flutter/material.dart';

class SignUp_screen extends StatefulWidget {
  const SignUp_screen({super.key});

  @override
  State<SignUp_screen> createState() => _SignUp_screenState();
}

class _SignUp_screenState extends State<SignUp_screen> {
  final form_key = GlobalKey<FormState>();
  final EmailController = TextEditingController();
  final PasswordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // EmailController.dispose();
    // PasswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('Sign UP');
    print('sign up page updated');
    print('Testing');
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(child: Text('SignUP PAGE')),
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
              b_name: 'SIGN UP',
              ontap: () {
                if (form_key.currentState!.validate()) {
                  _auth.createUserWithEmailAndPassword(
                      email: EmailController.text.toString(),
                      password: PasswordController.text.toString());
                  showToast();
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => SignUp_screen()));
                }
              }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already  Have an Account?"),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Login_screen()));
                  },
                  child: Text('Login '))
            ],
          )
        ]),
      ),
    );
  }

  void showToast() {
    Fluttertoast.showToast(
        msg: "Sign Up SuccessFull",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 4,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
