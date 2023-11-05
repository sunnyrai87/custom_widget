import 'package:flutter/material.dart';

class UIHelper {
  static InputDecoration mDecoration(
      {required String mlebel,
      required String hint,
      double bRadius = 21,
      Color bColor = Colors.black,
      double bwidth = 1}) {
    return InputDecoration(
        label: Text(mlebel),
        hintText: hint,
        //OutlineInputBorder
        focusedBorder: OutlineInputBorder(borderSide:BorderSide(color: bColor )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(bRadius),
            borderSide: BorderSide(color: bColor, width: bwidth,


            )));
  }
}
