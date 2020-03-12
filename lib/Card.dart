import 'package:flutter/material.dart';

class Card_Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Card_State();
  }
}

class Card_State extends State<Card_Test> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    var card = Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.account_box,
              color: Colors.amber,
              size: 50.0,
            ),
            title: Text("Phan Khanh Hung"),
            subtitle: Text("Admin"), //tieu de con o duoi
          ),
          Divider(color: Colors.red, indent: 20.0,),//duong ke phan cach
          ListTile(
            leading: Icon(
              Icons.email,
              color: Colors.amber,
              size: 50.0,
            ),
            title: Text("116.khanhhung@gmail.com"),
          ),
          Divider(color: Colors.red, indent: 20.0,),//duong ke phan cach
          ListTile(
            leading: Icon(
              Icons.phone,
              color: Colors.amber,
              size: 50.0,
            ),
            title: Text("0123456789"),
          ),
        ],
      ),
    );

    final sizeBox = Container(
      margin: EdgeInsets.only(left: 12.0,right: 12.0,),
      child: SizedBox(
        height: 250.0,
        child: card,
      ),
    );

    final center = Center(
      child: sizeBox,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("CARD"),
      ),
      body: Container(
        child: center,
      ),
    );
  }
}
