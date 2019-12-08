import 'package:flutter/material.dart';
class course extends StatefulWidget {
  @override
  _courseState createState() => new _courseState();
}

class _courseState extends State<course> {
  List<String> course = [];
  final TextEditingController eCtrl = new TextEditingController();


  @override
  Widget build(BuildContext ctxt) {
    return Scaffold(
      body: new Column(
        children: <Widget>[
          new TextField(
            controller: eCtrl,
            onSubmitted: (text) {
              course.add(text);
              eCtrl.clear();
              setState(() {});
            },
          ),
          new Expanded(
              child: new ListView.builder
                (
                  itemCount: course.length,
                  itemBuilder: (BuildContext ctxt, int Index) {
                    return new Text(course[Index]);
                  }
              )
          )
        ],


      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){



        },
        child: Icon(Icons.add),
        backgroundColor: Colors.lightBlue,
      ),
    );
  }


}
