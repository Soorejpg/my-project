import 'package:flutter/material.dart';
import 'package:newyusli/user/finder.dart';
import 'package:newyusli/login.dart';
import 'package:newyusli/main.dart';
import 'package:newyusli/user/schedule.dart';

import 'user/favorate.dart';

class Userprofile extends StatefulWidget {
  const Userprofile({Key? key}) : super(key: key);

  @override
  State<Userprofile> createState() => _UserprofileState();
}

class _UserprofileState extends State<Userprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 65,left: 110,right: 110),
            child: CircleAvatar(
              radius: 88,
              backgroundColor: Colors.blue,
              child: CircleAvatar(
                radius: 86.0,
                backgroundColor: Colors.white,
                child:
                    CircleAvatar(
                      child:

                Padding(
                  padding: const EdgeInsets.only(top: 130,left: 130,bottom: 0,right: 0),
                    child: CircleAvatar(
                    backgroundColor:Colors.blue,
                  radius: 12.0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.greenAccent,
                    child: Icon(Icons.camera_alt_outlined,
                    size:15.0,
                    color:Color(0xFF404040)
                    ),

                ),
              ),
              ),
              radius:84.0,
              backgroundImage: AssetImage("assets/images/person.png"),
            ),
    ),

    ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9,left: 140,right: 110),
            child: Container(
              child: Text("Winson Gomus",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9,left: 135,right: 110),
            child: Container(
              child: Text("someone@gmail.com",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9,left: 150,right: 110),
            child: Container(
              child: Text("+91 987654321",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9,left: 10,right: 10),
            child:  GestureDetector(
            onTap: () {
            Navigator.push(
            context,
               MaterialPageRoute(
             builder: (context) => Schedule(),
            ),
            );
             },
            child:
            Container(
              width: 360,
              height: 96,
              color: Colors.white70,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 36,bottom: 36,left: 25,),
                    child: Icon(Icons.calendar_month_sharp)
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 36,bottom: 36,left: 14,right: 117),
                    child: Text("My Schedule",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                  ),
                ],
              ),
            ),
          ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
            child:  GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Finder(),
                  ),
                );
              },
              child:
              Container(
                width: 360,
                height: 96,
                color: Colors.white70,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 36,bottom: 36,left: 25,),
                        child: Icon(Icons.person_search_rounded)
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 36,bottom: 36,left: 14,right: 117),
                      child: Text("Finder",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
            child:  GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Favorate(),
                  ),
                );
              },
              child:
              Container(
                width: 360,
                height: 96,
                color: Colors.white70,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 36,bottom: 36,left: 25,),
                        child: Icon(Icons.favorite)
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 36,bottom: 36,left: 14,right: 117),
                      child: Text("Favorate",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
            child:  GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Login(),
                  ),
                );
              },
              child:
              Container(
                width: 360,
                height: 96,
                color: Colors.white70,
                child: Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 36,bottom: 36,left: 25,),
                        child: Icon(Icons.logout_sharp)
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 36,bottom: 36,left: 14,right: 117),
                      child: Text("Logout",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      )
    );
  }
}
