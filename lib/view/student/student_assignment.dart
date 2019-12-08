import 'package:assignment_system/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:assignment_system/global.dart';
import 'package:provider/provider.dart';


class stdassignment extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _stdassignment();
  }

}
class _stdassignment extends State<stdassignment>{
  @override
  int _currentIndex=0;
  int course_id = 1;
  final _widgetOptions = [Available(), Expired()]; // Calling Container for particular Tab
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: mediumText(text: "Class Companion"),
        backgroundColor: appColor,
          actions: [
         new IconButton(
          icon: new Icon(Icons.add),
          color: Colors.white,
          onPressed: () async{final response = await Provider.of<ApiService>(context).getAssignments({
            "course_id":course_id
          });},
       )    ,
          ]
      ),

      body: _widgetOptions.elementAt(course_id),
      backgroundColor: appColor,
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: appColor,
        ),
        child: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: course_id,
          fixedColor: Colors.white, //when item selected
          items: [
            new BottomNavigationBarItem(
                title: lightText(text: 'Avaliable'), icon: Icon(Icons.event_available)),
            new BottomNavigationBarItem(
                title: lightText(text: 'Expired'), icon: Icon(Icons.delete_forever)),

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
class Available extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(

        body: GridView.count(

          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 2,

          childAspectRatio: 1.0,
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,


          // Generate 100 widgets that display their index in the List.
          children: List.generate(3, (index) {
            return Container(


              child: Text(

                'Assignment $index',

              ),

            );
          }),

        )
    );
  }
}
class Expired extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(5, (index) {
          return Center(
            child: Text(
              'Assignment $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}

