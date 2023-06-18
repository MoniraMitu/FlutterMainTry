import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_new2/main.dart';
import 'package:flutter_new2/pages/page1.dart';
import 'package:flutter_new2/pages/page3.dart';

class TabRouter extends StatelessWidget {
  const TabRouter({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(
              text: 'Tab 1',
              icon: Icon(Icons.yard),
            ),
            Tab(
              text: 'Tab 3',
              icon: Icon(Icons.adb_rounded),
            ),
            Tab(
              text: 'Tab 3',
              icon: Icon(Icons.account_circle_outlined),
            ),
          ]),
        ),
        body: TabBarView(
          children: [
            Page1(),
            MyWidget5(),
            MyWidget2(),
          ],
        ),
      ),
    );
  }
}
