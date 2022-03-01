import 'package:flutter/material.dart';

import '../color_helper.dart';
import 'our_vission.dart';
import 'our_mission.dart';
import 'our_values.dart';
import 'our_cultures.dart';

class Main_About_us extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(

        appBar: AppBar(

          elevation: 0.0,
         backgroundColor:Color(Helper.getHexToInt("e50000")),
          title: Text("About Us"),

          bottom: TabBar(

            indicatorColor: Colors.black,
            isScrollable: false,

            indicatorPadding: EdgeInsets.all(10.0),
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
                fontSize: 16.0,
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
                text: "Our Vission",

                icon: ImageIcon(
                  AssetImage("assets/ui/vision.png"),
                 color: Color(0xFF000000),
                ),
              ),
              Tab(
                text: "Our Mission",

                icon: ImageIcon(
                  AssetImage("assets/ui/Mission.png"),
                  color: Color(0xFF000000),
                ),
              ),
              Tab(
                text: "Our Values",

                icon: ImageIcon(
                  AssetImage("assets/ui/Values.png"),
                  color: Color(0xFF000000),
                ),
              ),
              Tab(
                text: "Our Cultures",

                icon: ImageIcon(
                  AssetImage("assets/ui/Culture.png"),
                  color: Color(0xFF000000),
                ),
              ),

            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[Our_Vission(),Our_Mission(),Our_Values(),OurCultures()],
        ),
      ),
    );
  }
  static const textStyle = TextStyle(
      fontSize: 12.0,
      color: Colors.white,
      fontFamily: 'OpenSans',
      fontWeight: FontWeight.w400);
}
