import 'package:flutter/material.dart';
import 'package:flutter_digital_operator/ui/home_page.dart';

void main() => runApp(DijitalOperator());

class DijitalOperator extends StatelessWidget {
  const DijitalOperator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: null),
      home: MyHomePage(),
    );
  }
}
