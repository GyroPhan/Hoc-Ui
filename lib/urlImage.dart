import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';


class Url_Image extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Url_Image_State();
  }
}

class Url_Image_State extends State<Url_Image>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("URL Images"),
      ),
      body: Container(
        child: Text("LẤY ẢNH BỊ LỖI, HỎI NGHĨA"),
      ),
    );
  }
}