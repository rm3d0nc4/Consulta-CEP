import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const ConsultaCep());
}

class ConsultaCep extends StatelessWidget {
  const ConsultaCep({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
