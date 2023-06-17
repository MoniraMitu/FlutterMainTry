import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

displayToastMassage(String massage, BuildContext) {
  Fluttertoast.showToast(msg: massage);
}

class MyWidget2 extends StatelessWidget {
  const MyWidget2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
              child: ElevatedButton(
        onPressed: () {
          displayToastMassage("HIIIIIII", context);
        },
        child: Text("click here"),
      ))),
    );
  }
}
