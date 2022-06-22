import 'package:flutterapp/entities/carro.dart';
import 'package:flutterapp/entities/servicios.dart';

class Registro {
  final Carro? carro;
  final Servicio? servicio;
  final String? name;
  final String? apellido;
  final int? celular;
  final String? licencia;
  final String? image;

  Registro(
      {this.carro,
      this.servicio,
      this.name,
      this.apellido,
      this.celular,
      this.image,
      this.licencia});

  factory Registro.fromJson(Map<String, dynamic> json) {
    //print(json);
    return Registro(
      carro: json['Carro'] != null ? Carro.fromJson(json['Carro']) : null,
      servicio:
          json['Servicio'] != null ? Servicio.fromJson(json['Servicio']) : null,
      apellido: json['apellido'],
      celular: json['celular'],
      licencia: json['licencia'],
      name: json['nombre'],
      image: json['image'],
    );
  }
  @override
  String toString() {
    return 'Registro carro: $carro, servicio: $servicio, apellido: $apellido, celular: $celular, licencia: $licencia, name: $name, image: $image';
  }
}
