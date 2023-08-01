import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newyusli/login.dart';
import 'package:newyusli/worker/techhome.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import 'MyDBManager.dart';
class DataDisplayWidget extends StatefulWidget {
  @override
  _DataDisplayWidgetState createState() => _DataDisplayWidgetState();
}

class _DataDisplayWidgetState extends State<DataDisplayWidget> {
  List<Map<String, dynamic>> data = [];
  final DBStudentManager dbStudentManager = DBStudentManager();

  Student? student;
  late int updateindex;
  late List<Student> studlist;

  XFile? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final pickedImage = await ImagePicker().pickImage(source: source);

    if (pickedImage != null) {
      _imageFile = XFile(pickedImage.path);
      setState(() {

      });
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    List<Map<String, dynamic>> result = await fetchDataFromDatabase();
    setState(() {
      data = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FutureBuilder(
          future: dbStudentManager.getStudentList(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              studlist = snapshot.data as List<Student>;
              print(studlist.length);
              return ListView.builder(
                shrinkWrap: true,
                itemCount: studlist == null ? 0 : studlist.length,
                itemBuilder: (BuildContext context, int index) {
                  Student st = studlist[index];
                  return Card(
                      child: Container(
                        height:800,
                        child: ListView(
                            children:[
                              Padding(
                                 padding: const EdgeInsets.only(top: 65,left: 110,right: 110),

                      child: CircleAvatar(
                        radius: 86.0,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 84.0,
                          child:  Center(
                                          child: _imageFile == null
                                              ? Text('No image selected')
                                              : Image.file(File(_imageFile!.path),fit: BoxFit.fill,)),
                                       ),

                        ),
                      ),

                                             Column(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children: [
                                                ElevatedButton(
                                                  onPressed: () => _pickImage(ImageSource.gallery),

                                                  child: Icon(Icons.photo_library),
                                                ),
                                                SizedBox(height: 16),
                                              ],
                                            ),

                              Padding(
                                padding: const EdgeInsets.only(top: 9,left: 140,right: 110),
                                child: Container(
                                  child: Text("Name: ${st.name}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                                ),
                              ),


                              Padding(
                                padding: const EdgeInsets.only(top: 9,left: 150,right: 110),
                                child: Container(
                                  child: Text("phone: ${st.number}",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
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
                                            child: Icon(Icons.login)
                                        ),

                                        Padding(
                                          padding: const EdgeInsets.only(top: 36,bottom: 36,left: 14,right: 117),
                                          child: Text("Go To Login",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
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
                                    dbStudentManager.deleteStudent(st.id);
                                    setState(() {
                                      studlist.removeAt(index);
                                    });
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
                            ]

                        ),
                      )
                  );
                },
              );
            }
            return CircularProgressIndicator();
          },
        )
    );
  }

  fetchDataFromDatabase() async {

    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath,'student.db');


    Database database = await openDatabase(path, version: 1);


    List<Map<String, dynamic>> result = await database.query('student1');


    await database.close();

    return result;
  }

}