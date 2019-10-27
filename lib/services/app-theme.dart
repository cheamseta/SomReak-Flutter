import 'package:flutter/material.dart';

class AppTheme {

  AppTheme._();

  static TextStyle body() {
    return TextStyle(fontSize: 16, fontFamily: "chenla", color: Colors.black45,);
  }

    static TextStyle buttonBody() {
    return TextStyle(fontSize: 20, fontFamily: "chenla", color: Colors.black, fontWeight: FontWeight.w700);
  }

      static TextStyle buttonBodyFocus() {
    return TextStyle(fontSize: 20, fontFamily: "chenla", color: Colors.pinkAccent, fontWeight: FontWeight.w700);
  }


    static TextStyle title() {
    return TextStyle(fontSize: 20, fontFamily: "chenla", color: Colors.black45,);
  }

      static TextStyle headline() {
    return TextStyle(fontSize: 25, fontFamily: "chenla", color: Colors.black, fontWeight: FontWeight.bold);
  }

 static Widget theAppBar(BuildContext context, Icon icon) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: IconButton(
            icon: icon,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }


}