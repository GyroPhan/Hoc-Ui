import 'package:flutter/material.dart';

class Horizone_ListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Horizone_ListView_State();
  }
}

class Horizone_ListView_State extends State<Horizone_ListView> {
  @override
  Widget build(BuildContext context) {
    final screenSize =
        MediaQuery.of(context).size; // lấy saize màn hình đang xài

    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("HORIZONE LISTVIEW"),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.horizontal, //chỉnh lại hướng scroll
          shrinkWrap: true, // chạy tới biên cuối luôn

          children: <Widget>[
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: Colors.red,
              child: Text("PAGE 1"),
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: Colors.green,
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: Colors.lightBlueAccent,
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
