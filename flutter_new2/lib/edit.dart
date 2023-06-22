import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_new2/Model/post.dart';
import 'package:flutter_new2/editUpdate.dart';
import 'package:flutter_new2/list.dart';
import 'package:http/http.dart';
import 'package:flutter_new2/service/service.dart';

class editList extends StatelessWidget {
  final Post? edit;
  const editList({super.key, this.edit});

  Widget getPost(context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 1.0),
            Text(
              "Id : " + edit!.id.toString(),
              style: TextStyle(fontSize: 15, fontFamily: "bolt-semibold"),
              textAlign: TextAlign.left,
            ),
            SizedBox(width: 1.0), // give it width

            Text(
              edit!.body.toString(),
              style: TextStyle(fontSize: 10, fontFamily: "bolt-semibold"),
              textAlign: TextAlign.left,
            ),
            SizedBox(width: 1.0), // give it width

            TextButton(
                onPressed: () async {
                  (await Service().deletePosts(edit!.id));
                  // print("Delete Call!");

                  Navigator.pushAndRemoveUntil<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) => MyWidget11(),
                    ),
                    (route) => false,
                  );
                },
                child: Icon(Icons.delete)),
            TextButton(
                onPressed: () {
                  print("Update Call!");

                  Navigator.pushAndRemoveUntil<dynamic>(
                    context,
                    MaterialPageRoute<dynamic>(
                      builder: (BuildContext context) =>
                          EditPage(postModel: edit),
                    ),
                    (route) => false,
                  );
                },
                child: Icon(Icons.update)),
          ],
          // Text(_postsModel![index].body.toString()),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          // (userModel != null) ? userModel!.name : posts!.title.toString(),
          // product!.name.toString(),
          edit!.title.toString(),
        ),
        actions: [
          IconButton(
              onPressed: () {
                // Navigator.pushNamedAndRemoveUntil(
                //     context, "/home", (route) => false);

                Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => MyWidget11(),
                  ),
                  (route) => false,
                );
              },
              icon: Icon(Icons.list_alt))
        ],
      ),
      body: getPost(context),
    );
  }
}
