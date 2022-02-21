import 'package:flutter/material.dart';

import 'favorite_cep_info_dialog.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            showInfo(context);
          },
          style: ElevatedButton.styleFrom(
              primary: Color(0xFFFFFFFF),
              elevation: 3,
              fixedSize: Size(width * .60, height * .066),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.info_rounded,
                  size: height * .035,
                  color: Color(0xFF1C85A8),
                ),
              ),
              const Text(
                '64865-000',
                style: TextStyle(
                    color: Color(0xFF1C85A8),
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
        IconButton(
          alignment: Alignment.centerRight,
          enableFeedback: false,
          padding: EdgeInsets.all(5),
          onPressed: () {},
          icon: const Icon(
            Icons.copy_rounded,
            color: Color(0xFF1C85A8),
          ),
          iconSize: height * .035,
        ),
        IconButton(
          enableFeedback: false,
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.all(5),
          onPressed: () {},
          icon: const Icon(
            Icons.delete_rounded,
            color: Color(0xFFE51A1A),
          ),
          iconSize: height * .035,
        ),
      ],
    );
  }

  void showInfo(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FavoriteCepInfoDialog();
        });
  }
}
// 390x844