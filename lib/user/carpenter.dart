import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:newyusli/user/userhome.dart';
class NextPage extends StatefulWidget {
  final String imageBox;
   NextPage({required this.imageBox});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  var rating = 0.0;


  @override
  Widget build(BuildContext context) {
    switch (widget.imageBox) {
      case "1":
        return Scaffold(
          body: ListView(
            children: [
              Container(
                height: 80,
                width: 200,
                child:
                 Row(
                    children: [
                      Padding(padding: const EdgeInsets.only(top: 10, left: 10,right: 0),
                        child: IconButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Userhome()),
                          );
                        }, icon: Icon(Icons.arrow_back_ios)),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top:10,right:10,left: 187),
                        child: CircleAvatar(
                            backgroundColor: Colors.grey,
                            radius: 66,
                            child: Image.asset("assets/images/person.png")
                        ),
                      ),
                    ],
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20,right: 50),
                child: Text('Painter',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
               width: 400,
                height: 120,
              child:
             Row(
               children: [
                Column(
                children: [
                 Container(
              width:96,
              height: 113,
             child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
           )
         ],
           ),
              Column(
          children: [
            Padding(
          padding: const EdgeInsets.all(8.0),
    child: Container(
    width: 150,
    height: 103,
    child: Column(

    children: [
    Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
    Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

    RatingBar.builder(
    initialRating: 3,
    minRating: 1,
    direction: Axis.horizontal,
    allowHalfRating: true,
    itemCount: 5,
    itemSize: 20,
    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
    itemBuilder: (context, _) => Icon(
    Icons.star,
    color: Colors.amber,
    ),
    onRatingUpdate: (rating) {
    print(rating);
    },
    ),
    Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
    ],
    ),
    ),
              ),
            ],
          ),
                 Column(
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(0.8),
                       child: Container(
                           width: 20,
                           height: 18,
                           child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                     ),
                     Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 40,right: 2,left: 0,bottom: 0),
                           child: Container(
                             width: 90,
                             height: 50,
                             child: ElevatedButton(
                               child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                               style: ElevatedButton.styleFrom(
                                 padding: EdgeInsets.all(18.0),
                                 backgroundColor: Color(0xfff9f9fc),
                                 side: BorderSide(color: Colors.greenAccent, width: 2),


                                 shape: RoundedRectangleBorder(

                                   borderRadius: BorderRadius.circular(40),

                                 ),
                               ),
                               onPressed: () {
                               },
                             ),
                           ),
                         ),
                       ],
                     )
                   ],
                 ),
    ],
    ),

              ),
    ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),

    ],
    ),
        );
      case "2":
        return Scaffold(
          body: ListView(
            children: [
              Container(
                height: 80,
                width: 200,
                child:
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 10, left: 10,right: 0),
                      child: IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Userhome()),
                        );
                      }, icon: Icon(Icons.arrow_back_ios)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10,right:10,left: 187),
                      child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 66,
                          child: Image.asset("assets/images/person.png")
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20,right: 50),
                child: Text('Carpenter',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),

            ],
          ),
        );
      case "3":
        return  Scaffold(
          body: ListView(
            children: [
              Container(
                height: 80,
                width: 200,
                child:
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 10, left: 10,right: 0),
                      child: IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Userhome()),
                        );
                      }, icon: Icon(Icons.arrow_back_ios)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10,right:10,left: 187),
                      child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 66,
                          child: Image.asset("assets/images/person.png")
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20,right: 50),
                child: Text('Electrition',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),

            ],
          ),
        );
      case "4":
        return Scaffold(
          body: ListView(
            children: [
              Container(
                height: 80,
                width: 200,
                child:
                Row(
                  children: [
                    Padding(padding: const EdgeInsets.only(top: 10, left: 10,right: 0),
                      child: IconButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  Userhome()),
                        );
                      }, icon: Icon(Icons.arrow_back_ios)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top:10,right:10,left: 187),
                      child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          radius: 66,
                          child: Image.asset("assets/images/person.png")
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 20,right: 50),
                child: Text('Driver',style: TextStyle(fontWeight:FontWeight.w500,fontSize: 18),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 18,right:17 ,bottom: 5),
                child: Container(
                  width: 400,
                  height: 120,
                  child:
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 150,
                              height: 103,
                              child: Column(

                                children: [
                                  Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                  Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),

                                  RatingBar.builder(
                                    initialRating: 3,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 20,
                                    itemPadding: EdgeInsets.symmetric(horizontal: 0.5),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                  Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(0.8),
                            child: Container(
                                width: 20,
                                height: 18,
                                child: IconButton(onPressed: (){},color: Colors.grey, icon: Icon(Icons.favorite))),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 50,right: 2,left: 0,bottom: 0),
                                child: Container(
                                  width: 90,
                                  height: 50,
                                  child: ElevatedButton(
                                    child: Text('Hire',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                                    style: ElevatedButton.styleFrom(
                                      padding: EdgeInsets.all(18.0),
                                      backgroundColor: Color(0xfff9f9fc),
                                      side: BorderSide(color: Colors.greenAccent, width: 2),


                                      shape: RoundedRectangleBorder(

                                        borderRadius: BorderRadius.circular(20),

                                      ),
                                    ),
                                    onPressed: () {
                                    },
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),

                ),
              ),

            ],
          ),
        );
      default:

        return Scaffold(
            body:
            Center(
              child: Text("lets see"),
            )
        );
    }
  }
}
