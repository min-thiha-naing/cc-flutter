import 'package:assignment_system/api/api_service.dart';
import 'package:assignment_system/api/model/built_course.dart';
import 'package:assignment_system/api/model/built_courses.dart';
import 'package:assignment_system/view/course.dart';
import 'package:assignment_system/view/student/student_submit.dart';
import 'package:chopper/chopper.dart' as prefix0;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'class.dart';
import '../global.dart';
import 'course.dart';
import 'student.dart';
import 'package:chopper/chopper.dart';

class simpleBottomBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    home: Provider(
      builder: (_) => ApiService.create(),
      dispose: (_, ApiService service) => service.dispose(),
      //child: MyNewHomePage(),
    );
    return _simpleBottomBar();
  }

}

class _simpleBottomBar extends State<simpleBottomBar> {
  @override
  int _currentIndex = 0;
  final _widgetOptions = [Dashboard(), Notification(), Profile()]; // Calling Container for particular Tab
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: mediumText(text: "Your Assignment"),
        backgroundColor: appColor,
      ),
//      drawer: MyHomePage(),
      body: _widgetOptions.elementAt(_currentIndex),
      backgroundColor: appColor,
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: appColor,
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          fixedColor: Colors.white, //when item selected
          items: [
            new BottomNavigationBarItem(
                title: lightText(text: 'Home'), icon: Icon(Icons.home)),
            new BottomNavigationBarItem(
                title: lightText(text: 'Notifications'), icon: Icon(Icons.notifications)),
            new BottomNavigationBarItem(
                title: lightText(text: 'Profile'), icon: Icon(Icons.person))
          ],
        ),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}



class Notification extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        alignment: Alignment.center,
        child: IconButton(
          iconSize: 200,
          color: Colors.indigo[200],
          icon: Icon(Icons.mail),
          onPressed: () {},
        ),
      ),
    );
  }
}

class Profile extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: new Container(
          alignment: Alignment.center,
          child: IconButton(
            iconSize: 200,
            color: Colors.indigo[200],
            icon: Icon(Icons.person),
            onPressed: () {},
          ),
        ));
  }
}

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("INDHOLD"),
        elevation: .1,
        backgroundColor: Color.fromRGBO(49, 87, 110, 1.0),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
        child: GridView.count(
          crossAxisCount: 2,//roll
          padding: EdgeInsets.all(4.0),//size
          children: List.generate(3, (index) {
            return Container(

              child: Column(
                children: <Widget>[

//                  IconButton(
//                    icon:Image.asset('images/download.jpeg'),
//                    iconSize: 50,
//                    onPressed: (){},
//                  ),
//                  Padding(
//                    padding: EdgeInsets.all(10.0),
//                    child: Text(
//                      'course 1',
//                      maxLines: 1,
//                      softWrap: true,
//                      textAlign: TextAlign.center,
//                      style: TextStyle(
//                        fontSize: 20.0,
//                        fontWeight: FontWeight.w500,
//                      ),
//                    ),
//                  ),
                SizedBox.fromSize(
                  size: Size(50,50),
                  child: ClipOval(
                    child: Material(
                      child: InkWell(
                        splashColor: Colors.lightBlue,
                        onTap: () async {
                          final response = await Provider.of<ApiService>(
                              context).getCourses();
                          print(response.body);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.library_books),
                            Text("nothing")
                          ],
                        ),
                      ),
                    ),
                  ),
                )
                ],
              ),


            );
          }),        ),
      ),
    );
  }

}
FutureBuilder<Response> _builtList(BuildContext context) {

  return FutureBuilder<Response<BuiltCourses>> (

    future: Provider.of<ApiService>(context).getCourses(),
    builder: (context, snapshot) {
      if(snapshot.connectionState == ConnectionState.done) {
        if(snapshot.hasError) {
          return Center(
            child: Text(
              snapshot.error.toString(),
              textAlign: TextAlign.center,
              textScaleFactor: 1.3,
            ),
          );
        }

        final movies = snapshot.data.body;
        return _builtGridView(context, movies);
      } else {
        return Center(
          child: CircularProgressIndicator(),
        );
      }
    },
  );
}

GridView _builtGridView(BuildContext context, BuiltCourses course) {
  return GridView.builder(
      itemCount: course.courses.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 5 / 8.5,
      ),
      itemBuilder: (context, int index) {
        return Card(
            elevation: 4.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Icon(Icons.library_books),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("${course.courses[index].coursename}"),
                )
              ],
            )
        );
      }
  );
}

ListView _builtMovies(BuildContext context, BuiltCourses course) {
  return ListView.builder(
    shrinkWrap: true,
    itemCount: course.courses.length,
    padding: EdgeInsets.all(5),
    itemBuilder: (context, index) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          InkWell(
            splashColor: Colors.yellow,
            onTap: () {
              print(course.courses[index].coursename);
            },
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))
              ),
              child: Icon(Icons.library_books),
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.all(4.0),
            ),
          ),

          Text(
            course.courses[index].coursename,
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          )
        ],
      );
    },
  );
}
