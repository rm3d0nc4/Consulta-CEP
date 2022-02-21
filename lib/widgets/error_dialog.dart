import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return AlertDialog(
      title: const Text(
        'ERRO',
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
          Icon(
            Icons.report_problem_rounded,
            size: height * .1,
            color: const Color(0xFF1C85A8),
          ),
          const Text(
            'Cep Inválido!\n Por favor, insira outro CEP',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFF212121),
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w500),
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
              primary: const Color(0xFF1C85A8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20))),
        ),
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    );
  }
}
