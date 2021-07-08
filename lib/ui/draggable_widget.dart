import 'package:flutter/material.dart';
import 'package:flutter_digital_operator/ui/shake_and_gain/first_page.dart';


class MyDraggableWidget extends StatefulWidget {
  const MyDraggableWidget({Key key}) : super(key: key);

  @override
  _MyDraggableWidgetState createState() => _MyDraggableWidgetState();
}

class _MyDraggableWidgetState extends State<MyDraggableWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 8,
      bottom: MediaQuery.of(context).size.height / 2.5,
      child: Draggable<String>(
        data: Colors.blue.toString(),
        childWhenDragging: Container(
          /*yerinde sabit kalan eleman*/
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors
                .transparent, //arkada kalan bir şey olmasın diye görünmez yaptık
          ),
          width: 50,
          height: 50,
        ),
        child: MaterialButton(
          /**Görünen eleman */
          child: Text(
            "  SALLA\n KAZAN",
            style: TextStyle(fontSize: 16, color: Colors.yellow),
          ),
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => ShakeFistPage(),
              ),
            );
          },
          color: Colors.blue,
          shape: CircleBorder(),
          padding: EdgeInsets.all(15),
        ),
        feedback: MaterialButton(
          /**gezen eleman */
          child: Text(
            "  SALLA\n KAZAN",
            style: TextStyle(fontSize: 16, color: Colors.yellow),
          ),
          onPressed: () {},
          color: Colors.blue,
          shape: CircleBorder(),
          padding: EdgeInsets.all(15),
        ),
      ),
    );
  }
}
