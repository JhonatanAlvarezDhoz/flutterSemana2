import 'package:flutter/material.dart';

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View 1'),
      ),
      body: ListView(
        children: const [
          ListTile(
            leading: Icon(Icons.accessibility_new_outlined),
            title: Text("data 1"),
          ),
          ListTile(
            leading: Icon(Icons.accessibility_new_outlined),
            title: Text("data 1"),
          ),
          ListTile(
            leading: Icon(Icons.accessibility_new_outlined),
            title: Text("data 1"),
          ),
          //Text("data 1"),
          //Text("data 2"),
          //Text("data 3"),
        ],
      ),
    );
  }
}
