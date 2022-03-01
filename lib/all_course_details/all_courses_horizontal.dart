import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../color_helper.dart';
import 'course_details_new.dart';
import 'course_model.dart';

class Courses_All_H extends StatefulWidget {
  @override
  _Courses_All_HState createState() => _Courses_All_HState();
}

class _Courses_All_HState extends State<Courses_All_H> {
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
    return ListView.builder(
        itemCount: courseLIst.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return AnimationConfiguration.staggeredList(
            position: index,
            duration: const Duration(milliseconds: 1000),
            child: SlideAnimation(
              horizontalOffset: 50.0,
              child: FlipAnimation(
                child: Card(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => DetailsUI(
                          image_url: courseLIst[index].image_url,
                          duration: courseLIst[index].duration,
                          module: courseLIst[index].module,
                          oppurtunity: courseLIst[index].oppurtunity,
                          pre_requ: courseLIst[index].pre_requ,
                          software: courseLIst[index].software,
                          Details: courseLIst[index].Details,
                          marketplace: courseLIst[index].marketplace,
                          courseNAme: courseLIst[index].course_name,
                        ))),
                    child: Card(
                      elevation: 1.0,
                      // color: Color(Helper.getHexToInt("001a33")).withOpacity(0.1),

                      child: Container(
                        width: 180.0,
                        height: 100.0,
                        child: GridTile(
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Image.network(
                              courseLIst[index].image_url,
                              fit: BoxFit.cover,
                            ),
                          ),
                          footer: Container(
                            height: 40.0,
                            color: Colors.white.withOpacity(0.9),
                            alignment: Alignment.topCenter,
                            child: Center(
                                child: Text(
                                  courseLIst[index].course_name,
                                  style: TextStyle(
                                    color: Color(Helper.getHexToInt("001a33")),
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                )),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )


            ;
        });
    ;
  }
}
