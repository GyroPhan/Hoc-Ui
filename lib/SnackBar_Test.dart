import 'package:flutter/material.dart';
import './Infinity.dart';

class SnackBar_Test extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SnackBar_Test_State();
  }
}

class SnackBar_Test_State extends State<SnackBar_Test> {

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  //tạo cho Scaffol 1 cái key để định danh, nhằm xác định ở đâu gọi SnackBar

  _showSnackBar(){
    print("Show SnackBar Here");
    final snackBar = SnackBar(
      content: Text("Content Snack Bar"),
      duration: Duration(seconds: 7), //hiện chậm trong vòng 3s
      backgroundColor: Colors.lime,
      action: SnackBarAction(label: "OK", onPressed: (){
        print("OK Snack Bar");
        //cho snackbar xuống nhanh hơn
      }),
    );
    _scaffoldKey.currentState.showSnackBar(snackBar);
    /*ko hieu lam,
    chúng ta gọi snackbarr từ đâu  chỉ ra ở đây
    gọi từ scaffold
    đại diện scafold là scaffoldkey
    */

  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Scaffold(
      key: _scaffoldKey, //truyen key cho scafford
      appBar: AppBar(
        title: Text("Snack Bar"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.info),
            onPressed: _showSnackBar,
          )
        ],
      ),
      body: Infinity_Listview() ,
    );
  }
}
