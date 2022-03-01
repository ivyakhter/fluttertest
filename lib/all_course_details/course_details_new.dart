import 'package:creative_it_flutter_last/registration/ragistration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:url_launcher/url_launcher.dart';
import '../color_helper.dart';
import 'all_courses.dart';

class DetailsUI extends StatelessWidget {
  static final String path = "lib/src/pages/hotel/details.dart";

  String duration;
  String module;
  String image_url;
  String oppurtunity;
  String pre_requ;
  String software;
  String Details;
  String marketplace;
  String courseNAme;

  DetailsUI(
      {this.courseNAme,
      this.image_url,
      this.duration,
      this.module,
      this.pre_requ,
      this.oppurtunity,
      this.marketplace,
      this.Details,
      this.software});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: new Text(
          courseNAme,
          style: TextStyle(color: Colors.white),
        ),
        elevation: 0.0,
        backgroundColor: Color(Helper.getHexToInt("e50000")),
      ),
      body: ListView(
        children: <Widget>[
          //top design
          Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: <Widget>[
              Container(
                  height: 300.0,
                  width: double.infinity,
                  child: Image.network(
                    image_url,
                    fit: BoxFit.fill,
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 200.0),
                child: Container(
                  height: 70.0,
                  decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.9)),
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Color(Helper.getHexToInt("e50000")),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(Helper.getHexToInt("e50000")),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(Helper.getHexToInt("e50000")),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(Helper.getHexToInt("e50000")),
                            ),
                            Icon(
                              Icons.star,
                              color: Color(Helper.getHexToInt("e50000")),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8.0,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              "5.0 (Based on 850 Reviews)",
                              style: TextStyle(
                                  color: Colors.black.withOpacity(.8),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 13.0),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 8.0,
          ),

          //body Design
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Duration",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10.0,
                ),
                Text(duration,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal)),
                SizedBox(
                  width: 100.0,
                  height: 30.0,
                  child: Divider(
                    thickness: 2.0,
                  ),
                ),
                Text("Desciption",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10.0,
                ),
                Text(Details,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.0,
                        fontWeight: FontWeight.normal)),
                SizedBox(
                  width: 100.0,
                  height: 30.0,
                  child: Divider(
                    thickness: 2.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Prerequisite",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(pre_requ,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: Container(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text("Opportunity",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(
                                height: 10.0,
                              ),
                              Text(oppurtunity,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.normal)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 30.0),
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0, left: 50.0, right: 50.0, bottom: 50.0),
            child: SizedBox(
              child: RaisedButton(


                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0)),
                color: Color(Helper.getHexToInt("e50000")),
                textColor: Colors.white,
                child: Text(
                  "Free Seminar Registration",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                  horizontal: 32.0,
                ),
                onPressed: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => Registration())),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(Helper.getHexToInt("e50000")),
        elevation: 0,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: InkWell(
                onTap: () {
                  makeCall();
                },
                child:  Icon(
                  Icons.call,
                  color: Colors.white,
                ),
              ),
              title: InkWell(
                onTap: () {
                  makeCall();
                },
                child: Text(
                  "Call Us",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () => Navigator.of(context).push(
                      new MaterialPageRoute(builder: (context) => Courses_All())),
                  child: Icon(Icons.more_horiz, color: Colors.white)),
              title: InkWell(
                onTap: () => Navigator.of(context).push(
                    new MaterialPageRoute(builder: (context) => Courses_All())),
                child: Text(
                  "More Courses",
                  style: TextStyle(color: Colors.white),
                ),
              )),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    sendSMS();
                  },
                  child: Icon(Icons.sms, color: Colors.white)),
              title: InkWell(
                onTap: () {
                  sendSMS();
                },
                child: Text(
                  "SMS",
                  style: TextStyle(color: Colors.white),
                ),
              )),
        ],
      ),
    );
    ;
  }

  Future<void> makeCall() async {
    if (await canLaunch("tel:" + "01624666000")) {
      await launch("tel:" + "01624666000");
    }
  }

  Future<void> sendSMS() async {
    if (await canLaunch("sms:" + "01624666000")) {
      await launch("sms:" + "01624666000");
    }
  }
}
