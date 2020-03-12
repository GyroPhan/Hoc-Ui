// HOC DRAWER
import 'package:flutter/material.dart';

import './Horizone.dart';

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MainPage_State();
  }
}

class MainPage_State extends State<MainPage> {
  var title = '';

  Drawer _buildDrawer(context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.lime,
            ),
            child: Container(
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/profile.jpg',
                    width: 80.0,
                    height: 80.0,
                    fit: BoxFit.cover, //cho image vua hinh vuong
                  ),
                  Text("Phan Khanh Hung"),
                  Text("Jetstar Pacific"),
                  Text("Aircraft Maintainance"),
                ],
              ),
            ),
          ),
///////////////////////////////////////////////////
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: () {
              setState(() {
                this.title = 'This is Home';
              });
              Navigator.pop(context); // hàm pop??? ấn vô xong Drawer tự đóng lại
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text("Hearth"),
            onTap: () {
              setState(() {
                this.title =
                    'This is Hearth'; //???? chữ this này là chỉ title trong phạm vi class này??
              });
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today),
            title: Text("Times"),
            onTap: () {
              setState(() {
                this.title = 'This is Times';
              });
              Navigator.pop(context);
            },
          ),
///////////////////////////////////////////////
          Divider(
            color: Colors.black,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size; // lấy saize màn hình đang xài

    return Scaffold(
      appBar: AppBar(
        title: Text("DRAWER FLUTTER"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.lime,
                  border: Border.all(color: Colors.green)
                ),
                width: screenSize.width,
                height: screenSize.height/6,
                child: Center(
                  child: Text(this.title),
                ),
              ),
            ),
            Container(
              width: screenSize.width,
              height: screenSize.height*4/6,
              child: Horizone_ListView(),
            ),
          ],
        ),
      ),
      drawer: _buildDrawer(context),
    );
  }
}
