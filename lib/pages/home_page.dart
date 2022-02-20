import 'package:consulta_cep/widgets/options_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFeeeeee),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C85A8),
        leading: IconButton(
            onPressed: () {}, icon: const Icon(Icons.favorite_rounded)),
        centerTitle: true,
        title: const Text(
          'Consulta CEP',
          style: TextStyle(
              fontSize: 23, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
        ),
        actions: const [
          OptionsButton(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, height * .1),
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
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, height * .015),
                child: const Text(
                  'Digite o CEP logo abaixo',
                  style: TextStyle(
                      color: Color(0xFF1C85A8),
                      fontFamily: 'Poppins',
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 0, height * .015),
                width: width * .76,
                height: height * .07,
                alignment: Alignment.center,
                padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color(0xFFFFFFFF),
                ),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '00000-000',
                    hintStyle: TextStyle(
                        color: Color.fromRGBO(33, 33, 33, 0.55),
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      'Consulta ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Icon(
                      Icons.search_rounded,
                    ),
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    primary: const Color(0xFF1C85A8),
                    fixedSize: Size(width * .51, height * .06)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
