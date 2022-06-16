import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutterapp/entities/response_firebase.dart';

class FirebaseConnection {
  //crea una instancia de la BD a utilizar
  static final FirebaseDatabase _database = FirebaseDatabase.instance;

  DatabaseReference instanceFirebase() {
    return _database.ref('/Registros');
  }

  Future<ResponseFirebase> getRegister() async {
    try {
      DatabaseReference _registros = instanceFirebase();
      DataSnapshot response = await _registros.get();
      final otraenco = json.encode(response.value);
      final pruebadeco = json.decode(otraenco);
      final registers = ResponseFirebase.fromJson(pruebadeco.values.toList());
      return registers;
    } catch (e) {
      rethrow;
    }
  }
}
