import 'package:blogui/blogui.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(blog());
}
class blog extends StatelessWidget {
  const blog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: blogui(),
    );
  }
}
