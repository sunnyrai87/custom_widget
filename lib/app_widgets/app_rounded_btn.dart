import 'package:flutter/material.dart';

class AppRoundedBtn extends StatelessWidget {
  String btmName;
  //void Function()
  VoidCallback onTap;
  double mWidth;

  Color bgColor;
  Color fgColor;
  // ? it means NULL
  IconData?mIcon;

  AppRoundedBtn(
      {required this.btmName,
      required this.onTap,
      this.mWidth = 200,
      this.bgColor = Colors.blue,
      this.fgColor = Colors.white,
      this.mIcon});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mWidth,
      child: ElevatedButton(
          onPressed: onTap,
          child: mIcon!=null ? Row(
            children: [
              Icon(mIcon),
              SizedBox(width: 11,),
              Text(btmName)
            ],
          ): Text(btmName),
          style: ElevatedButton.styleFrom(
              backgroundColor: bgColor,
              foregroundColor: fgColor,
             // minimumSize: Size(mWidth, 50)

              )),
    );
  }
}
