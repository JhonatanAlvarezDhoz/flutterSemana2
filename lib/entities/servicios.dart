class Servicio {
  final String? lavado;
  final String? pulido;
  final String? tapiceria;

  Servicio({this.lavado, this.pulido, this.tapiceria});

  factory Servicio.fromJson(Map<String, dynamic> json) {
    return Servicio(
      lavado: json['lavado'],
      pulido: json['pulido'],
      tapiceria: json['tapiceria'],
    );
  }
  @override
  String toString() {
    return 'Servicio lavado: $lavado, pulido: $pulido, tapiceria: $tapiceria';
  }
}
