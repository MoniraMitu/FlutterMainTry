import 'dart:developer';

import '../Model/post.dart';
import 'package:http/http.dart' as http;

class Service {
  // Future<List<Post>?>getUser()async{}

  Future<List<Post>?> getPost() async {
    try {
      var url = Uri.parse('http://192.168.20.38:8080/api/posts');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Post> _model = postsFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> deletePosts(int? id) async {
    try {
      var url = Uri.parse("http://192.168.20.38:8080/api/posts/" + '${id}');
      var response = await http.delete(url);

      // Response res = await delete('$apiUrl/$id');

      if (response.statusCode == 200) {
        print("Case deleted");
      } else {
        throw "Failed to delete a case.";
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
