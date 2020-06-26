import 'package:flutter/material.dart';
import 'package:photoblog/LoginRegisterPage.dart';

void main() {
  runApp(new BlogApp());
}

class BlogApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Blog App",
      theme: new ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: LoginRegisterPage(),
    );
  }
}
