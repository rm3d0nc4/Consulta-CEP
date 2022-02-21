import 'dart:convert';

import 'package:consulta_cep/models/cep_model.dart';
import 'package:http/http.dart' as http;

class CepApi {
  Future<CepModel> getDataWithCep(String cep) async {
    String url = 'https://viacep.com.br/ws/${cep}/json/';
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    String body = response.body;
    CepModel cepObject = CepModel.fromJson(body);
    return cepObject;
  }
}
