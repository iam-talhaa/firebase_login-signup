import 'package:flutter/material.dart';

class TEXTFORM extends StatelessWidget {
  TextEditingController mycontroller;
  final String hinttext;
  Icon myIcon;
  TEXTFORM(
      {super.key,
      required this.hinttext,
      required this.myIcon,
      required this.mycontroller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return 'COMPLETE THE FORM';
          } else
            return null;
        },
        controller: mycontroller,
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
