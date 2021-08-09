import 'package:app/courses/CATLectures.dart';
import 'package:app/courses/CLATLectures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class CoursePage extends StatefulWidget {
  @override
  _CoursePageState createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  Material myItems(String heading, int color) {
    return Material(
      color: Colors.white,
      elevation: 14.0,
      shadowColor: Color(0x802196F3),
      borderRadius: BorderRadius.circular(24.0),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        heading,
                        style:
                            TextStyle(color: new Color(color), fontSize: 20.0),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 12.0,
        mainAxisSpacing: 12.0,
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        children: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CATLectures(),
                ),
              );
            },
            child: myItems('CAT', 0xffb74093),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CLATLectures(),
                ),
              );
            },
            child: myItems('CLAT', 0xffb72033),
          ),
          myItems('MAT', 0xffb20334),
          myItems('BBA', 0xffb38432),
          myItems('SSC', 0xffb00432),
          myItems('NIFT', 0xffb59432),
          myItems('XAT', 0xff0b8272),
          myItems('Bank', 0xffb88736),
        ],
        staggeredTiles: [
          StaggeredTile.extent(1, 175.0),
          StaggeredTile.extent(1, 175.0),
          StaggeredTile.extent(1, 175.0),
          StaggeredTile.extent(1, 175.0),
          StaggeredTile.extent(1, 175.0),
          StaggeredTile.extent(1, 175.0),
          StaggeredTile.extent(1, 175.0),
          StaggeredTile.extent(1, 175.0),
        ],
      ),
    );
  }
}
