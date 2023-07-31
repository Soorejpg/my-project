
import 'package:flutter/material.dart';
import 'package:newyusli/worker/database/personalinformation.dart';
import 'package:newyusli/worker/helpus.dart';

import 'user/dash.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _formKey = GlobalKey<FormState>();
  var abc=TextEditingController();
  var def=TextEditingController();

  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 96.0, left: 118, right: 118),
                child: SizedBox(
                    width: 118,
                    height: 47,
                    child: Image.asset('assets/images/logo.png', fit: BoxFit.fill)),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 54.0, left: 16),
                child: Text('No Account yet?'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  'Let’s fix that now',
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 24),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      border: OutlineInputBorder(),
                      label: Text("your name"),
                      hintText: "Name"),
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
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
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
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                child: TextFormField(
                  controller: abc,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
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
                padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 8.0),
                child: TextFormField(
                  controller:def ,
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                      ),
                      border: OutlineInputBorder(),
                      label: Text("Confirm Password"),
                      hintText: "Confirm Password"),

                  validator: (value) {
                    if (value != null && value.isEmpty) {
                      return 'Conform password is required please enter';
                    }
                    if(value != abc.text.toString()){
                      return 'Confirm password not matching';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0,right: 16,top: 32),
                child: ElevatedButton(
                  child: Text('Create Account'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(18.0),
                    backgroundColor: Colors.greenAccent,
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
                padding: const EdgeInsets.only(left: 16.0,right: 16,top: 16),
                child: ElevatedButton(
                  child: Text('Iam A Technician'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(18.0),
                    backgroundColor: Colors.blue,
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
                        MaterialPageRoute(builder: (context) => Helpus()),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        )
    );
  }
}

