import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'package:flutterapp/views/list_view.dart';
//import 'package:flutterapp/views/list_view_database.dart';
import 'package:flutterapp/views/splash.dart';

//void main() => runApp(MyApp());
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: const Splash(),
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
