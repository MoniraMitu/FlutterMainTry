import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_new2/main.dart';

class Button1 extends StatelessWidget {
  const Button1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, "p2", (route) => true);
        },
        child: Text("button 2 working"),
      ))),
    );
  }
}
