import 'package:flutter/cupertino.dart';

class RichTextResult extends StatelessWidget {
  final String text1;
  final String text2;
  const RichTextResult({Key? key, required this.text1, required this.text2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: text1,
        style: TextStyle(
            color: Color(0xFF1C85A8),
            fontFamily: 'Poppins',
            fontSize: 16,
            fontWeight: FontWeight.w600),
        children: [
          TextSpan(
            text: text2,
            style: TextStyle(
                color: Color(0xFF212121),
                fontFamily: 'Poppins',
                fontSize: 16,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
