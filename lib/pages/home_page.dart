import 'package:consulta_cep/pages/favorites_page.dart';
import 'package:consulta_cep/widgets/inserted_cep_result.dart';
import 'package:consulta_cep/widgets/options_button.dart';
import 'package:consulta_cep/widgets/rich_text_result.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final maskFormatter = MaskTextInputFormatter(mask: '#####-###');
  final TextEditingController _cepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFFeeeeee),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1C85A8),
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: ((context) => const FavoritesPages())));
            },
            icon: const Icon(Icons.favorite_rounded)),
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
                child: TextField(
                  autofocus: true,
                  controller: _cepController,
                  inputFormatters: [maskFormatter],
                  keyboardType: TextInputType.number,
                  style: const TextStyle(
                      color: Color.fromARGB(239, 15, 15, 15),
                      fontFamily: 'Poppins',
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                  textAlign: TextAlign.start,
                  textAlignVertical: TextAlignVertical.top,
                  cursorColor: const Color(0xFF1C85A8),
                  decoration: const InputDecoration(
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
                onPressed: () {
                  showResult(context);
                },
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

  void showResult(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return InsertedCepResult();
        });
  }
}
