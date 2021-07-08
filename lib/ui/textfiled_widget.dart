import 'package:flutter/material.dart';

class TextFFieldWidget extends StatelessWidget {
  const TextFFieldWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5, top: 5),
      height: MediaQuery.of(context).size.height * 0.05,
      padding: EdgeInsets.only(right: 10, left: 10),
      child: TextFormField(
        decoration: InputDecoration(
            filled:
                true, //textformfieldin iç rengini değiştirmek istiyorsak bu true olmalı
            fillColor: Colors.grey.shade200,
            hintText: "Yapmak istediğiniz işlemi arayın",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(40),
              borderSide:
                  BorderSide.none, //textformfieldin çerçevesini kaldırdık
            ),
            prefixIcon: Icon(
              Icons.search,
              color: Colors.grey.shade700,
            )),
      ),
    );
  }
}
