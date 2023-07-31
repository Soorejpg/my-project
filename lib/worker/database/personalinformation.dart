import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:newyusli/main.dart';
import 'package:newyusli/registration.dart';
import 'package:newyusli/worker/database/Techprofile.dart';
import 'package:newyusli/worker/photoid.dart';

import '../dashh.dart';
import 'MyDBManager.dart';

class Personalinformation extends StatefulWidget {
  Personalinformation({Key? key}) : super(key: key);


  @override
  State<Personalinformation> createState() => _PersonalinformationState();
}

class _PersonalinformationState extends State<Personalinformation> {
  final _formKey = GlobalKey<FormState>();
  final DBStudentManager dbStudentManager = DBStudentManager();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phonenumber = TextEditingController();




  Student? student;
  late int updateindex;
  late List<Student> studlist;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
        Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 45, left: 10, right: 350),
                  child: IconButton(onPressed: () {

                  }, icon: Icon(Icons.arrow_back_ios))
              ),
              Padding(padding: const EdgeInsets.only(top: 258, left: 15,),
                child: Text('Personal Information'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Let’s know each other better',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, top: 25, right: 16),
                child: TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    border: OutlineInputBorder(),
                    label: Text("Your Name"),


                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 16, top: 19, right: 16),
                child: TextFormField(
                  controller: _phonenumber,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                    ),
                    border: OutlineInputBorder(),
                    label: Text("Phone number"),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 67.5, left: 15, right: 15),
                child: ElevatedButton(
                    child: Text('Next'),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(18.0),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                    onPressed: () {
                      submitStudent(context);

                    }

                ),
              ),

            ],
          ),
        )
    );
  }

  void submitStudent(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      if (student == null) {
        Student st =  Student(
          name: _nameController.text, number: _phonenumber.text, );
        dbStudentManager.insertStudent(st).then((value) => {
          _nameController.clear(),
          _phonenumber.clear(),

          print("Student Data Add to database $value"),
        Navigator.push(
        context,
        MaterialPageRoute(
        builder: (context) => DataDisplayWidget()),
        )
        });
      }
      else {
        student?.name = _nameController.text;
        student?.number=_phonenumber.text;


        dbStudentManager.updateStudent(student!).then((value) {
          setState(() {
            studlist[updateindex].name = _nameController.text;
            studlist[updateindex].number = _phonenumber.text;
          });
          _nameController.clear();
          _phonenumber.clear();

          student=null;
        });
      }
    }
  }
}
