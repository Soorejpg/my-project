import 'package:flutter/material.dart';

import 'database/Techprofile.dart';

class Techhome extends StatefulWidget {
  const Techhome({Key? key}) : super(key: key);

  @override
  State<Techhome> createState() => _TechhomeState();
}

class _TechhomeState extends State<Techhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:
    ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(top:30,left: 15),
          child: Container(
            height: 80,
            width:360 ,
            child: Row(
              children: [

                Padding(
                  padding: const EdgeInsets.only(top:5,left: 15),
                  child: Container(
                    height: 80,
                    width:340,
                    child: Row(
                      children: [
                        SizedBox(
                            width: 80,
                            height: 30,
                            child: Image.asset('assets/images/logo.png', fit: BoxFit.fill)),
                        Padding(
                          padding: EdgeInsets.only(left: 140,right:0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DataDisplayWidget(),
                                ),
                              );
                            },
                            child:  CircleAvatar(
                                backgroundColor: Colors.grey,
                                radius: 60,
                                child: Image.asset('assets/images/person.png', fit: BoxFit.fill)),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(top: 36, left: 16),
            child:
            Text('Latest Jobs',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600,),)),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 17,top: 15 ),
          child: Container(
              height: 200,
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Gate Painting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(left:115,right:7),
                        child: Text("14/06/2023"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:11),
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing "),
                          ),
                          Text("elit. Ut fringilla massa id lectus blandit, sed "),
                          Text("accumsan urna condimentum. Mauris eget sem ut "),
                          Text("tortor laoreet tincidunt sed et diam.")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15),
                        child: Text("3 min ago",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 119),
                        child: Text("Skip",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child:ElevatedButton(
                            child: Text('Commit'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(18),
                              backgroundColor: Color(0xff58eca7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {}


                              ),



                        ),

                    ],
                  ),
                ],
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 17,top: 15 ),
          child: Container(
              height: 200,
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Gate Painting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(left:115,right:7),
                        child: Text("14/06/2023"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:11),
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing "),
                          ),
                          Text("elit. Ut fringilla massa id lectus blandit, sed "),
                          Text("accumsan urna condimentum. Mauris eget sem ut "),
                          Text("tortor laoreet tincidunt sed et diam.")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15),
                        child: Text("3 min ago",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 119),
                        child: Text("Skip",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child:ElevatedButton(
                            child: Text('Commit'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(18),
                              backgroundColor: Color(0xff58eca7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {}
                        ),
                      ),

                    ],
                  ),
                ],
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 17,top: 15 ),
          child: Container(
              height: 200,
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Gate Painting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(left:115,right:7),
                        child: Text("14/06/2023"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:11),
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing "),
                          ),
                          Text("elit. Ut fringilla massa id lectus blandit, sed "),
                          Text("accumsan urna condimentum. Mauris eget sem ut "),
                          Text("tortor laoreet tincidunt sed et diam.")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15),
                        child: Text("3 min ago",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 119),
                        child: Text("Skip",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child:ElevatedButton(
                            child: Text('Commit'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(18),
                              backgroundColor: Color(0xff58eca7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {}


                        ),



                      ),

                    ],
                  ),
                ],
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 17,top: 15 ),
          child: Container(
              height: 200,
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Gate Painting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(left:115,right:7),
                        child: Text("14/06/2023"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:11),
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing "),
                          ),
                          Text("elit. Ut fringilla massa id lectus blandit, sed "),
                          Text("accumsan urna condimentum. Mauris eget sem ut "),
                          Text("tortor laoreet tincidunt sed et diam.")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15),
                        child: Text("3 min ago",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 119),
                        child: Text("Skip",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child:ElevatedButton(
                            child: Text('Commit'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(18),
                              backgroundColor: Color(0xff58eca7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {}


                        ),



                      ),

                    ],
                  ),
                ],
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 17,top: 15 ),
          child: Container(
              height: 200,
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Gate Painting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(left:115,right:7),
                        child: Text("14/06/2023"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:11),
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing "),
                          ),
                          Text("elit. Ut fringilla massa id lectus blandit, sed "),
                          Text("accumsan urna condimentum. Mauris eget sem ut "),
                          Text("tortor laoreet tincidunt sed et diam.")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15),
                        child: Text("3 min ago",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 119),
                        child: Text("Skip",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child:ElevatedButton(
                            child: Text('Commit'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(18),
                              backgroundColor: Color(0xff58eca7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {}


                        ),



                      ),

                    ],
                  ),
                ],
              )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 25,right: 17,top: 15 ),
          child: Container(
              height: 200,
              width: 500,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Gate Painting",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                      Padding(
                        padding: const EdgeInsets.only(left:115,right:7),
                        child: Text("14/06/2023"),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top:11),
                            child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing "),
                          ),
                          Text("elit. Ut fringilla massa id lectus blandit, sed "),
                          Text("accumsan urna condimentum. Mauris eget sem ut "),
                          Text("tortor laoreet tincidunt sed et diam.")
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 15),
                        child: Text("3 min ago",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 119),
                        child: Text("Skip",style: TextStyle(color: Color(
                            0xb09e9e9e)),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20,left: 20),
                        child:ElevatedButton(
                            child: Text('Commit'),
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.all(18),
                              backgroundColor: Color(0xff58eca7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            onPressed: () {}


                        ),



                      ),

                    ],
                  ),
                ],
              )
          ),
        ),

      ],
    ),
    );
  }
}
