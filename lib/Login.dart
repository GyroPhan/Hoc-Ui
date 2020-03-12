import 'package:flutter/material.dart';
import 'package:hoc_ui/user.dart';

class Login_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Login_Page_State();
  }
}

class Login_Page_State extends State<Login_Page> {
  final User user = User(//??????

      );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

//****************************************************************************************************
    final TextField _txtUserName = TextField(
      decoration: InputDecoration(
        hintText: 'Điền User Name đi pạn',
        contentPadding: EdgeInsets.all(10.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false, //ko hiện gợi ý nữa
      onChanged: (text) {
        setState(() {
          this.user.userName = text;
        }); //nhập và lưu đối tượng
      },
    ); // chu y

    final TextField _txtEmail = TextField(
      decoration: InputDecoration(
        hintText: ' Email đi pạn',
        contentPadding: EdgeInsets.all(10.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.emailAddress,
      autocorrect: false, //ko hiện gợi ý nữa
      onChanged: (text) {
        setState(() {
          this.user.email = text;
        });
      },
    ); // chu y

    final TextField _txtPassWord = TextField(
      decoration: InputDecoration(
        hintText: 'Điền Pass  please',
        contentPadding: EdgeInsets.all(10.0),
        //padding cua phan noi dung ben trong
        border: InputBorder.none, //bỏ border đi, border ben trong cua textfeild
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      //ko hiện gợi ý nữa
      obscureText: true,
      //hiện ****
      onChanged: (text) {
        setState(() {
          this.user.password = text;
        });
      },
    ); // chu y
//********************************************************************************************************

    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//********************************************************************************************************
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 5.0, color: Colors.lime),
              borderRadius: BorderRadius.all(
                  Radius.circular(20.0)), // bo tròn border với bán kính 4pixel
            ),
            child: _txtUserName,
          ),

          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 5.0, color: Colors.blue),
              borderRadius: BorderRadius.all(
                  Radius.circular(20.0)), // bo tròn border với bán kính 4pixel
            ),
            child: _txtEmail,
          ),

          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 5.0, color: Colors.red),
              borderRadius: BorderRadius.all(
                  Radius.circular(20.0)), // bo tròn border với bán kính 4pixel
            ),
            child: _txtPassWord,
          ),
//********************************************************************************************************
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text("Login"),
                    onPressed: () {
                      print('UserName: ${user.userName}, '
                          'Email: ${user.email}, '
                          'Pass: ${user.password}, ');
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
