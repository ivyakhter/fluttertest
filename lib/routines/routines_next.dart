import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'package:intl/intl.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flip_card/flip_card.dart';

import '../Main_Pages.dart';
import '../color_helper.dart';
import 'Routines_model.dart';

class Routines_Next extends StatefulWidget {
  @override
  _myRoutinesState createState() => _myRoutinesState();
}

class _myRoutinesState extends State<Routines_Next> {
  String day_str;

  String month_str;

  String year_str;
  String c_month;

  int month_int, day_int, year_int;
  String date_Child;

  var KEYS;

  var DATA;

  String today;

  // int val = int.tryParse(formatted) + 1;

/*
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String formatted = formatter.format(now);*/
  List<Routines> routineLIst = [];
  List<Routines> routineLIst1 = [];
  List<Routines> routineLIst2 = [];
  List<Routines> routineLIst3 = [];
  List<Routines> routineLIst4 = [];
  List<Routines> routineLIst5 = [];

  List<Routines> unfilteredroutineLIst = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    var now = new DateTime.now();
    var formatter = new DateFormat('dd-MM-yyyy');
    today = formatter.format(now);

    var day = new DateFormat('d');
    var month = new DateFormat('MM');
    var year = new DateFormat('yyyy');

    day_str = day.format(now);
    month_str = month.format(now);
    year_str = year.format(now);

    month_int = int.parse(month_str);
    day_int = int.parse(day_str);
    year_int = int.parse(year_str);

    if (day_int < 10) {
      if (day_int == 01) {
        day_int = 1;
      } else if (day_int == 02) {
        day_int = 2;
      }
      if (day_int == 03) {
        day_int = 3;
      }
      if (day_int == 04) {
        day_int = 4;
      }
      if (day_int == 05) {
        day_int = 5;
      }
      if (day_int == 06) {
        day_int = 6;
      }
      if (day_int == 07) {
        day_int = 7;
      }
      if (day_int == 08) {
        day_int = 8;
      }
      if (day_int == 09) {
        day_int = 9;
      }
    }

    if (month_int < 10) {
      if (month_int == 01) {
        month_int = 1;
      } else if (month_int == 02) {
        month_int = 2;
      }
      if (month_int == 03) {
        month_int = 3;
      }
      if (month_int == 04) {
        month_int = 4;
      }
      if (month_int == 05) {
        month_int = 5;
      }
      if (month_int == 06) {
        month_int = 6;
      }
      if (month_int == 07) {
        month_int = 7;
      }
      if (month_int == 08) {
        month_int = 8;
      }
      if (month_int == 09) {
        month_int = 9;
      }
    }

    //  String date_Child = day_str + "/" + month_str + "/" + year_str;

    if (month_int == 1) {
      c_month = "January";
      if (day_int == 31) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 2) {
      c_month = "February";
      //isLeapYear(year_int);

      if (isLeapYear(year_int)){
        if (day_int == 29) {
          day_int = 1;
          month_int = month_int + 1;
        } else {
          day_int++;
        }

      }else{
        if (day_int == 28) {
          day_int = 1;
          month_int = month_int + 1;
        } else {
          day_int++;
        }
      }




    } else if (month_int == 3) {
      c_month = "March";
      if (day_int == 31) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }

    } else if (month_int == 4) {
      c_month = "April";
      if (day_int == 30) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 5) {
      c_month = "May";
      if (day_int == 31) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 6) {
      c_month = "June";
      if (day_int == 30) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 7) {
      c_month = "July";
      if (day_int == 31) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 8) {
      c_month = "August";
      if (day_int == 31) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 9) {
      c_month = "September";
      if (day_int == 30) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 10) {
      c_month = "Octobor";
      if (day_int == 31) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 11) {
      c_month = "November";
      if (day_int == 30) {
        day_int = 1;
        month_int = month_int + 1;
      } else {
        day_int++;
      }
    } else if (month_int == 12) {
      c_month = "December";
      if (day_int == 31) {
        day_int = 1;
        year_int = year_int + 1;
        month_int = 1;
      }
    }
    date_Child = c_month + day_int.toString() + year_str;
    DatabaseReference reference = FirebaseDatabase.instance
        .reference()
        .child("Routines")
    //  .child("March132020");
       .child(date_Child);

    reference.once().then((DataSnapshot snap) {
      KEYS = snap.value.keys;
      DATA = snap.value;


      routineLIst.clear();

      if (KEYS != null) {
        for (var indivisual in KEYS) {
          Routines myrutines = new Routines(
            batch: DATA[indivisual]["batch"],
            campus: DATA[indivisual]["campus"],
            datess: DATA[indivisual]["datess"],
            lab: DATA[indivisual]["lab"],
            subject: DATA[indivisual]["subject"],
            time: DATA[indivisual]["time"],
          );

          if (myrutines.time.contains("9")) {
            routineLIst1.add(myrutines);
          }

          //routineLIst1.addAll(routineLIst2);
          /*     var ascending = routineLIst1.sort();
          routineLIst=routineLIst1;*/
          /*
          routineLIst1.addAll(routineLIst2);
          routineLIst.addAll(routineLIst1);*/

          // routineLIst.add(myrutines);

          //this.unfilteredroutineLIst = routineLIst;
        }
      }
      if (KEYS != null) {
        for (var indivisual in KEYS) {
          Routines myrutines = new Routines(
            batch: DATA[indivisual]["batch"],
            campus: DATA[indivisual]["campus"],
            datess: DATA[indivisual]["datess"],
            lab: DATA[indivisual]["lab"],
            subject: DATA[indivisual]["subject"],
            time: DATA[indivisual]["time"],
          );


          if (myrutines.time.contains("11")) {
            routineLIst2.add(myrutines);
          }

          //routineLIst1.addAll(routineLIst2);
          /*     var ascending = routineLIst1.sort();
          routineLIst=routineLIst1;*/
          /*
          routineLIst1.addAll(routineLIst2);
          routineLIst.addAll(routineLIst1);*/

          /*       routineLIst1.addAll(routineLIst2);
          routineLIst.addAll(routineLIst1);*/

          //   this.unfilteredroutineLIst = routineLIst;
        }
      }
      if (KEYS != null) {
        for (var indivisual in KEYS) {
          Routines myrutines = new Routines(
            batch: DATA[indivisual]["batch"],
            campus: DATA[indivisual]["campus"],
            datess: DATA[indivisual]["datess"],
            lab: DATA[indivisual]["lab"],
            subject: DATA[indivisual]["subject"],
            time: DATA[indivisual]["time"],
          );

          if (myrutines.time.contains("2")) {
            routineLIst3.add(myrutines);
          }

          //routineLIst1.addAll(routineLIst2);
          /*     var ascending = routineLIst1.sort();
          routineLIst=routineLIst1;*/
          /*
          routineLIst1.addAll(routineLIst2);
          routineLIst.addAll(routineLIst1);*/

          //routineLIst2.addAll(routineLIst3);
          //routineLIst.addAll(routineLIst1+routineLIst2+routineLIst3);
          // routineLIst.add(myrutines);

          //    this.unfilteredroutineLIst = routineLIst;
        }
      }
      if (KEYS != null) {
        for (var indivisual in KEYS) {
          Routines myrutines = new Routines(
            batch: DATA[indivisual]["batch"],
            campus: DATA[indivisual]["campus"],
            datess: DATA[indivisual]["datess"],
            lab: DATA[indivisual]["lab"],
            subject: DATA[indivisual]["subject"],
            time: DATA[indivisual]["time"],
          );

          if (myrutines.time.contains("4")) {
            routineLIst4.add(myrutines);
          }

          //routineLIst1.addAll(routineLIst2);
          /*     var ascending = routineLIst1.sort();
          routineLIst=routineLIst1;*/
          /*
          routineLIst1.addAll(routineLIst2);
          routineLIst.addAll(routineLIst1);*/

          //routineLIst2.addAll(routineLIst3);
          // routineLIst.addAll(routineLIst1+routineLIst2+routineLIst3);
          // routineLIst.add(myrutines);

          //    this.unfilteredroutineLIst = routineLIst;
        }
      }
      if (KEYS != null) {
        for (var indivisual in KEYS) {
          Routines myrutines = new Routines(
            batch: DATA[indivisual]["batch"],
            campus: DATA[indivisual]["campus"],
            datess: DATA[indivisual]["datess"],
            lab: DATA[indivisual]["lab"],
            subject: DATA[indivisual]["subject"],
            time: DATA[indivisual]["time"],
          );

          if (myrutines.time.contains("6")||myrutines.time.contains("2")||myrutines.time.contains("11")||myrutines.time.contains("9")) {

          }else{

            routineLIst5.add(myrutines);
          }

          //routineLIst1.addAll(routineLIst2);
          /*     var ascending = routineLIst1.sort();
          routineLIst=routineLIst1;*/
          /*
          routineLIst1.addAll(routineLIst2);
          routineLIst.addAll(routineLIst1);*/

          //routineLIst2.addAll(routineLIst3);
          // routineLIst.addAll(routineLIst1+routineLIst2+routineLIst3);
          // routineLIst.add(myrutines);

          //    this.unfilteredroutineLIst = routineLIst;
        }
      }
      if (KEYS != null) {
        for (var indivisual in KEYS) {
          Routines myrutines = new Routines(
            batch: DATA[indivisual]["batch"],
            campus: DATA[indivisual]["campus"],
            datess: DATA[indivisual]["datess"],
            lab: DATA[indivisual]["lab"],
            subject: DATA[indivisual]["subject"],
            time: DATA[indivisual]["time"],
          );

          if (myrutines.time.contains("4")||myrutines.time.contains("2")||myrutines.time.contains("11")||myrutines.time.contains("9")) {

          }else{

            routineLIst5.add(myrutines);
          }

          //routineLIst1.addAll(routineLIst2);
          /*     var ascending = routineLIst1.sort();
          routineLIst=routineLIst1;*/
          /*
          routineLIst1.addAll(routineLIst2);
          routineLIst.addAll(routineLIst1);*/

          //routineLIst2.addAll(routineLIst3);
          // routineLIst.addAll(routineLIst1+routineLIst2+routineLIst3);
          // routineLIst.add(myrutines);

          //    this.unfilteredroutineLIst = routineLIst;
        }
      }

      if (this.mounted) {
        setState(() {
          this.routineLIst=routineLIst1+routineLIst2+routineLIst3+routineLIst4+routineLIst5;
          this.unfilteredroutineLIst = routineLIst;

        });
      }
    });
  }

  searchData(String searhstring) {
    var strExists = searhstring.length > 0 ? true : false;

    if (strExists) {
      List<Routines> filtereddata = [];

      for (var i = 0; i < unfilteredroutineLIst.length; i++) {
        String mybatch = unfilteredroutineLIst[i].batch.toLowerCase();
        String mytime = unfilteredroutineLIst[i].time.toLowerCase();
        if (mybatch.contains(searhstring.toLowerCase())) {
          filtereddata.add(unfilteredroutineLIst[i]);
        }
        if (mytime.contains(searhstring.toLowerCase())) {
          filtereddata.add(unfilteredroutineLIst[i]);
        }
      }
      setState(() {
        this.routineLIst = filtereddata;
      });
    } else {
      setState(() {
        this.routineLIst = this.unfilteredroutineLIst;
      });
    }
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => Main_App()))),
          elevation: 0.0,
          backgroundColor: Color(Helper.getHexToInt("e50000")),
          title: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Icon(Icons.today),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text("" + day_int.toString()+"/"+month_int.toString()+"/"+year_int.toString()),
                 // Text(date_Child)
                ],
              ),
            ],
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlipCard(
              direction: FlipDirection.VERTICAL, // default
              front: Container(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                      color: Color(Helper.getHexToInt("e50000")),
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 0.0, bottom: 8.0),
                      child: TextField(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Search by Batch or Time",
                          hintStyle:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                          /*  border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal,
                          ),
                        ),*/

                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        onChanged: (String str) {
                          this.searchData(str);
                        },
                      ),
                    ),
                  ),
                ),
              ),
              back: Container(
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0)),
                      color: Colors.black,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: 30.0, right: 30.0, top: 0.0, bottom: 8.0),
                      child: TextField(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Search by Batch Name",
                          hintStyle:
                              TextStyle(fontSize: 20.0, color: Colors.white70),
                          /*  border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.teal,
                          ),
                        ),*/

                          prefixIcon: const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        onChanged: (String str) {
                          this.searchData(str);
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: routineLIst.length == 0
                  ? new Text("No Rutine Available")
                  : ListView.builder(
                      itemCount: routineLIst.length,
                      itemBuilder: (BuildContext context, int index) {
                        return AnimationConfiguration.staggeredList(
                          position: index,
                          duration: const Duration(milliseconds: 10),
                          child: FlipAnimation(
                            child: Column(
                              children: <Widget>[
                                RoutinesUi(
                                  routineLIst[index].batch,
                                  routineLIst[index].campus,
                                  routineLIst[index].datess,
                                  routineLIst[index].lab,
                                  routineLIst[index].subject,
                                  routineLIst[index].time,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
            /*Expanded(
              child: routineLIst2.length == 0
                  ? new Text("No Rutine Available")
                  : ListView.builder(
                itemCount: routineLIst2.length,
                itemBuilder: (BuildContext context, int index) {
                  return AnimationConfiguration.staggeredList(
                    position: index,
                    duration: const Duration(milliseconds: 10),
                    child: FlipAnimation(
                      child: RoutinesUi(
                        routineLIst2[index].batch,
                        routineLIst2[index].campus,
                        routineLIst2[index].datess,
                        routineLIst2[index].lab,
                        routineLIst2[index].subject,
                        routineLIst2[index].time,
                      ),
                    ),
                  );
                },
              ),
            ),*/
          ],
        ));
  }

//RUTINES UI
  Widget RoutinesUi(String batch, String campus, String datess, String lab,
      String subject, String time) {
    return Container(
      padding: EdgeInsets.all(3.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            elevation: 1.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    " " + batch,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        color: Colors.red),
                  ),
                  Row(
                    children: <Widget>[
                      //instructor
                      Container(
                        height: 30.0,
                        color: Colors.white,
                        child: Icon(Icons.perm_identity, color: Colors.red),
                      ),
                      Container(
                        height: 30.0,
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text("Instructor : ",
                                style: TextStyle(fontSize: 16.0)),
                            Text(
                              subject,
                              style: TextStyle(fontSize: 16.0),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Divider(),
                  SizedBox(
                    height: 0.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 30.0,
                            child: Icon(
                              Icons.location_on,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            height: 50.0,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(campus,
                                      style: TextStyle(fontSize: 14.0)),
                                  SizedBox(
                                    height: 1.0,
                                  ),
                                  Text(lab, style: TextStyle(fontSize: 14.0))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      //Place
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          //time
                          Container(
                              height: 30.0,
                              child: Icon(
                                Icons.date_range,
                                color: Colors.red,
                              )),
                          SizedBox(
                            width: 15.0,
                          ),
                          Container(
                            height: 40.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(datess, style: TextStyle(fontSize: 14.0)),
                                SizedBox(
                                  height: 1.0,
                                ),
                                Text(time, style: TextStyle(fontSize: 14.0))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool isLeapYear(int year) =>
      (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));
}
