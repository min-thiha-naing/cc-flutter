import 'package:flutter/material.dart';

import '../global.dart';

class backColorLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _backColorLogin();
}

class _backColorLogin extends State<backColorLogin> {
  final userName = TextEditingController();
  final password = TextEditingController();

  // Alert Box
  void _showAlert(String userName, String password) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: mediumText(text: "Alert!"),
          content:
          lightText(text: "UserName: $userName, Password: $password"),
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

// OnClick of Submit Buttopn
  void _submit() {
    _showAlert(userName.text, password.text);
  }

  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: mediumText(text: "Assignment"),
        backgroundColor: appColor,
      ),
      resizeToAvoidBottomPadding: false,
      body: new Container(
        //Background Color of page
          color: Colors.blue[50],
          padding: new EdgeInsets.only(left: 30, right: 30),
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                  minWidth: 300.0,
                  height: 50.0,
                  child: RaisedButton(
                    child: mediumText(
                      text: "Submit",
                      textColor: Colors.white,
                    ),
                    color: appColor,
                    onPressed: () {
                      _submit();
                    },
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                ),
                // Facebook and Google Button
                new Container(
                    child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(color: appColor, width: 2.0),
                            ),
                            child: FlatButton(
                              onPressed: () {},

                              child:Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.person,

                                  ),
                                  new Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                  ),
                                  mediumText(
                                    text: "SignIn",
                                  ),
                                ],
                              )
                            ),

                          ),
                          new Padding(
                            padding: new EdgeInsets.symmetric(horizontal: 12.0),
                          ),
                          new Container(
                            width: 120,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              border: Border.all(color: appColor, width: 2.0),
                            ),
                            child: FlatButton(
                              onPressed: () {},
                              child: lightText(text: "SignUp"),
                            ),
                          )
                        ])),
                new Padding(
                  padding: new EdgeInsets.only(top: 30.0),
                )
              ])),
    );
  }
}
