import 'package:flutter/material.dart';
import 'package:flutter_new2/buttonPage2.dart';
import 'package:flutter_new2/buttonPage3.dart';
import 'package:flutter_new2/buttonPge1.dart';
import 'package:flutter_new2/pages/page1.dart';
import 'package:flutter_new2/pages/page3.dart';
import 'package:flutter_new2/tabRouting.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(Routing());
}

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

class AppTabRoute extends StatelessWidget {
  const AppTabRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TabRouter(),
    );
  }
}

class Routing extends StatelessWidget {
  const Routing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "p3",
      routes: {
        "p1": ((context) => Button1()),
        "p2": ((context) => Button2()),
        "p3": ((context) => Button3()),
      },
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget4(),
    );
  }
}

class MyWidget4 extends StatefulWidget {
  const MyWidget4({super.key});

  @override
  State<MyWidget4> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget4> {
  var _currentState = 0;
  final pages = [
    MyWidget5(),
    MyWidget2(),
    Page1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentState,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "List"),
        ],
        onTap: (index) {
          setState(() {
            _currentState = index;
          });
        },
      ),
      body: pages[_currentState],
    );
  }
}

// class Final {}

class MyWidget3 extends StatelessWidget {
  const MyWidget3({super.key});

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
                          color: Colors.red,
                          height: double.infinity,
                          width: 100,
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
                color: Colors.red,
                child: GridView.count(
                  mainAxisSpacing: 3,
                  crossAxisSpacing: 3,
                  crossAxisCount: 3,
                  children: [
                    Container(
                      color: Colors.amberAccent,
                      height: 30,
                      width: 30,
                    ),
                    Container(
                      color: Colors.blue,
                      height: 30,
                      width: 30,
                    ),
                    Container(
                      color: Colors.purple,
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
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
