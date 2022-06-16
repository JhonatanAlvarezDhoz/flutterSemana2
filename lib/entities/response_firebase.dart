import 'package:flutterapp/entities/registros.dart';

class ResponseFirebase {
  List<Registro>? registros;

  ResponseFirebase({this.registros});

  /*ResponseFirebase.fromJson(List<dynamic> json) {
    if (json['Registro'] != null) {
      registros = <Registro>[];
      json['Registro'].forEach((v) {
        registros!.add(Registro.fromJson(v));
      });
    }
  }
  Cambiamos a list debido a que de esa forma estamos recibiendo, lo que enviamos eso debemos esperar */

  ResponseFirebase.fromJson(List<dynamic> json) {
    print(json);
    registros = json.map((e) => Registro.fromJson(e)).toList();
  }
}
