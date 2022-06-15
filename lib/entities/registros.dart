import 'dart:html';

import 'package:listas/entities/carro.dart';
import 'package:listas/entities/servicios.dart';

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
    return Registro(
      carro: json['carro'] != null ? Carro.fromJson(json['carro']) : null,
      servicio:
          json['servicio'] != null ? Servicio.fromJson(json['servicio']) : null,
      apellido: json['apellido'],
      celular: json['celular'],
      licencia: json['licencia'],
      name: json['name'],
      image: json['image'],
    );
  }
  @override
  String toString() {
    return 'Registro carro: $carro, servicio: $servicio, apellido: $apellido, celular: $celular, licencia: $licencia, name: $name, image: $image';
  }
}
