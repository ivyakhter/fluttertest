import 'package:flutter/material.dart';

import '../color_helper.dart';

import 'objectivs_faq.dart' as frist;
import 'course_seminars.dart' as second;
import 'freelancing_faq.dart' as third;
import 'fee_payments_faq.dart' as four;

class FAQ_Main extends StatefulWidget {


  @override
  _FAQ_MainState createState() => _FAQ_MainState();
}

class _FAQ_MainState extends State<FAQ_Main>
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

        title: Text(
          "FAQ",
        ),
        elevation: 0.0,
        backgroundColor: Color(Helper.getHexToInt("e50000")),
        bottom: TabBar(

          isScrollable: true,
          controller: controller,
          indicatorPadding: EdgeInsets.all(0.0),
          indicatorWeight: 1.0,
          labelPadding: EdgeInsets.only(left: 1.0, right: 1.0),
          indicator: ShapeDecoration(

              shape: UnderlineInputBorder(

                borderRadius: BorderRadius.circular(0.0),
                  borderSide: BorderSide(

                      color: Colors.black,
                      width: 1.0,
                      style: BorderStyle.solid)),
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
              ])),
          labelColor: Colors.black,
          labelStyle: textStyle.copyWith(
            fontSize: 16.0,
            color: Colors.white,
          ),
          unselectedLabelColor: Colors.white,
          unselectedLabelStyle: textStyle.copyWith(
            fontSize: 16.0,
            color: Color(0xFFc9c9c9),
          ),
          tabs: <Widget>[
            Tab(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("CITI & Objectives")),
            ),
            Tab(
              child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text("Course & Seinars")),
            ),
            Tab(
              child: Padding(
                  padding: EdgeInsets.all(10.0), child: Text("Freelancing")),
            ),
            Tab(
              child: Padding(
                  padding: EdgeInsets.all(10.0), child: Text("Fee & Payments")),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          frist.objective_faq(),
          second.course_seminars(),
          third.freelancing_faq(),
          four.fee_payments_faq(),
        ],
      ),
    );
  }

  static const textStyle = TextStyle(
      fontSize: 12.0,
      color: Colors.white,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400);
}
