import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newyusli/user/schedule.dart';
import 'package:newyusli/user/userhome.dart';

import 'favorate.dart';
import 'finder.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  var Pages = [
    Userhome(),
    Finder(),
    Schedule(),
    Favorate(),

  ];


  int c = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Pages[c] ,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Color(0x3f54d1),
        color: Color(0xff3F54D1),
        items: [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.home,
                color: Color(0xff4FE0B5),
              ),
              label: 'Home',
              labelStyle: TextStyle(color: Color(0xff4FE0B5))),
          CurvedNavigationBarItem(
              child: Icon(Icons.person_search_rounded, color: Color(0xff4FE0B5)),
              label: 'Finder',
              labelStyle: TextStyle(color: Color(0xff4FE0B5))),
          CurvedNavigationBarItem(
              child: Icon(Icons.calendar_month_sharp, color: Color(0xff4FE0B5)),
              label: 'Shedules',
              labelStyle: TextStyle(color: Color(0xff4FE0B5))),
          CurvedNavigationBarItem(
              child: Icon(Icons.favorite, color: Color(0xff4FE0B5)),
              label: 'Favorites',
              labelStyle: TextStyle(color: Color(0xff4FE0B5))),
        ],
        onTap: (index) {
          setState(() {
            c = index;
          });
          // Handle button tap
        },
      ),
    );
  }
}
