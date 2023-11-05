import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/post.dart';

class ApiService {
  static Future<List<Post>> fetchPosts(int page) async {
    final response = await http.get('https://post-api-omega.vercel.app/api/posts?page=$page' as Uri);
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      List<Post> posts = data.map((item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
