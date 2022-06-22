import 'package:flutter/material.dart';
import 'package:flutterapp/home/banner_home.dart';
import 'package:flutterapp/home/list_services.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(45, 45, 48, 0.8),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
          toolbarHeight: 60,
          title: const Text('Home Services'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const HeaderHome(
              assetImageHeader: 'assets/images/banner_home.jpg',
            ),
            const Text(
              'Services',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            Flexible(child: ListViewServices()),
          ],
        ),
      ),
    );
  }
}
