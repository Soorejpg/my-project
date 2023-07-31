import 'package:flutter/material.dart';
import 'package:newyusli/worker/dashh.dart';
import 'package:newyusli/main.dart';
import 'package:newyusli/registration.dart';

import 'user/dash.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var abc=TextEditingController();
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Form(
        key: _formKey,
          child:
          ListView(
            children: [
              Container(
                height: 350,
                width: 350,
                child:
                  Image.asset("assets/images/logoo.png"),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24,left: 15),
                child: Text("Broken something ?"),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text("Login to fix it",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                      label: Text("Email"),
                      hintText: "Email"),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 20),
                child: TextFormField(
                  controller: abc,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      border: OutlineInputBorder(),
                      label: Text("Password"),
                      hintText: "Password"),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16,top: 29),
                child: ElevatedButton(
                  child: Text('login'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(18.0),
                    backgroundColor: Color(0xff4fe0b5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashBoard()),
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16,top: 15),
                child: ElevatedButton(
                  child: Text('Technician login'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(18.0),
                    backgroundColor: Color(0xff2196f3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {
                    if(_formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DashBoard2()),
                      );
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left: 145,right: 139,bottom: 0),
                child: Text("New member?",style: TextStyle(fontSize: 14),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16,top:20,bottom: 15),
                child: ElevatedButton(
                  child: Text('Signup',style: TextStyle(color: Color(0xff4fe0b5)),),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(18.0),
                    backgroundColor: Color(0xffe7fbf5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ),
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    }
                ),
              ),
    ],
          ),
      ),
    );
  }
}
