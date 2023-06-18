import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new2/main.dart';

class Button2 extends StatelessWidget {
  const Button2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, "p3", (route) => true);
        },
        child: Text("button 3 working"),
      ))),
    );
  }
}
