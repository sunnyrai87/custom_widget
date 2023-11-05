import 'package:first_app_173/app_widgets/app_rounded_btn.dart';
import 'package:first_app_173/ui_helper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(zingo());
}

class zingo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Custom Widgets",
        theme: ThemeData(
          brightness: Brightness.light,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom Widgets"),
      ),
      body: Column(
        children: [
          AppRoundedBtn(
              bgColor: Colors.blue,
              mWidth: 300,
              mIcon: Icons.login,
              btmName: "Login",
              onTap: () {
                print("Authenticate");
              }),
          SizedBox(height: 11),
          AppRoundedBtn(
              bgColor: Colors.orange,
              btmName: "Play",
              onTap: () {
                print("Playing");
              }),
          SizedBox(height: 11),
          AppRoundedBtn(
              mWidth: 400,
              btmName: "Start",
              onTap: () {
                print("Starting...");
              }),
          SizedBox(height: 11),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: UIHelper.mDecoration(
                    mlebel: "Email", hint: "Enter your Email")),
          ),
          SizedBox(height: 11),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: UIHelper.mDecoration(
                    mlebel: "name",
                    hint: "Enter your name",
                    bColor: Colors.blue,
                    bRadius: 5)),
          )
        ],
      ),
    );
  }
}
