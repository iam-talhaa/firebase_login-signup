import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('APPBAR'),
        toolbarHeight: 200.0,
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
