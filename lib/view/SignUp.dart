import 'package:assignment_system/view/home.dart';
import 'package:assignment_system/view/my_start.dart';
import 'package:flutter/material.dart';
import '../global.dart';

class backColorRegi extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _backColorRegi();
}

class _backColorRegi extends State<backColorRegi> {
  DateTime _date = new DateTime.now();
  final userName = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();
  final birthDate = TextEditingController();
  final address = TextEditingController();
  String emailText = "";

// Alert Box
  void _showAlert(String userName, String password, String email,
      String birthDate, String address) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: mediumText(text: "Alert!"),
          content: lightText(
              text:
              "UserName: $userName, Password: $password, Email: $email, BirthDate: $birthDate, Address: $address"),
          actions: <Widget>[
            new FlatButton(
              child: mediumText(
                text: "Ok",
                textColor: appColor,
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ));
  }

// Function For Email Validfation
  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      setState(() {
        emailText = "Enter Valid Email";
      });
    } else {
      setState(() {
        emailText = "";
      });
    }
  }





  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: AppBar(
          title: mediumText(text:"Your Assignment"),

          backgroundColor: appColor,
          centerTitle: true,
        ),

        body:Center(


          child: new ListView(



            children: <Widget>[





              // Form for Registration
               new Column(children: <Widget>[


                Icon(
                  Icons.school,
                  size: 130,
                ),
                new TextField(
                  controller: userName,
                  textInputAction: TextInputAction.done,
                  decoration: new InputDecoration(
                      icon: Icon(
                        Icons.person,
                        color: appColor,
                      ),
                      hintText: 'Username',
                      labelText: 'username'),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  obscureText: true,
                  controller: password,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.lock, color: appColor),
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),
                new TextField(
                  controller: email,
                  onChanged: (value) {
                    validateEmail(value);
                  },
                  decoration: new InputDecoration(
                      icon: Icon(Icons.email, color: appColor),
                      hintText: "Email",
                      labelText: "Email",
                      helperText: emailText),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 10.0),
                ),

                // Submit Button
                ButtonTheme(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(30.0)),
                  minWidth: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    child: mediumText(
                      text: "Sign Up",
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
                     "Already have an Account?",
                     textAlign: TextAlign.center,
                     style: TextStyle(

                       fontStyle: FontStyle.italic,

                     )
                 ),
                 GestureDetector(
                     child: Text(
                         "Sign in",
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
                               builder: (context) => new MyStart()));
                     }
                 )

              ]),
        ])),);
  }
}
