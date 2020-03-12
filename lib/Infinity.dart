import 'package:flutter/material.dart';

class Infinity_Listview extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Infinity_Listview_State();
  }
}

class Infinity_Listview_State extends State<Infinity_Listview> {
  var items = List<String>.generate(
      15, // => 20 doi tuong
      (i) => "Items $i"); //generate la ham tu sinh doi tuong trong listview

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Infinity Listview"),
      ),
      body: Container(
        child: ListView.builder(
            //?????
            itemCount: items.length + 1, //=> dem so phan tu trong listview
            itemBuilder: (context, index) {
              //context chi class nao chua listview
              //index chi tung phan tu trong list view

              final widgetItem = (index == items.length)
                  ? // ? là so sanh tam phan
                  RaisedButton(
                    color: Colors.red,
                    child: Text("LOAD MORE"),
                      onPressed: (){
                      var nextItems = List<String> .generate(15,
                          (i){
                        var itemID = i + items.length;
                        return "Item ${itemID}";
                          });
                      setState(() {
                        items.addAll(nextItems); // bây giờ item là 1 state????
                      });
                      },
                    )
                  : // : so sanh tam phan
                  ListTile(
                    title: Text("${items[index]}"),
                  );
              return widgetItem;
            }),
      ),
    );
  }
}
