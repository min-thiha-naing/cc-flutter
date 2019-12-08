import 'package:flutter/material.dart';
final ScrollController _scrollController = ScrollController();
int index = 0;

Widget graded(){
  return Expanded(
    child:new GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 2,
      // Generate 100 widgets that display their index in the List.
      children: List.generate(100, (index) {
        return Center(
          child: Text(
            'Course $index',

          ),
        );
      }),
    ),

  );


}