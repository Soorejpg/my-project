import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class Techdetails extends StatefulWidget {
  final String techBox;
  Techdetails({required this.techBox,});

  @override
  State<Techdetails> createState() => _TechdetailsState();
}

class _TechdetailsState extends State<Techdetails> {
  var rating=0;
  @override
  Widget build(BuildContext context) {
    switch (widget.techBox) {
      case "12":
        return Scaffold(
          body:  ListView(
            children:[
                     Padding(
                       padding: const EdgeInsets.only(top: 50,left: 165,right: 140),
                       child: Text("Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                     ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 50,),
                          child: Container(
                            width:96,
                            height: 113,
                            child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 150,
                            height: 130,
                            child: Column(

                              children: [
                                Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                                Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),
                                Text("someone@gmail.com"),
                                Text("+91 987654321"),

                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: RatingBar.builder(
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
                                ),
                                Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left:100),
                              child: Text("Experiance :"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Text("2 years"),
                            ),
                          ],
                        ),



                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 40,right: 2,left: 0,bottom: 0),
                              child: Container(
                                width: 200,
                                height: 50,
                                child: ElevatedButton(
                                  child: Text('Call',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w600,fontSize: 14)),
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(18.0),
                                    backgroundColor: Color(0xfff9f9fc),
                                    side: BorderSide(color: Colors.greenAccent, width: 2),


                                    shape: RoundedRectangleBorder(

                                      borderRadius: BorderRadius.circular(40),

                                    ),
                                  ),
                                  onPressed: () {launchUrl("tel:+917994930212");
                                  },
                                ),
                              ),
                            ),
                          ],
                        )
                      ]
          ),
        );
      case "13":
        return Scaffold(
          body: ListView(
              children:[
                Padding(
                  padding: const EdgeInsets.only(top: 50,left: 165,right: 133),
                  child: Text("Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 50,),
                      child: Container(
                        width:96,
                        height: 113,
                        child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 150,
                        height: 130,
                        child: Column(

                          children: [
                            Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
                            Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),
                            Text("someone@gmail.com"),
                            Text("+91 987654321"),

                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: RatingBar.builder(
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
                            ),
                            Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left:100),
                      child: Text("Experiance :"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Text("2 years"),
                    ),
                  ],
                ),



                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40,right: 2,left: 0,bottom: 0),
                      child: Container(
                        width: 200,
                        height: 50,
                        child: ElevatedButton(
                          child: Text('Call',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(18.0),
                            backgroundColor: Color(0xfff9f9fc),
                            side: BorderSide(color: Colors.greenAccent, width: 2),


                            shape: RoundedRectangleBorder(

                              borderRadius: BorderRadius.circular(40),

                            ),
                          ),
                          onPressed: () {launchUrl("tel:+919074348984");
                          },
                        ),
                      ),
                    ),
                  ],
                )




              ]
          ),
        );
      case "14":
        return  Scaffold(
          body:  ListView(
        children:[
    Padding(
    padding: const EdgeInsets.only(top: 50,left: 165,right: 133),
    child: Text("Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
    ),
    Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 50,),
    child: Container(
    width:96,
    height: 113,
    child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
    ),
    )
    ],
    ),
    Column(
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    width: 150,
    height: 130,
    child: Column(

    children: [
    Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
    Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),
    Text("someone@gmail.com"),
    Text("+91 987654321"),

    Padding(
    padding: const EdgeInsets.only(top: 10),
    child: RatingBar.builder(
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
    ),
    Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
    ],
    ),
    ),
    ),
    ],
    ),
    Row(
    children: [
    Padding(
    padding: const EdgeInsets.only(left:100),
    child: Text("Experiance :"),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 50),
    child: Text("2 years"),
    ),
    ],
    ),



    Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 40,right: 2,left: 0,bottom: 0),
    child: Container(
    width: 200,
    height: 50,
    child: ElevatedButton(
    child: Text('Call',style: TextStyle(color: Colors.greenAccent,fontWeight: FontWeight.w500,fontSize: 14)),
    style: ElevatedButton.styleFrom(
    padding: EdgeInsets.all(18.0),
    backgroundColor: Color(0xfff9f9fc),
    side: BorderSide(color: Colors.greenAccent, width: 2),


    shape: RoundedRectangleBorder(

    borderRadius: BorderRadius.circular(40),

    ),
    ),
    onPressed: () {launchUrl("tel:+917994930212");
    },
    ),
    ),
    ),
    ],
    )




    ]
    ),

        );
      case "15":
        return Scaffold(
            body: ListView(
        children:[
    Padding(
    padding: const EdgeInsets.only(top: 50,left: 165,right: 133),
    child: Text("Profile",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600)),
    ),
    Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 50,),
    child: Container(
    width:96,
    height: 113,
    child: Image.asset("assets/images/albert.png",fit: BoxFit.cover,),
    ),
    )
    ],
    ),
    Column(
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
    width: 150,
    height: 130,
    child: Column(

    children: [
    Text("Albert Alex",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
    Text("Expert Painter",style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),
    Text("someone@gmail.com"),
    Text("+91 987654321"),

    Padding(
    padding: const EdgeInsets.only(top: 10),
    child: RatingBar.builder(
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
    ),
    Text("rs 500/hr",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 14),),
    ],
    ),
    ),
    ),
    ],
    ),
    Row(
    children: [
    Padding(
    padding: const EdgeInsets.only(left:100),
    child: Text("Experiance :"),
    ),
    Padding(
    padding: const EdgeInsets.only(left: 50),
    child: Text("2 years"),
    ),
    ],
    ),



    Column(
    children: [
    Padding(
    padding: const EdgeInsets.only(top: 40,right: 2,left: 0,bottom: 0),
    child: Container(
    width: 200,
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
    ]
    ),

        );
      default:

        return Scaffold(
            body:Center(
              child: Text("aara"),
            )
        );
    }
  }
  void launchUrl(String url) async {
    if (await canLaunch(url)) {
      launch(url);
    } else {
      throw "Could not launch $url";
    }
  }
}
