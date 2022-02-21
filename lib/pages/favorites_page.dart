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
              fontSize: 23, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            FavoriteItem(),
          ],
        ),
      ),
    );
  }
}

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Container(
          height: height * .066,
          width: width * .64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Color(0xFFFFFFFF),
          ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [Icon(Icons.info_rounded), Text('64865-000')],
            ),
          ),
        )
      ],
    );
  }
}
// 390x844