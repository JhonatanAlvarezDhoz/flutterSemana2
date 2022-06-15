import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
//import 'package:listas/views/listview_2.dart';
import 'package:flutter/material.dart';
import 'package:listas/views/vista_primitiva.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  callDatabase();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Hola mundo',
        home: CallFirebase());
    // Scaffold(
    //   appBar: AppBar(
    //     title: const Text("Title"),
    //   ),
    //   body: const Center(
    //     child: Text("Hola mundo!"),
    //   )),
  }
}

void callDatabase() {
  DatabaseReference startCountRef =
      FirebaseDatabase.instance.ref('Registros/3');
  startCountRef.onValue.listen((event) {
    final data = event.snapshot.value;
    debugPrint(data.toString());
  });
}
