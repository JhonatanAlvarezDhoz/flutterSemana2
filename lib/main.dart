import 'package:flutter/material.dart';
import 'package:flutterapp/views/list_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: ListView2(),
    );
  }
}
