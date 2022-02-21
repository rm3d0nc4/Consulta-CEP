import 'package:consulta_cep/models/cep_model.dart';
import 'package:flutter/material.dart';

class FavoritesPages extends StatelessWidget {
  const FavoritesPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF1C85A8),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_rounded)),
          centerTitle: true,
          title: const Text(
            'Favoritos',
            style: TextStyle(
                fontSize: 23,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListView.builder(
                itemBuilder: (BuildContext context, index) => Container())));
  }
}
