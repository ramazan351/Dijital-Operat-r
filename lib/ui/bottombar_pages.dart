import 'package:flutter/material.dart';
import 'package:flutter_digital_operator/ui/scroll_widget.dart';

class BottomBarPages {
  static List<Widget> bottomBarPagesList = [
    Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ScrollWidget(),
            SizedBox(
              height: 200,
            ),
            Text("data"),
            SizedBox(
              height: 200,
            ),
            Text("data"),
            SizedBox(
              height: 200,
            ),
            Text("data"),
            SizedBox(
              height: 200,
            ),
          ],
        ),
      ),
    ),
    Center(
      child: Text("Paketler"),
    ),
    Center(
      child: Text("İşlemler"),
    ),
    Center(
      child: Text("Uygulamalar"),
    ),
    Center(
      child: Text("Yardım"),
    ),
  ];
}
