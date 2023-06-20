// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

Post postFromJson(String str) => Post.fromJson(json.decode(str));
List<Post> postsFromJson(String str) =>
    List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(Post data) => json.encode(data.toJson());

class Post {
  String? title;
  String? body;
  int? id;

  Post({
    this.title,
    this.body,
    this.id,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        title: json["title"],
        body: json["body"],
        id: json["id"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "body": body,
        "id": id,
      };
}
