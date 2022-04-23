import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:consulta_cep/models/cep_model.dart';

class CepApi {
  Future<Cep?> getDataWithCepNumber(String number) async {
    String url = 'https://viacep.com.br/ws/$number/json/';
    Uri uri = Uri.parse(url);

    http.Response response = await http.get(uri);

    Map<String, dynamic> body = jsonDecode(response.body);
    Cep cepObject = Cep.fromJson(body);

    if (cepObject.numero == null || cepObject.erro == 'true') {
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
