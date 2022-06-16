import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:flutterapp/views/list_view.dart';
import 'package:flutterapp/views/list_view_database.dart';

//void main() => runApp(MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CallFirebase(),
    );
  }
}

/*void callDatabase() {
  DatabaseReference startCountRef =
      FirebaseDatabase.instance.ref('Registros/3');
  startCountRef.onValue.listen((event) {
    final data = event.snapshot.value;
    print(data.toString());
  });
}*/
