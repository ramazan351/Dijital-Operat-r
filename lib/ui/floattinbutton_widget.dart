import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.transparent,
      splashColor: Colors.blue.shade800, //tıklandığında aldığı renk
      child: Image.asset("assets/images/floating.png"),
      onPressed: () {},
    );
  }
}
