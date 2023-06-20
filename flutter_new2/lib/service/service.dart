import 'dart:developer';

import '../Model/post.dart';
import 'package:http/http.dart' as http;

class apiService {
  // Future<List<Post>?>getUser()async{}

  Future<List<Post>?> getPost() async {
    try {
      var url = Uri.parse('http://192.168.20.46:8080/api/posts');
      var response = await http.get(url);
      if (response.statusCode == 200) {
        List<Post> _model = postsFromJson(response.body);
        return _model;
      }
    } catch (e) {
      log(e.toString());
    }
  }
}
