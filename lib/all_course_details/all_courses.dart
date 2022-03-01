import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';

import '../color_helper.dart';
import 'course_details_new.dart';
import 'course_model.dart';

class Courses_All extends StatefulWidget {
  @override
  _Courses_AllState createState() => _Courses_AllState();
}

class _Courses_AllState extends State<Courses_All> {
  List<Courses> courseLIst = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    DatabaseReference reference =
        FirebaseDatabase.instance.reference().child("All_Courses");

    reference.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;
      var DATA = snap.value;

      courseLIst.clear();
      for (var indivisual in KEYS) {
        Courses courses = new Courses(
          course_name: DATA[indivisual]["course_name"],
          duration: DATA[indivisual]["duration"],
          module: DATA[indivisual]["module"],
          image_url: DATA[indivisual]["image_url"],
          oppurtunity: DATA[indivisual]["oppurtunity"],
          pre_requ: DATA[indivisual]["pre_requ"],
          software: DATA[indivisual]["software"],
          Details: DATA[indivisual]["Details"],
          marketplace: DATA[indivisual]["marketplace"],
        );

        courseLIst.add(courses);
      }

      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        /*leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () => Navigator.of(context).push(
                  new MaterialPageRoute(builder: (context) => Main_App()))),*/
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
                Text("All Courses")
              ],
            ),
          ],
        ),
      ),
      body: GridView.builder(
          itemCount: courseLIst.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30.0)),
              child: Course_Ui(
                image_url: courseLIst[index].image_url,
                duration: courseLIst[index].duration,
                module: courseLIst[index].module,
                oppurtunity: courseLIst[index].oppurtunity,
                pre_requ: courseLIst[index].pre_requ,
                software: courseLIst[index].software,
                Details: courseLIst[index].Details,
                marketplace: courseLIst[index].marketplace,
                courseName: courseLIst[index].course_name,
              ),
            );
          }),
    );
    ;
  }
}

class Course_Ui extends StatelessWidget {
  String duration;
  String module;
  String image_url;
  String oppurtunity;
  String pre_requ;
  String software;
  String Details;
  String marketplace;
  String courseName;

  Course_Ui(
      {this.image_url,
      this.duration,
      this.module,
      this.pre_requ,
      this.oppurtunity,
      this.marketplace,
      this.Details,
      this.software,
      this.courseName});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(
            builder: (context) => DetailsUI(
                  duration: duration,
                  module: module,
                  oppurtunity: oppurtunity,
                  pre_requ: pre_requ,
                  software: software,
                  Details: Details,
                  marketplace: marketplace,
                  image_url: image_url,
                  courseNAme: courseName,
                ))),
        child: GridTile(
          footer: Container(
            color: Colors.white.withOpacity(0.9),
            child: ListTile(
              title: Text(
                courseName,
                style: TextStyle(
                  color: Color(Helper.getHexToInt("001a33")),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          child: Card(
            elevation: 8.0,
            child: Material(
              borderRadius: BorderRadius.circular(25.0),
              child: Image.network(
                image_url,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
