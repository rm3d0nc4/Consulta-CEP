import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:consulta_cep/models/cep_model.dart';

class CepApi {
  Future getDataWithCep(String cep) async {
    String url = 'https://viacep.com.br/ws/$cep/json/';
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    String body = response.body;
    CepModel cepObject = CepModel.fromJson(body);
    print(cepObject.cep.isEmpty);
    if (cepObject.cep.isEmpty) {
      throw CepException(
          'Não foi possível encontrar dados para o CEP informado');
    } else {
      return cepObject;
    }
  }
}

class CepException implements Exception {
  String message;
  CepException(
    this.message,
  );
}
