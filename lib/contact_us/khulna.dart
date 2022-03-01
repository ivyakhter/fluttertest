import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:url_launcher/url_launcher.dart';

import '../color_helper.dart';

class Khulna extends StatefulWidget {
  @override
  _KhulnaState createState() => _KhulnaState();
}

class _KhulnaState extends State<Khulna> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child:AnimationConfiguration.staggeredList(
        duration: const Duration(milliseconds: 800),
        child: ScaleAnimation(
          child: Card(

            child: Container(
              /*     decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/ui/back_bottom.png"),
                fit: BoxFit.fitWidth,
                alignment: Alignment.bottomRight,
              ),
            ),*/
                child:ListView(

                  children: <Widget>[
                    //Address
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //

                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.place,
                              size: 32,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 8 * 5.5,

                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Address",
                                  style: TextStyle(
                                      fontSize: 18.0, fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  color: Colors.black12,
                                  height: 1.0,
                                  width: 60.0,
                                ),
                                Text(
                                  "The Daily Prabaha Bhaban (3rd Floor), "
                                      "\n"
                                      "3 K.D.A. Avenue (Shibbari Circle)"
                                      "\n"
                                      "(83.43 mi)Khulna 9100"
                                      "\n"
                                      "Bangladesh",
                                  style: TextStyle(fontSize: 17.0),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    //Office Hours
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //
                        Card(
                          elevation:0.0,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 8 * 0.8,

                            color: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.access_time,
                                color: Colors.red,
                                size: 32,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 8 * 5.5,

                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 8.0, left: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Office Hours & Visits",
                                  style: TextStyle(
                                      fontSize: 18.0, fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  color: Colors.black12,
                                  height: 1.0,
                                  width: 50.0,
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                    "Saturday - Friday"
                                        "\n"
                                        "9.00 am to 8.00 pm",
                                    style: TextStyle(fontSize: 15.0)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    //Contact
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        //
                        Card(
                          elevation: 0.0,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 8 * 0.8,

                            color: Colors.white,
                            child: Center(
                              child: Icon(
                                Icons.call,
                                size: 32,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),

                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 0.0, left: 18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Text(
                                  "Contact",
                                  style: TextStyle(
                                      fontSize: 18.0, fontWeight: FontWeight.bold),
                                ),
                                Container(
                                  color: Colors.black12,
                                  height: 1.0,
                                  width: 50.0,
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    Text(
                                      "khulna@creativeitinstitute.com"
                                          "\n",
                                      style: TextStyle(fontSize: 15.0),
                                      textAlign: TextAlign.start,
                                    ),
                                    SizedBox()
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text(
                                            "+880 1990779841"
                                                "\n"
                                                "+880 1990779840"
                                                "\n"
                                                "+880 1990779800"
                                                "\n",
                                            style: TextStyle(fontSize: 18.0)),
                                        Padding(
                                          padding: const EdgeInsets.only(bottom: 18.0),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: <Widget>[
                                              InkWell(
                                                onTap: () {
                                                  goLink(
                                                      "https://www.facebook.com/CITI.Khulna");
                                                },
                                                child: Container(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  decoration: new BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                      border: new Border.all(
                                                        width: 0.5,
                                                        color:
                                                        Colors.black.withOpacity(0.5),
                                                      )),
                                                  child: Image.asset(
                                                      "assets/social/facebook.png"),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.0,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  goLink(
                                                      "https://www.youtube.com/channel/UCoAYYQs4FQkKliI8dUEV2Aw");
                                                },
                                                child: Container(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  decoration: new BoxDecoration(
                                                      color: Colors.red,
                                                      shape: BoxShape.circle,
                                                      border: new Border.all(
                                                        width: 0.5,
                                                        color:
                                                        Colors.white.withOpacity(0.5),
                                                      )),
                                                  child: Image.asset(
                                                      "assets/social/youtube.png"),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 5.0,
                                              ),
                                              InkWell(
                                                onTap: () {
                                                  goLink(
                                                      "https://www.linkedin.com/company/creative-it-institute");
                                                },
                                                child: Container(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  decoration: new BoxDecoration(
                                                      color: Colors.white,
                                                      shape: BoxShape.circle,
                                                      border: new Border.all(
                                                        width: 0.5,
                                                        color:
                                                        Colors.black.withOpacity(0.5),
                                                      )),
                                                  child: Image.asset(
                                                      "assets/social/linkedin.png"),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )

                                      ],
                                    ),

                                  ],
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                )
            ),
          ),
        ),
        position: null,
      ),



    )


      /*Container(
      child: Scaffold(
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  height: 100.0,
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Icon(Icons.place,color: Colors.white),
                ),
                Divider(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                        "The Daily Prabaha Bhaban (3rd Floor), "
                        "\n"
                        "3 K.D.A. Avenue (Shibbari Circle)"
                        "\n"
                        "(83.43 mi)Khulna 9100"
                        "\n"
                        "Bangladesh",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(color: Colors.yellow),
                  child: Icon(Icons.timer,color: Colors.white),
                ),
                Divider(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                          "Saturday - Friday"
                          "\n"
                          "9.00 am to 8.00 pm",
                          style: TextStyle(fontSize: 18.0)),
                    ),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(color: Colors.deepOrange),
                  child: Icon(Icons.email,color: Colors.white),
                ),
                Divider(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text("khulna@creativeitinstitute.com",
                          style: TextStyle(fontSize: 18.0)),
                    ),
                  ),
                )
              ],
            ),
            Divider(),
            Row(
              children: <Widget>[
                Container(
                  height: 80.0,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Icon(Icons.phone_iphone,color: Colors.white),
                ),
                Divider(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.0),
                    child: Container(
                      decoration: BoxDecoration(),
                      child: Text(
                          "+880 1990779841"
                              "\n"
                              "+880 1990779840"
                              "\n"
                              "+880 1990779800"
                              "\n",
                          style: TextStyle(fontSize: 18.0)),
                    ),
                  ),
                )
              ],
            ),
            Divider(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Center(
                  child: InkWell(
                    onTap: () {
                      goLink("https://www.facebook.com/CITI.Khulna");
                    },
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: new BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                      ),
                      child: Image.asset("assets/social/facebook.png"),
                    ),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    goLink(
                        "https://www.linkedin.com/company/creative-it-institute");
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                      color: Colors.yellow,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/social/linkedin.png"),
                  ),
                ),
                Divider(),
                InkWell(
                  onTap: () {
                    goLink(
                        "https://www.youtube.com/channel/UCoAYYQs4FQkKliI8dUEV2Aw");
                  },
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: new BoxDecoration(
                      color: Colors.deepOrange,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset("assets/social/youtube.png"),
                  ),
                ),
                Divider(),
              ],
            ),
            SizedBox(height: 30.0,)
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(Helper.getHexToInt("e50000")),
          elevation: 0,
          selectedItemColor: Colors.blue,
          items: [
            BottomNavigationBarItem(
                icon: InkWell(
                  onTap: () {
                    makeCall();
                  },
                  child: Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                ),
                title: Text(
                  "Call Us",
                  style: TextStyle(color: Colors.white),
                )),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      sendMail("khulna@creativeitinstitute.com");
                    },
                    child: Icon(Icons.mail, color: Colors.white)),
                title: InkWell(
                  onTap: () {
                    sendMail("khulna@creativeitinstitute.com");
                  },
                  child: Text(
                    "Email",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            BottomNavigationBarItem(
                icon: InkWell(
                    onTap: () {
                      sendSMS();
                    },
                    child: Icon(Icons.sms, color: Colors.white)),
                title: Text(
                  "SMS",
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    )*/;
  }

  Future<void> makeCall() async {
    if (await canLaunch("tel:" + "01990779841")) {
      await launch("tel:" + "01990779841");
    }
  }

  Future<void> sendSMS() async {
    if (await canLaunch("sms:" + "01990779841")) {
      await launch("sms:" + "01990779841");
    }
  }

  Future<void> sendMail(String mail) async {
    if (await canLaunch("mailto:" + mail)) {
      await launch("mailto:" + mail);
    }
  }

  Future<void> goLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
