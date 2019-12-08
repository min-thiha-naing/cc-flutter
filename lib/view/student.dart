
import 'package:assignment_system/view/student/student_assignment.dart';
import 'package:flutter/material.dart';
import 'student/student_submit.dart';

class student extends StatelessWidget {
  const student({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerHeader = UserAccountsDrawerHeader(
      accountName: Text('User Name'),
      accountEmail: Text('username@email.com'),
      currentAccountPicture: CircleAvatar(
        child: Icon(Icons.person),
        backgroundColor: Colors.white,
      ),

    );
    final drawerItems = ListView(
      children: <Widget>[
        drawerHeader,
        ListTile(
          leading: Icon(Icons.assignment),
          title: Text('Assignments'),

          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new stdassignment()));

          },
        ),
        ListTile(
          leading: Icon(Icons.file_upload),
          title: Text('Submissions'),
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new stdsubmission()));
          }
        ),

      ],
    );
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: Text('Class Companion'),
        ),
        body: Center(

        ),
        drawer: Drawer(
          child: drawerItems,
        ));
  }
}

// <Null> means this route returns nothing.
class _NewPage extends MaterialPageRoute<Null> {
  final int _id;
  _NewPage(this._id)
      : super(builder: (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 1.0,
      ),
      body: Center(
        child: Text(''),
      ),
    );
  });
}