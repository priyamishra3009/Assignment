import 'package:flutter/material.dart';

import '../models/post.dart';

class PostGridScreen extends StatelessWidget {
  final List<Post> posts;

  PostGridScreen({required this.posts});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1, 
        childAspectRatio: 2/1
      ),
      itemCount: posts.length,
      itemBuilder: (context, index) {
        final post = posts[index];

        return GridTile(
          header: GridTileBar(
            title: Text(post.title),
          ),
          child: GestureDetector(
            // Add your post content here
            // Example: Image.network(post.imageUrl),
          ),
          footer: GridTileBar(
            backgroundColor: Colors.black45,
            title: Text('Author: Ram'),
          
            trailing: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.save),
                  onPressed: () {
                    // Handle save button click
                  },
                ),
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {
                    // Handle share button click
                  },
                ),
                IconButton(
                  icon: Icon(Icons.thumb_up),
                  onPressed: () {
                    // Handle like button click
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
