import 'package:flutter/material.dart';

import 'package:sensors/sensors.dart';

class ShakePage extends StatefulWidget {
  @override
  State createState() {
    // TODO: implement createState
    return ShakePageState();
  }
}

class ShakePageState extends State {
  bool isShowing;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isShowing = false;
    accelerometerEvents.listen((AccelerometerEvent event) {
      double deger = event.y;
      //print("$deger.");
      int value = 15; //hassasiyet
      if (event.x >= value ||
          event.x <= -value ||
          event.y >= value ||
          event.y <= -value ||
          event.z >= value ||
          event.z <= -value) {
        print("kazandınız");
        showDialog(
            context: context,
            builder: (_) => AlertDialog(
                  title: Text("Bin Gb internet kazandınız"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("tamam"))
                  ],
                ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Salla Kazan"),
        ),
        body: Center(
          child: Text("salla"),
        ));
  }
}
