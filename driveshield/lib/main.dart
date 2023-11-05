import 'package:flutter/material.dart';


import 'models/post.dart';
import 'screens/liked.dart';
import 'screens/post_list_screen.dart';
import 'screens/saved.dart';

void main() {
  runApp(MyApp());
}
final List<Post> dummyPosts = [
  Post(id: 1, title: 'Post 1', body: 'This is the body of Post 1'),
  Post(id: 2, title: 'Post 2', body: 'This is the body of Post 2'),
  Post(id: 3, title: 'Post 3', body: 'This is the body of Post 3'),
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Demo App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;
  final List<Widget> _screens = [
    PostGridScreen(posts: dummyPosts),
    LikedPostsScreen(likedPosts: dummyPosts,),
    SavedPostsScreen(savedPosts: dummyPosts,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo App'),
      ),
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Posts',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.thumb_up),
            label: 'Liked',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Saved',
          ),
        ],
      ),
    );
  }
}
