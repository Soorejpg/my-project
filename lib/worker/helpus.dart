import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:newyusli/worker/photoid.dart';

import 'database/personalinformation.dart';


class Helpus extends StatefulWidget {
  const Helpus({Key? key}) : super(key: key);

  @override
  State<Helpus> createState() => _HelpusState();
}

class _HelpusState extends State<Helpus> {

  final _formKey = GlobalKey<FormState>();

  final List<String> itemss = [
    'Item1.1',
    'Item2.1',
    'Item3.1',
    'Item4.1',
  ];
  String? selectedValues;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 45, left: 10, right: 350),
                  child: IconButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Personalinformation()),
                    );
                  }, icon: Icon(Icons.arrow_back_ios))
              ),
              Padding(padding: const EdgeInsets.only(top: 218, left: 15,),
                child: Text('Choose your field(s)'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text("Help us to fix",
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 18, left: 15,),
                child: Text('You are qualified for'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 6, left: 16, right: 16),
                child: SizedBox(
                  width: 328,
                  height: 55,
                  child: ElevatedButton(
                    child: Text('Choose Catogories',
                      style: TextStyle(color: Color(0xff3f54d1)),),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(18.0),
                      backgroundColor: Color(0xffb7c3ef),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return MyDialog();
                        },
                      );
                    },
                  ),

                ),
              ),

              Padding(padding: const EdgeInsets.only(top: 14, left: 15,),
                child: Text('How many years of experience you got?',
                    style: TextStyle(fontFamily: '')),
              ),
              Padding(padding: const EdgeInsets.only(top: 7, left: 16),
                child: SizedBox(
                  width: 328,
                  height: 50,
                  child: DropdownButton2(
                    hint: Text(
                      'Select',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme
                            .of(context)
                            .hintColor,
                      ),
                    ),
                    items: itemss
                        .map((item) =>
                        DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                            item,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ))
                        .toList(),
                    value: selectedValues,
                    onChanged: (value) {
                      setState(() {
                        selectedValues = value as String;
                      });
                    },
                    buttonStyleData: const ButtonStyleData(
                      height: 40,
                      width: 320,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 40,
                    ),
                  ),
                ),
              ),
              Padding(padding: const EdgeInsets.only(top: 54, left: 15),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Photo()),
                      );
                    }

                ),
              ),

            ],
          ),
        )
    );
  }
}
class MyDialog extends StatefulWidget {
  const MyDialog({Key? key}) : super(key: key);

  @override
  State<MyDialog> createState() => _MyDialogState();
}

class _MyDialogState extends State<MyDialog> {
  bool _isChecked = false;
  bool _isCheckeda = false;
  bool _isCheckedb = false;
  bool _isCheckedc = false;
  bool _isCheckedcf = false;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content:Container(
        height: 545,
        width: 328,
        child: ListView(
          children:[ Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isChecked,
                    onChanged: (value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                  Text('Expert Painter'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isCheckeda,
                    onChanged: (value) {
                      setState(() {
                        _isCheckeda = value!;
                      });
                    },
                  ),
                  Text('Carpenter'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isCheckedb,
                    onChanged: (value) {
                      setState(() {
                        _isCheckedb = value!;
                      });
                    },
                  ),
                  Text('plumber'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isCheckedc,
                    onChanged: (value) {
                      setState(() {
                        _isCheckedc = value!;
                      });
                    },
                  ),
                  Text('Guardening'),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: _isCheckedcf,
                    onChanged: (value) {
                      setState(() {
                        _isCheckedcf = value!;
                      });
                    },
                  ),
                  Text('Housekeeping'),
                ],
              ),
            ],
          ),
        ],
        ),
      ),
      actions: <Widget>[
        ElevatedButton(
          child: Text('done'),
          onPressed: () {



            Navigator.of(context).pop(); // Close the dialog
          },
        ),
      ],
    );
  }
}

