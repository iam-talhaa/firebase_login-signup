import 'package:flutter/material.dart';

class Rounded_button extends StatelessWidget {
  final String b_name;
  final VoidCallback ontap;
  const Rounded_button({super.key, required this.b_name, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.deepPurple),
        child: Center(
          child: Text(
            b_name,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
