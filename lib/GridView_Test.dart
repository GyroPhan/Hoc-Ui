import 'package:flutter/material.dart';

class GridView_Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return GridView_Test_State();
  }
}

class GridView_Test_State extends State<GridView_Test> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Test UI"),
      ),
      body: GridView.extent(
        maxCrossAxisExtent: 150.0,
        mainAxisSpacing: 5.0,
        // khoang cach hang
        crossAxisSpacing: 5.0,
        // khoang cach cot
        padding: const EdgeInsets.all(5.0),
        children: _buildGridTiles(11),
      ),
    );
  }
}

List<Widget> _buildGridTiles(numberOfTiles) {
  //trong dau < > la gi
  List<Stack> containers =

  // List<Container>.generate(numberOfTiles, (int index) {

  List<Stack>.generate(numberOfTiles, (int index) { //Stack de chen hinh va chu vo chung
    final imageName = 'images/image_${index + 1}.jpg';
    return Stack(
      alignment: Alignment(0.0,0.0), // doi tuong sau nam o vi tri (x,y)  doi tuong truoc,chi co o stack
      children: <Widget>[
        Container(
          child: Image.asset(
            imageName,
            width: 150.0,
            height: 150.0,
            fit: BoxFit.fill, // keo hinh ve 1 hinh vuong
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(100, 70, 150, 236), //mauRGB (do trong tu 0-255, mau)
          ),
          child: Text ('${index + 1}',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ) ,
        ),

      ],
    );

    /*
    return Container(
      child: Image.asset(
        imageName,
        fit: BoxFit.fill,// keo hinh ve 1 hinh vuong
      ),
    ); */
  });
  return containers;
}
