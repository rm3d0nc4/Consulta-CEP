import 'package:flutter/material.dart';

import 'rich_text_result.dart';

class InsertedCepResultDialog extends StatelessWidget {
  const InsertedCepResultDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return AlertDialog(
      title: const Text(
        '64044-420',
        textAlign: TextAlign.center,
        style: TextStyle(
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
            children: const [
              RichTextResult(text1: 'UF: ', text2: 'Piauí'),
              RichTextResult(text1: 'Cidade: ', text2: 'Teresina'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              RichTextResult(text1: 'Logradouro: ', text2: 'Rua Melvin Jones'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              RichTextResult(text1: 'Bairro: ', text2: 'Piçarreira'),
              RichTextResult(text1: 'DDD: ', text2: '86'),
            ],
          )
        ],
      ),
      actionsAlignment: MainAxisAlignment.center,
      actions: [
        ElevatedButton(
          onPressed: () {},
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
