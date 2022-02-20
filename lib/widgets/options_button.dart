import 'package:flutter/material.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<Text>(itemBuilder: (context) {
      return const [
        PopupMenuItem(child: Text('Avalie')),
        PopupMenuItem(child: Text('Mais Apps')),
      ];
    });
  }
}
