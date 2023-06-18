import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class Button3 extends StatelessWidget {
  const Button3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, "p1", (route) => true);
        },
        child: Text("Button 1 working"),
      ))),
    );
  }
}
