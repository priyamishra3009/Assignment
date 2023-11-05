import 'package:flutter/material.dart';

import '../models/post.dart';


class LikedPostsScreen extends StatelessWidget {
  final List<Post> likedPosts;

  LikedPostsScreen({required this.likedPosts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liked Posts'),
      ),
      body: ListView.builder(
        itemCount: likedPosts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(likedPosts[index].title),
            subtitle: Text(likedPosts[index].body),
          );
        },
      ),
    );
  }
}
