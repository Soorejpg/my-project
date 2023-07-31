
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
class Finder extends StatefulWidget {
  const Finder({Key? key}) : super(key: key);

  @override
  State<Finder> createState() => _FinderState();
}

class _FinderState extends State<Finder> {
  var _searchEdit =  TextEditingController();

  bool _isSearch = true;
  String _searchText = "";

  late  List<String> _socialListItems=[];
  late List<String> _searchListItems;


  _FinderState(){
    _searchEdit.addListener(() {
      if (_searchEdit.text.isEmpty) {
        setState(() {
          _isSearch = true;
          _searchText = "";

          print(_searchEdit.text.toString());

        });
      } else {
        setState(() {
          _isSearch = false;
          _searchText = _searchEdit.text.toString();
          print(_searchText);
        });
      }
    });
  }

  String? selectedValue;
  @override
  void initState() {

    super.initState();


    _socialListItems = [
      "Albert Alex",
      "Arshid",
      "Ananthu",
      "Sumith",
      "jenin k joy",
      "Jayson",
      "Thomas",
      "Peter",
      "Narayanan kutty",
      "lakshmikanthan",
    ];
    setState(() {
      _socialListItems.sort();
    });


  }
  Widget _searchBox() {
    return  Container(
      decoration: BoxDecoration(border: Border.all(width: 1.0)),
      child:  TextField(
        controller: _searchEdit,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: "Search",
          hintStyle:  TextStyle(color: Colors.grey[300]),
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _listView() {
    return  Flexible(
      child:  ListView.builder(
          itemCount: _socialListItems.length,
          itemBuilder: (BuildContext context, int index) {
            return
              Container(
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
                                Text("${ _socialListItems[index]}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
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

              );
          }),
    );
  }

  Widget _searchListView() {

    _searchListItems = [];
    _searchListItems.clear();
    print("DAta:$_searchText");
    for (int i = 0; i < _socialListItems.length; i++) {
      var item = _socialListItems[i];

      if (item.toLowerCase().startsWith(_searchText.toLowerCase())) {
        _searchListItems.add(item);
      }
    }
    for (int i = 0; i < _searchListItems.length; i++) {
      var item = _searchListItems[i];

      print(item);
    }

    return _searchAddList(_searchListItems);
  }

  Widget _searchAddList(List<String> searchListItems) {
    searchListItems.sort();
    return  Flexible(
      child:  ListView.builder(
          itemCount: searchListItems.length,
          itemBuilder: (BuildContext context, int index) {
            return  Container(
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
                              Text("${_searchListItems[index]}",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),textAlign: TextAlign.start,),
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

            );
          }),
    );
  }
  Widget build(BuildContext context) {
    return Scaffold(
        body:ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10,left: 10,right: 330),
                child: IconButton(onPressed: (
                    ){

                }, icon: Icon(Icons.arrow_back_outlined)),
              ),


              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Container(
                      height:800,
                      width: 300,
                      child: Column(
                        children: [

                          Row(
                            children: [
                              Expanded(child: _searchBox()),


                            ],
                          ),
                          _isSearch ? _listView() : _searchListView(),
                        ],
                      )


                  )
              )
            ]
        )


    );
  }



}