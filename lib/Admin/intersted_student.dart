import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

import '../color_helper.dart';
import 'intersted_model.dart';

class intersted_student extends StatefulWidget {
  @override
  _intersted_studentState createState() => _intersted_studentState();
}

class _intersted_studentState extends State<intersted_student> {
  List<Model_intrst> intersted_list = [];
  var KEYS;

  var DATA;
  DatabaseReference  reference;

  String myID;
  Model_intrst myInterest;
  String keys;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    reference = FirebaseDatabase.instance
        .reference()
        .child("Active")
        .child("Interested_Students");

    reference.once().then((DataSnapshot snap) {
      if (snap != null) {
        KEYS = snap.value.keys;
        DATA = snap.value;
      }

      intersted_list.clear();
      if (KEYS != null) {
        for (var indivisual in KEYS) {
         myInterest= new Model_intrst(
            name: DATA[indivisual]["name"],
            email: DATA[indivisual]["email"],
            subject: DATA[indivisual]["subject"],
            phone: DATA[indivisual]["phone"],
            id: DATA[indivisual]["id"]


            //  batch: DATA[indivisual]["batch"],
          );

          intersted_list.add(myInterest);
        }
      }
      setState(() {

       keys=reference.push().key;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(" Interested Student"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                color: Color(Helper.getHexToInt("001a33")),
                child: Text("Intersted Student"),
              ),
            ),
            Container(
              child: Expanded(
                child: intersted_list.length == 0
                    ? new Text("No Rutine Available")
                    : ListView.builder(
                  itemCount: intersted_list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return
                      Card(
                        elevation: 10.0,
                        margin: EdgeInsets.all(15.0),
                        child: Container(
                          padding: EdgeInsets.all(14.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Icon(
                                      Icons.filter_b_and_w,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      intersted_list[index].name,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0,
                                          color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.date_range,
                                          color: Colors.green,
                                        ),
                                        Text(intersted_list[index].phone,),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.timer,
                                          color: Colors.yellow,
                                        ),
                                        Text(intersted_list[index].email,)
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.location_on,
                                          color: Colors.blueAccent,
                                        ),

                                      ],
                                    ),
                                  ),
                                ],
                              ),


                              RaisedButton(



                                onPressed: () {

                                reference.child('$keys').remove();


                                },
                                child: Text("Read"),
                              )
                            ],
                          ),
                        ),
                      );
                  },
                ),
              ),
            ),
          ],
        ));
  }
}

Widget UI_Intersted(String name,
    String phone,
    String email,
    String subject,) {
  return Card(
    elevation: 10.0,
    margin: EdgeInsets.all(15.0),
    child: Container(
      padding: EdgeInsets.all(14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.filter_b_and_w,
                  color: Colors.white,
                ),
                Text(
                  " " + name,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.white),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.date_range,
                      color: Colors.green,
                    ),
                    Text(" " + phone),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.timer,
                      color: Colors.yellow,
                    ),
                    Text(" " + email)
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.location_on,
                      color: Colors.blueAccent,
                    ),
                    Text(" " + subject),
                  ],
                ),
              ),
            ],
          ),
          RaisedButton(
            onPressed: () {


            },
            child: Text("Read"),
          )
        ],
      ),
    ),
  );
}
