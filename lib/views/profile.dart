import 'package:flutter/material.dart';
import 'package:flutterapp/views/banner_profile.dart';
import 'package:flutterapp/views/body_profile.dart';

void main() => runApp(const Profile());

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(45, 45, 48, 0.8),
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(30, 30, 30, 1),
          toolbarHeight: 60,
          title: const Text('User Profile'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            HeaderProfile(
              assetImageHeader: 'assets/images/banner.jpg',
              assetImageProfile: 'assets/images/dog.gif',
              userName: 'hermenegildo.c',
            ),
            BodyProfile(),
          ],
        ),
      ),
    );
  }
}
