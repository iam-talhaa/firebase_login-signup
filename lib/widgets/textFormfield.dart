import 'package:flutter/material.dart';

class TEXTFORM extends StatelessWidget {
  final String hinttext;
  Icon myIcon;
  TEXTFORM({super.key, required this.hinttext, required this.myIcon});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
      hintText: hinttext,
      prefixIcon: myIcon,
      border: OutlineInputBorder(
        borderSide: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2),
        borderRadius: BorderRadius.circular(15),
      ),
    ));
  }
}
