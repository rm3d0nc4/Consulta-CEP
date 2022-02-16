import 'dart:convert';

class CepModel {
  final String cep;
  final String? logradouro;
  final String? bairro;
  final String cidade;
  final String uf;
  final int ddd;
  CepModel({
    required this.cep,
    this.logradouro,
    this.bairro,
    required this.cidade,
    required this.uf,
    required this.ddd,
  });

  // Generate Dataclass

  factory CepModel.fromMap(Map<String, dynamic> map) {
    return CepModel(
      cep: map['cep'] ?? '',
      logradouro: map['logradouro'],
      bairro: map['bairro'],
      cidade: map['cidade'] ?? '',
      uf: map['uf'] ?? '',
      ddd: map['ddd']?.toInt() ?? 0,
    );
  }

  factory CepModel.fromJson(String source) =>
      CepModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CepModel(cep: $cep, logradouro: $logradouro, bairro: $bairro, cidade: $cidade, uf: $uf, ddd: $ddd)';
  }
}
