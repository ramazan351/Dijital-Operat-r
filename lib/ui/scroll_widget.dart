import 'package:flutter/material.dart';

class ScrollWidget extends StatefulWidget {
  const ScrollWidget({Key key}) : super(key: key);

  @override
  _ScrollWidgetState createState() => _ScrollWidgetState();
}

class _ScrollWidgetState extends State<ScrollWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(blurRadius: 8),
              ],
              borderRadius: BorderRadius.circular(30),
            ),
            margin: EdgeInsets.all(15),

            width: MediaQuery.of(context).size.width * 0.8,
            child: ClipRRect(
              //added image borderradius with this widget
              borderRadius: BorderRadius.circular(30),
              child: Image.asset("assets/images/kaydirma3.jpg"),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(blurRadius: 8)],
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue,
            ),
            margin: EdgeInsets.all(15),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.24,
            ),
          )
        ],
      ),
    );
  }
}
