import 'package:flutter/material.dart';

class MyAppBarTitleWidget extends StatelessWidget {
  const MyAppBarTitleWidget({
    Key key,
    this.change,
    @required this.context,
    @required TabController controller,
  })  : _controller = controller,
        super(key: key);

  final BuildContext context;
  final TabController _controller;
  final Function change;
  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.blue.shade900,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      child: Container(
        padding: EdgeInsets.all(2),
        height: MediaQuery.of(context).size.height * 0.06,
        decoration: BoxDecoration(
            color: _controller.index == 0
                ? Colors.blue.shade900
                : Colors.amber.shade600,
            borderRadius: BorderRadius.circular(25)),
        child: TabBar(
          onTap: (_) => {change(_controller.index)},
          controller: _controller,
          indicator: BoxDecoration(
            //SAĞA SOLA HAREKET EDEN ELEMANIN ÖZELLİKLERİ
              borderRadius: BorderRadius.circular(35),
              color: _controller.index == 0
                  ? Colors.blue.shade700
                  : Color(0xffffc900),
              border: Border.all(
                  width: 3,
                  color: _controller.index == 0
                      ? Colors.blue.shade700
                      : Color(0xffffc900))),
          tabs: [
            Tab(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    width: 35,
                    child: IconButton(
                        padding:
                        EdgeInsets.zero, //ndefault olan panddingi yok ettik
                        icon: Image.asset(
                          "assets/images/turkcell_icon.png",
                          color: _controller.index == 0
                              ? Colors.yellow
                              : Colors.white,
                        ),
                        onPressed: null),
                  ),
                  Text(
                    "TURKCELL",
                    style: TextStyle(color: Colors.white),
                    textScaleFactor: 0.8,
                  )
                ],
              ),
            ),
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 30,
                    child: IconButton(
                        padding: EdgeInsets.only(right: 2),
                        icon: Image.asset(
                          "assets/images/parking.png",
                          color: Colors.white,
                        ),
                        onPressed: null),
                  ),
                  Text(
                    "Pasaj",
                    style: TextStyle(
                        color: _controller.index == 0
                            ? Colors.white
                            : Colors.blue.shade900),
                    textScaleFactor: 1,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
