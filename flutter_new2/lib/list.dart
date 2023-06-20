import 'package:flutter/material.dart';
import 'package:flutter_new2/service/service.dart';

import 'Model/post.dart';

class MyWidget11 extends StatefulWidget {
  const MyWidget11({super.key});

  @override
  State<MyWidget11> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget11> {
  late List<Post>? _post = [];

  void _getData() async {
    _post = (await apiService().getPost())!;
    Future.delayed(const Duration(seconds: 1)).then((value) => setState(
          () {},
        ));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }

  Widget _getPostList(context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Example for Post'),
        actions: [
          IconButton(
              onPressed: () {
                // goBack(context);
              },
              icon: Icon(Icons.arrow_back_ios_sharp))
        ],
      ),
      body: _post == null || _post!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Center(
              child: ListView.builder(
                itemCount: _post!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: FlutterLogo(size: 72.0),
                    title: Text(_post![index].title.toString()),
                    subtitle: Text(_post![index].body.toString()),
                    trailing: IconButton(
                      onPressed: () {
                        // Navigator.pushAndRemoveUntil<dynamic>(
                        //   context,
                        //   MaterialPageRoute<dynamic>(
                        //     builder: (BuildContext context) =>
                        //         Detail(posts: _post![index]),
                        //   ),
                        //   (route) => false,
                        // );
                      },
                      icon: Icon(Icons.more_vert),
                    ),
                    isThreeLine: true,
                  );
                },
              ),
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _getPostList(context);
  }
}
