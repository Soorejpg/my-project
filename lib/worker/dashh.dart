import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newyusli/worker/pendingworks.dart';
import 'package:newyusli/user/schedule.dart';
import 'package:newyusli/worker/techhome.dart';
import 'package:newyusli/worker/techmywork.dart';
import 'package:newyusli/worker/techupcomming.dart';
import 'package:newyusli/user/userhome.dart';

import '../user/favorate.dart';
import '../user/finder.dart';

class DashBoard2 extends StatefulWidget {
  const DashBoard2({Key? key}) : super(key: key);

  @override
  State<DashBoard2> createState() => _DashBoard2State();
}

class _DashBoard2State extends State<DashBoard2> {
  var Pages = [
    Techhome(),
    Mywork(),
    Upcomming(),
    Pending(),


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
              child: Icon(Icons.date_range_outlined, color: Color(0xff4FE0B5)),
              label: 'My work',
              labelStyle: TextStyle(color: Color(0xff4FE0B5))),
          CurvedNavigationBarItem(
              child: Icon(Icons.calendar_month_sharp, color: Color(0xff4FE0B5)),
              label: 'upcomming',
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
