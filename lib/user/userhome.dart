import 'package:flutter/material.dart';
import 'package:newyusli/user/carpenter.dart';
import 'package:newyusli/worker/technitiandetails.dart';
import 'package:newyusli/userprofile.dart';



class Userhome extends StatefulWidget {

  const Userhome({Key? key}) : super(key: key);

  @override
  State<Userhome> createState() => _UserhomeState();
}

class _UserhomeState extends State<Userhome> {
  final List<ImageBox> imageBoxes = [
    ImageBox(Catogoryid:"1",name: "Painter", imagePath: "assets/images/painter.png"),
    ImageBox(Catogoryid:"2",name: "Carpenter", imagePath: "assets/images/carpenter.png"),
    ImageBox(Catogoryid:"3",name: "Electritian", imagePath: "assets/images/elect.png"),
    ImageBox(Catogoryid:"4",name: "Driver", imagePath: "assets/images/driver.png"),
    // Add more image boxes here
  ];
  
  final List<TechBox> techBoxes=[
    TechBox(Techname: "John Doe", Techid: "12", Techimage: "assets/images/rock.png", Techcatogory: "Construction Expert"),
    TechBox(Techname: "John Doe", Techid: "13", Techimage: "assets/images/man.png", Techcatogory: "Construction Expert"),
    TechBox(Techname: "John Doe", Techid: "14", Techimage: "assets/images/man.png", Techcatogory: "Construction Expert"),
    TechBox(Techname: "John Doe", Techid: "15", Techimage: "assets/images/man.png", Techcatogory: "Construction Expert"),
    TechBox(Techname: "John Doe", Techid: "16", Techimage: "assets/images/man.png", Techcatogory: "Construction Expert"),
    TechBox(Techname: "John Doe", Techid: "17", Techimage: "assets/images/man.png", Techcatogory: "Construction Expert"),
    TechBox(Techname: "John Doe", Techid: "18", Techimage: "assets/images/man.png", Techcatogory: "Construction Expert"),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: [
             Padding(
               padding: const EdgeInsets.only(top:52,left: 15),
               child: Container(
                 height: 70,
                 width:360 ,
                 child: Row(
                   children: [
                         SizedBox(
                             width: 80,
                             height: 30,
                             child: Image.asset('assets/images/logo.png', fit: BoxFit.fill)),
                           Padding(
                            padding: EdgeInsets.only(left: 170,right:0),
                             child: GestureDetector(
                               onTap: () {
                                 Navigator.push(
                                   context,
                                   MaterialPageRoute(
                                     builder: (context) => Userprofile(),
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
          Container(
            height: 172,
            child: Stack(
              children: [
                Positioned(
                  bottom:0,
                  left: 16,
                  right: 16,
                  child: Container(height: 112,
                    decoration: BoxDecoration(

                      image: const DecorationImage(
                        image: AssetImage('assets/images/img.png'),
                        fit: BoxFit.cover,
                      ),

                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
                Positioned(
                  bottom:1,
                  right: 0,
                  child: Container(height: 172,
                   width: 240,
                    child: Image.asset('assets/images/man.png',fit: BoxFit.fill,),
                  ),
                ),
                Positioned(
                  top: 50,
                  bottom:52,
                  left: 25,
                  child: Container(
                    width: 103,
                      child: Center(child: Text(
                    maxLines:2,
                    "Easy to \nfind & Fix",style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600,),)))
                ),
                Positioned(
                    bottom:5,
                    left: 25,
                    child: Container(
                        width: 103,
                        height: 50,
                        child: ElevatedButton(
                        child: Text('Find Now'),
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(18.0),
                          backgroundColor: Color(0xff3f54d1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        onPressed: () {
                          },
                    ),
                ),
                ),
            ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 36, left: 16),
            child:
            Text('Chose categorie',style: TextStyle(fontSize: 18,fontWeight:FontWeight.w600,),)),

          Container(
            height: 150,
            width: 78,
            child: Padding(
              padding: const EdgeInsets.only(top: 15,left: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child:ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: imageBoxes.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NextPage(imageBox: '${imageBoxes[index].Catogoryid}'),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset(
                                  imageBoxes[index].imagePath,
                                  width: 98,
                                  height: 90,
                                ),
                                SizedBox(height: 8.0),
                                Text(imageBoxes[index].name),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7, left: 16),
            child: Text('Our Top Techies',style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
          ),

          Container(
            height: 300,
            width: 78,
            child: Padding(
              padding: const EdgeInsets.only(top: 15,left: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Expanded(
                    child:GridView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: techBoxes.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing:1,
                          mainAxisSpacing: 1
                      ),
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Techdetails(techBox: '${techBoxes[index].Techid}'),
                              ),
                            );
                          },

                          child: Container(

                            padding: EdgeInsets.all(0.8),
                            child: Column(
                              children: [
                                Image.asset(
                                  techBoxes[index].Techimage,
                                  width: 98,
                                  height: 70,
                                ),
                                SizedBox(height: 7),
                                Text(techBoxes[index].Techname),
                                SizedBox(height: 5),
                                Text(techBoxes[index].Techcatogory),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),


        ],
      ),

    );
  }
}

class ImageBox {
  final String Catogoryid;
  final String name;
  final String imagePath;


  ImageBox({required this.Catogoryid,required this.name, required this.imagePath});
}
class TechBox{
  final String  Techname;
  final String  Techid;
  final String  Techimage;
  final String  Techcatogory;
  
  TechBox({required this.Techname,required this.Techid,required this.Techimage,required this.Techcatogory});
}





