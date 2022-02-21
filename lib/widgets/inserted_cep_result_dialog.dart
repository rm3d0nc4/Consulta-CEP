import 'package:flutter/material.dart';

import 'package:consulta_cep/models/cep_model.dart';

import 'rich_text_result.dart';

class InsertedCepResultDialog extends StatelessWidget {
  final CepModel cepData;

  const InsertedCepResultDialog({
    Key? key,
    required this.cepData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AlertDialog(
      title: Text(
        cepData.cep,
        textAlign: TextAlign.center,
        style: const TextStyle(
            color: Color(0xFF1C85A8),
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichTextResult(text1: 'UF: ', text2: cepData.uf),
              RichTextResult(text1: 'Cidade: ', text2: cepData.cidade),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichTextResult(text1: 'Logradouro: ', text2: cepData.logradouro),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              RichTextResult(text1: 'Bairro: ', text2: cepData.bairro),
              RichTextResult(text1: 'DDD: ', text2: cepData.ddd),
            ],
          )
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text(
            'Nova Consulta',
            style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w600),
          ),
          style: ElevatedButton.styleFrom(
              primary: Color(0xFF1C85A8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite_border_rounded,
              size: height * .035,
              color: Color(0xFF1C85A8),
            ))
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
