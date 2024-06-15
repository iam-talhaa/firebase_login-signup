import 'dart:async';
import 'dart:js';
import 'package:firebase_practise/ui/auth/login_auth.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Login_screen())));
  }
}
