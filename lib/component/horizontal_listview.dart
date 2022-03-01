import 'package:creative_it_flutter_last/Sub_Category/course_3d.dart';
import 'package:creative_it_flutter_last/Sub_Category/course_english.dart';
import 'package:creative_it_flutter_last/Sub_Category/course_networking.dart';
import 'package:creative_it_flutter_last/Sub_Category/course_web_software.dart';
import 'package:creative_it_flutter_last/Sub_Category/course_CyberSecurity.dart';
import 'package:creative_it_flutter_last/Sub_Category/course_Graphic.dart';
import 'package:creative_it_flutter_last/Sub_Category/course_Robotic.dart';
import 'package:creative_it_flutter_last/Sub_Category/course_digital_marketing.dart';
import 'package:creative_it_flutter_last/Sub_Category/course_film.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import '../color_helper.dart';

class horiznatalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: AnimationLimiter(
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 800),
              child:  FlipAnimation(
                child: Row(

                  children: <Widget>[
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => app_web_software())),

                      child: Category(
                        image_location: "assets/department/Software.png",
                        image_caption: "Software",
                      ),
                    ),

                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => graphics_course())),

                      child: Category(
                        image_location: "assets/department/Graphic-Design.png",
                        image_caption: "Graphic Design",
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => digital_course())),

                      child: Category(
                        image_location: "assets/department/Digital-Marketing.png",
                        image_caption: "Digital Marketing",
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => robotic_course())),
                      child: Category(
                        image_location: "assets/department/Robotics.png",
                        image_caption: "Robotic",
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => Cyber_Security_course())),
                      child: Category(
                        image_location: "assets/department/Ethical-Hacking.png",
                        image_caption: "Ethical Hacking",
                      ),
                    ),
                    /*   InkWell(


            child: Category(
              image_location: "assets/category/interior_design.png",
              image_caption: "Interior Design",
            ),
          ),*/
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => three_D_course())),
                      child: Category(
                        image_location: "assets/department/3D-Animation.png",
                        image_caption: "3D Animation",
                      ),
                    ),
                    /*   InkWell(
            onTap: () {},
            child: Category(
              image_location: "assets/category/ui_ux.png",
              image_caption: "UI/UX Design",
            ),
          ),*/
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => networking_course())),
                      child: Category(
                        image_location: "assets/department/Networking.png",
                        image_caption: "Networking",
                      ),
                    ),
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => english_course())),
                      child: Category(
                        image_location: "assets/department/English.png",
                        image_caption: "English",
                      ),
                    ),
                    /*     InkWell(
            onTap: () {},
            child: Category(
              image_location: "assets/category/Digital_Film_Making.png",
              image_caption: "Digital Film Making",
            ),
          ),*/
                    /*    InkWell(
            onTap: () {},
            child: Category(
              image_location: "assets/category/Python.png",
              image_caption: "Python",
            ),
          ),*/
                    /*InkWell(
            onTap: () {},
            child: Category(
              image_location: "assets/category/Social_Media_Marketing.png",
              image_caption: "Social Media Marketing",
            ),
          )*/
                    InkWell(
                      onTap: () => Navigator.of(context).push(
                          new MaterialPageRoute(builder: (context) => Film_course())),
                      child: Category(
                        image_location: "assets/department/Film-&-Media.png",
                        image_caption: "Film & Media",
                      ),
                    ),


                  ],
                ),
              ),
            );
          },
        ),
      ),
    );



  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 1.0,
        child: Container(
          width: 110.0,
          height: 130.0,
          child: GridTile(
            child: Padding(
              padding: EdgeInsets.only(bottom: 15.0),
              child: Image.asset(

                image_location,
              ),
            ),
            footer: Container(
              height: 20.0,
              color: Color(Helper.getHexToInt("1f3b51")).withOpacity(0.95),
              alignment: Alignment.topCenter,
              child: Center(
                  child: Text(
                image_caption,
                style: TextStyle(
                    fontSize: 13.0,

                    color:  Color(Helper.getHexToInt("ffffff")),
                    fontWeight: FontWeight.normal), textAlign: TextAlign.center,
              )),
            ),
          ),
        ),
      ),
    );
  }
}
