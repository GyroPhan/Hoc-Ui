import 'package:flutter/material.dart';
import './listView_Example.dart';

class ListView_Image extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListView_Image_State();
  }
}

class ListView_Image_State extends State<ListView_Image>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Image"),
      ),
      body: Container(
        child: ListViewExample(),
      ),
    );
  }
}