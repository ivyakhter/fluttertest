import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Splash.dart';
import 'color_helper.dart';
import 'contact_us/contact_main.dart';
import 'firebase_demo/Firebase_Main.dart';
import 'main.dart';
import 'onboarding_screen.dart';
import 'all_course_details/course_all_coustom.dart';
import 'registration/ragistration.dart';
import 'routines/routines_today.dart';

class Main_App extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<Main_App> {
  int _page = 0;

  bool isfirst = true;
  GlobalKey _bottomNavigationKey = GlobalKey();

  int page_Index = 0;

  // create All Pages
  final MyApp myApp = MyApp();
  final Coustom_course courses_all = Coustom_course();
  final Routines_Today routines_today = Routines_Today();
  final Registration registration = Registration();
  final Contact_main contact_main = Contact_main();

  Widget _showPages = new MyApp();

  Widget _pagechoser(int page) {
    switch (page) {
      case 0:
        return myApp;
        break;
      case 1:
        return courses_all;
        break;
      case 2:
        return routines_today;
        break;
      case 3:
        return registration;
        break;

      case 4:
        return contact_main;
        break;

      default:
        return new Container(
          child: new Center(
            child: Text("No Page Available "),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              key: _bottomNavigationKey,
              index: page_Index,
              height: 50.0,
              items: <Widget>[
                Icon(Icons.home, size: 30, color: Colors.white),
                Icon(Icons.list, size: 30, color: Colors.white),
                Icon(Icons.today, size: 30, color: Colors.white),
                Icon(Icons.call_split, size: 30, color: Colors.white),
                Icon(Icons.location_on, size: 30, color: Colors.white),
              ],
              color: Colors.black.withOpacity(.30),
              buttonBackgroundColor: Colors.black,
              backgroundColor: Color(Helper.getHexToInt("e50000")),
              animationCurve: Curves.easeInOut,
              animationDuration: Duration(milliseconds: 600),
              onTap: (int tappedindex) {
                setState(() {
                  _showPages = _pagechoser(tappedindex);
                });
              },
            ),
            body: Container(
              color: Colors.blueAccent,
              child: _showPages,
            )),
        onWillPop: () {
          return showDialog(
              context: context,
              barrierDismissible: false,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Confirm Exit"),
                  content: Text("Are you sure you want to exit?"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("YES"),
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                    ),
                    FlatButton(
                      child: Text("NO"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
              });
          return Future.value(true);
        });
  }
}
