import 'package:flutter/material.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          height: double.infinity,
                          width: 100,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("img/img1.jpeg"))),
                        ),
                        Container(
                          color: Colors.purpleAccent,
                          height: double.infinity,
                          width: 100,
                        ),
                        Container(
                          color: Colors.lightGreenAccent,
                          height: double.infinity,
                          width: 100,
                        ),
                        Container(
                          color: Colors.green,
                          height: double.infinity,
                          width: 100,
                        ),
                        Container(
                          color: Colors.white,
                          height: double.infinity,
                          width: 100,
                        ),
                        Container(
                          color: Colors.deepPurple,
                          height: double.infinity,
                          width: 100,
                        ),
                        Container(
                          color: Colors.grey,
                          height: double.infinity,
                          width: 100,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.yellowAccent,
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.amberAccent,
                child: Center(child: Text("Mitu")),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.pink,
                child: Center(
                    child: Image.asset(
                  "img/img1.jpeg",
                  height: double.infinity,
                )),
              ),
              Container(
                height: 200,
                width: double.infinity,
                color: Colors.pink,
                child: Center(
                    child: Image.asset(
                  "img/img2.jpeg",
                  height: double.infinity,
                )),
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                child: const Center(
                  child: Text("Mitu",
                      style: TextStyle(
                          color: Colors.pink,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
