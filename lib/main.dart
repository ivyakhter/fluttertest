import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:creative_it_flutter_last/theme/color.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:url_launcher/url_launcher.dart';

//my Own Import
import 'about_us/About_us_Main.dart';
import 'all_course_details/all_courses_horizontal.dart';
import 'color_helper.dart';
import 'component/horizontal_listview.dart';
import 'contact_us/contact_main.dart';
import 'faq/faq_main.dart';
import 'Splash.dart';
import 'notice/all_notice.dart';

import 'registration/University_registration.dart';
import 'registration/ragistration.dart';
import 'routines/routines_next.dart';
import 'routines/routines_today.dart';
import 'seminar/all_seminar.dart';
import 'utilities/main_bottom.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false, theme: apptheme, home: Splash_Screen()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Widget images_carousel = Container(
      height: 200.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("assets/carosol/one_card.png"),
          AssetImage("assets/carosol/four_card.png"),
          AssetImage("assets/carosol/three_card.png"),
          AssetImage("assets/carosol/two_card.png"),
          /*    AssetImage("assets/images/ethical-hacking.png"),
          AssetImage("assets/images/digital-film-making.png"),
          AssetImage("assets/images/gd-1.png")*/
        ],
        autoplay: true,
        animationCurve: Curves.easeInOutSine,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 4.0,
        dotColor: Colors.white,
        indicatorBgPadding: 4.0,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color(Helper.getHexToInt("e50000")),
        title: Center(
            child: InkWell(
          onTap: () {},
          child: Text(
            "Creative IT Institute",
            textAlign: TextAlign.center,
          ),
        )),
      ),
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.7,
        child: Drawer(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top:0.0),
                child: Card(

                  elevation: 0.0,
                  child: Image.asset(
                    "assets/logo_navs.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => Main_About_us())),
                    child: ListTile(
                      title: Text("About Us"),
                      leading: Icon(Icons.business_center, color: Colors.red),
                    ),
                  ),
                ),
                position: null,
              ),
              Divider(
                color: Colors.red,
              ),


              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(builder: (context) => AllSeminar())),
                    child: ListTile(
                      title: Text("Seminar"),
                      leading: Icon(
                        Icons.art_track,
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
                position: null,
              ),

              Divider(
                color: Colors.red,
              ),

              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child: InkWell(
                    onTap:() => Navigator.of(context).push(new MaterialPageRoute(
                      builder: (context) => Routines_Today())),

                    /*()=>AwesomeDialog(context: context,
                        dialogType: DialogType.INFO,
                        animType: AnimType.BOTTOMSLIDE,
                        tittle: 'Dialog Title',
                        desc: 'Dialog description here..................................................',
                        btnCancelOnPress: () => Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => Routines_Today())),

                        btnOkOnPress: () => Navigator.of(context).push(new MaterialPageRoute(
                            builder: (context) => Routines_Next())),).show(),*/


                    /*() => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => Routines_Today())),*/
                    child: ListTile(
                      title: Text("Routines"),
                      leading: Icon(Icons.date_range, color: Colors.red),
                    ),
                  ),
                ),
                position: null,
              ),
              Divider(
                color: Colors.red,
              ),

              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child:InkWell(
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(builder: (context) => AllNotice())),
                    child: ListTile(
                      title: Text("Notices"),
                      leading:
                      Icon(Icons.notification_important, color: Colors.red),
                    ),
                  ),
                ),
                position: null,
              ),
              Divider(
                color: Colors.red,
              ),

              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => Registration())),
                    child: ListTile(
                      title: Text("Registration"),
                      leading: Icon(Icons.category, color: Colors.red),
                    ),
                  ),
                ),
                position: null,
              ),
              Divider(
                color: Colors.red,
              ),
          /*    AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => Uni_reg())),
                    child: ListTile(
                      title: Text("Both Registration"),
                      leading: Icon(Icons.landscape, color: Colors.red),
                    ),
                  ),
                ),
                position: null,
              ),

              Divider(
                color: Colors.red,
              ),*/


              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                        new MaterialPageRoute(builder: (context) => FAQ_Main())),
                    child: ListTile(
                      title: Text("FAQ"),
                      leading: Icon(Icons.question_answer, color: Colors.red),
                    ),
                  ),
                ),
                position: null,
              ),
              Divider(
                color: Colors.red,
              ),

              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                        builder: (context) => Contact_main())),
                    child: ListTile(
                      title: Text("Contact Us"),
                      leading: Icon(Icons.contacts, color: Colors.red),
                    ),
                  ),
                ),
                position: null,
              ),
              Divider(
                color: Colors.red,
              ),

              AnimationConfiguration.staggeredList(
                duration: const Duration(milliseconds: 1000),
                child: FlipAnimation(
                  child: InkWell(
                    onTap: () => goLink("https://play.google.com/store/apps/details?id=com.creativeitinstitute.creative_it_flutter_last"),
                    child: ListTile(
                      title: Text("Check for Updates "),
                      leading: Icon(Icons.system_update_alt, color: Colors.red),
                    ),
                  ),
                ),
                position: null,
              ),

            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          images_carousel,
          // categories
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Our Departments",
                  style: TextStyle(
                      fontSize: 16.0,
                      color: Color(Helper.getHexToInt("001a33")),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Divider(),

          //Horizonatl Listview Begins Here
          horiznatalList(),

          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0, top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Our Courses",
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(Helper.getHexToInt("001a33")),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          //Gridview

          Container(
            height: 180.0,
            child: Courses_All_H(),
          ),

          SizedBox(
            height: 5.0,
          ),
          main_bottom()
        ],
      ),
    );
  }
  Future<void> goLink(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
