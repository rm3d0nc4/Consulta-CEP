import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFeeeeee),
      appBar: AppBar(
        leading: const Icon(Icons.favorite_rounded),
        centerTitle: true,
        title: const Text('Consulta CEP'),
        actions: const [
          Icon(Icons.more_vert_rounded),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * .13),
          Center(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: const Color(0xFFFFFFFF),
              ),
              width: width * .76,
              height: height * .27,
              child: Image.asset('assets/images/Grupo 4.png'),
            ),
          ),
          const Text(
            'Digite o CEP logo abaixo',
            style: TextStyle(fontFamily: 'Poppins'),
          ),
          Container(
            width: width * .76,
            height: height * .07,
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFFFFFFF),
            ),
            child: const TextField(
              decoration: InputDecoration(hintText: '00000-000'),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Consulta'),
                Icon(
                  Icons.search_rounded,
                ),
              ],
            ),
            style: ElevatedButton.styleFrom(
                fixedSize: Size(width * .51, height * .06)),
          ),
        ],
      ),
    );
  }
}
