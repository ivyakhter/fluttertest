import 'package:flutter/material.dart';

import '../Main_Pages.dart';
import '../color_helper.dart';


import 'dhaka1.dart' as frist;
import 'dhaka2.dart' as second;
import 'ctg.dart' as third;
import 'khulna.dart' as four;

class Contact_main extends StatefulWidget {
  @override
  _Contact_mainState createState() => _Contact_mainState();
}

class _Contact_mainState extends State<Contact_main>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(vsync: this, length: 4);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back,color: Colors.white,),
            onPressed: () => Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) => Main_App()))),
        title: Text("Contact Us",style: TextStyle(color: Colors.white),textAlign: TextAlign.center,),
        backgroundColor:Color(Helper.getHexToInt("e50000")),

        bottom: TabBar(

          indicatorColor: Colors.blue,
          isScrollable: true,
          controller: controller,
          indicatorPadding: EdgeInsets.all(0.0),
          indicatorWeight: 2.0,
          labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),
          indicator: ShapeDecoration(
              shape: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.white,
                      width: 0.0,
                      style: BorderStyle.solid)),
              gradient: LinearGradient(colors: [Colors.white, Colors.white])),
          labelColor: Colors.black,
          labelStyle: textStyle.copyWith(
            fontSize: 14.0,
            color: Colors.white,
            fontWeight: FontWeight.normal
          ),
          unselectedLabelColor: Colors.white,
          unselectedLabelStyle: textStyle.copyWith(
            fontSize: 16.0,
            color: Color(0xFFc9c9c9),
              fontWeight: FontWeight.normal
          ),
          tabs: <Widget>[
            Tab(
              child: Container(
                padding: EdgeInsets.only(right: 15.0, left: 15.0),
                child: Text("Dhaka (Cam -1)",textAlign: TextAlign.center,),
              ),
            ),
            Tab(
              child: Container(
                padding: EdgeInsets.only(right: 15.0, left: 15.0),
                child: Text("Dhaka (Cam-2)",textAlign: TextAlign.center,),
              ),
            ),
            Tab(
              child: Container(
                padding: EdgeInsets.only(right: 15.0, left: 15.0),
                child: Text("Chattogram ",textAlign: TextAlign.center,),
              ),
            ),
            Tab(
              child: Container(
                padding: EdgeInsets.only(right: 15.0, left: 15.0),
                child: Text("Khulna",textAlign: TextAlign.center,),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          frist.Dhaka1(),
          second.Dhaka2(),
          third.Ctg(),
          four.Khulna(),
        ],
      ),
    );
  }

  static const textStyle = TextStyle(
      fontSize: 12.0,
      color: Colors.white,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.normal);
}
