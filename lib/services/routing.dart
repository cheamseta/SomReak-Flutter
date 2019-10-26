
import 'package:flutter/material.dart';

class Routes {

  static void navigateTo(context, Function callback) {
    Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => callback(), fullscreenDialog: true),
              );
  }

   static void navigatePush(context, Function callback) {
    Navigator.push(context, MaterialPageRoute(builder: (BuildContext contextt) => callback()));
  }


}