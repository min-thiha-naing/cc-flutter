import 'package:assignment_system/global.dart' ;
import 'package:assignment_system/view/home.dart';
import 'package:flutter/material.dart';
import '../global.dart';
import 'SignUp.dart';


class MyStart extends StatefulWidget {
  @override
  _MyStart createState() => new _MyStart();
}

class _MyStart extends State<MyStart>
    with SingleTickerProviderStateMixin {
  // TabController to control and switch tabs
  TabController _tabController;

  // Current Index of tab


  @override
  void initState() {
    super.initState();
  }
  final userName = TextEditingController();
  final password = TextEditingController();



  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: mediumText(text: "Class Companion"),
        centerTitle: true,
        backgroundColor: appColor,
        leading: Icon(Icons.school),
//        actions: [
//          new Icon(Icons.school)
//
//        ],
      ),
      resizeToAvoidBottomPadding: false,
      body: new Center(

        //Background Color of page

          child: new ListView(

              shrinkWrap: true,
            padding: const EdgeInsets.all(10.0),

              children: <Widget>[

                Icon(
                  Icons.school,
                  size: 130,
                ),

                // Login Form
                new TextField(
                  controller: userName,
                  decoration: new InputDecoration(
                    hintText: "Username",
                    labelText: "Username",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  obscureText: true,
                  controller: password,
                  decoration: new InputDecoration(
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),
                // Submit Button
                ButtonTheme(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  minWidth: 350.0,
                  height: 50.0,
                  child: RaisedButton(
                    child: mediumText(
                      text: "Sign in",
                      textColor: Colors.white,
                    ),
                    color: appColor,


                      onPressed: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new simpleBottomBar()));


                    },
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),


                new Text(
                  "Don't have an Account?",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontStyle: FontStyle.italic,

                )
                ),
//                new Text(
//                  "Sign up",
//
//                    textAlign: TextAlign.center,
//                      style:TextStyle(
//
//                        fontStyle: FontStyle.italic,
//                        fontWeight: FontWeight.bold,
//                        decoration: TextDecoration.underline,
//
//                ),
//
//
//
//                )
                GestureDetector(
                    child: Text(
                        "Sign Up",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            decoration: TextDecoration.underline,

                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue)),
                    onTap: () {
                      Navigator.push(
                          context,
                          new MaterialPageRoute(
                              builder: (context) => new backColorRegi()));
                    }
                )



              ]
          )),
    );
  }
}
