import 'package:flutter/material.dart';
import '../widgets/favorite_item.dart';

class FavoritesPages extends StatelessWidget {
  const FavoritesPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFeeeeee),
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
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: const [
            FavoriteItem(),
          ],
        ),
      ),
    );
  }
}
