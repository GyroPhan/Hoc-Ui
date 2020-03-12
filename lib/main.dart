import 'package:flutter/material.dart';

import './GridView_Test.dart';
import './Card.dart';
import './SnackBar_Test.dart';
import './mainPage.dart';
import './Login.dart';
import 'Flowers_Data/ListView_Image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
//Tạo ra Tab và Layout cho Tab
    final tabController = DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text("HUNG APP"),
          bottom: TabBar(
          indicatorColor: Colors.lime, //doi mau cay o duoi
            indicatorWeight: 2.0,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home), text: "Card",),
            Tab(icon: Icon(Icons.favorite), text: "Stack",),
            Tab(icon: Icon(Icons.calendar_today), text: "SnackBar",),
            Tab(icon: Icon(Icons.battery_alert), text: "Drawer",),
            Tab(icon: Icon(Icons.info), text: "Login",),
            Tab(icon: Icon(Icons.update), text: "L.I",),

          ],),
        ),
        body: TabBarView(
          children: <Widget>[
            Card_Test(),
            GridView_Test(),
            SnackBar_Test(),
            MainPage(),
            Login_Page(),
            ListView_Image(),
         ],
        ),
      ),
    );

    return MaterialApp(
      title: 'Flutter Demo',

      home: tabController,
    );
  }
}

