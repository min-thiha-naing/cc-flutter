import 'package:flutter/material.dart';
import '../../global.dart';
import 'graded.dart';

class stdsubmission extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _stdsubmission();
  }
}

class _stdsubmission extends State<stdsubmission> {
  @override
  int _currentIndex = 0;
  final _widgetOptions = [Home(), Message()]; // Calling Container for particular Tab
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: mediumText(text: "Class Companion"),
        backgroundColor: appColor,
      ),

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
                title: lightText(text: 'Graded'), icon: Icon(Icons.grade)),
            new BottomNavigationBarItem(
                title: lightText(text: 'unchecked'), icon: Icon(Icons.cancel)),

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

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(

      body: GridView.count(

        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,

        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return Center(
            child: Text(

              'Class $index',
              style: Theme.of(context).textTheme.headline,
            ),
            
          );
        }),

      )
    );
  }
}

class Message extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        // Generate 100 widgets that display their index in the List.
        children: List.generate(100, (index) {
          return Center(
            child: Text(
              'Class $index',
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      ),
    );
  }
}
