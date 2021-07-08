import 'package:flutter/material.dart';
import 'package:flutter_digital_operator/ui/shake_and_gain/second_page.dart';

class ShakeFistPage extends StatelessWidget {
  const ShakeFistPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: MediaQuery.of(context).size.width,
          color: Colors.blue,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Image.asset("assets/images/organik-emocan.png"),
                flex: 4,
              ),
              Expanded(
                  flex: 1,
                  child: Text(
                    "Hediyeniz Sizi Bekliyor",
                    textScaleFactor: 2.2,
                    style: TextStyle(color: Colors.yellowAccent),
                  )),
              Expanded(
                  flex: 1,
                  child: Text(
                    "Kampanyaya katılmak için açağıdaki butona\n    tıklayın. Salla Kazan Kampanyası'ndan\n        haftalık birkez yararlanabilirsiniz.",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  )),
              Expanded(
                  flex: 1,
                  child: Center(
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      color: Colors.yellowAccent,
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => ShakePage()));
                      },
                      child: Text(
                        "Şimdi Kazan",
                        style: TextStyle(color: Colors.blue),
                        textScaleFactor: 1.5,
                      ),
                    ),
                  ))
            ],
          )),
    );
  }
}
