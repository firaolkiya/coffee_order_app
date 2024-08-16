import 'package:flutter/cupertino.dart';

class ADevice{
  ADevice._();
  static double getHeight(BuildContext context) {
     return MediaQuery
        .of(context)
        .size
        .height;
  }
  static double getWidth(BuildContext context) {
    return MediaQuery
        .of(context)
        .size
        .width;
  }
}