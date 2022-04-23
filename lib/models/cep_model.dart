import 'dart:convert';

class Cep {
  String? numero;
  String? logradouro;
  String? bairro;
  String? localidade;
  String? uf;
  String? ddd;
  String? erro;

  Cep(this.numero, this.logradouro, this.bairro, this.localidade, this.uf,
      this.ddd, this.erro);

  Cep.fromJson(Map<String, dynamic> json) {
    numero = json['cep'] ?? '';
    logradouro =
        json['logradouro'] != '' ? json['logradouro'] : '(não encontrado)';
    bairro = json['bairro'] != '' ? json['bairro'] : '(não encontrado)';
    localidade = json['localidade'] ?? '';
    uf = json['uf'] ?? '';
    ddd = json['ddd'] ?? '';
    erro = json['erro'] ?? '';
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> cep = {};

    cep['numero'] = this.numero;
    cep['logradouro'] = this.logradouro;
    cep['bairro'] = this.bairro;
    cep['localidade'] = this.localidade;
    cep['uf'] = this.uf;
    cep['ddd'] = this.ddd;
    cep['erro'] = this.erro;

    return cep;
  }

  @override
  String toString() {
    return 'Cep(cep: $numero, logradouro: $logradouro, bairro: $bairro, localidade: $localidade, uf: $uf, ddd: $ddd)';
  }
}
