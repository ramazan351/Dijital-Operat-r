import 'package:flutter/material.dart';

class MyTabCard extends StatelessWidget {
  const MyTabCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      borderOnForeground: false,
      elevation: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              IconButton(
                  icon: Image.asset(
                    "assets/images/add-user.png",
                    color: Colors.blue.shade900,
                  ),
                  onPressed: null),
              Column(
                children: [
                  Text("Ramazan Altun"),
                  Row(
                    children: [
                      Container(
                          padding: EdgeInsets.only(left: 15),
                          child: Text("05360360774")),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.blue.shade900,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
          Icon(
            Icons.card_giftcard_outlined,
            color: Colors.blue.shade900,
          )
        ],
      ),
    );
  }
}
