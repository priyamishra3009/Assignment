import 'package:flutter/material.dart';

import '../models/post.dart';


class SavedPostsScreen extends StatelessWidget {
  final List<Post> savedPosts;

  SavedPostsScreen({required this.savedPosts});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Saved Posts'),
      ),
      body: ListView.builder(
        itemCount: savedPosts.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(savedPosts[index].title),
            subtitle: Text(savedPosts[index].body),
          );
        },
      ),
    );
  }
}
