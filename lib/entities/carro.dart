class Carro {
  final String? color;
  final String? marca;
  final String? modelo;
  final String? placa;

  Carro({this.color, this.marca, this.modelo, required this.placa});

  factory Carro.fromJson(Map<String, dynamic> json) {
    return Carro(
      color: json['color'],
      marca: json['marca'],
      modelo: json['marca'],
      placa: json['marca'],
    );
  }
  @override
  String toString() {
    return 'Carro color: $color, marca: $marca, modelo: $modelo, placa: $placa';
  }
}
