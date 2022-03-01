import 'package:flutter/material.dart';

class main_bottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        bottomUi(
          image_url: "assets/bottom_img/24x7-Online-Support.png",
          title: "24/7 Online Support",
          description:
              "24/7 Online Support- We always listen to our students. Any time they are in a problem, our team is always online for providing support to them. Even at night, we are online for your projects ongoing.",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomUi(
          image_url: "assets/bottom_img/Lifetime-Support.png",
          title: "Lifetime Support",
          description:
              "All CITI students get supports for life. For any live project get our experts' guideline and maintain it in international standard.",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomUi(
          image_url: "assets/bottom_img/Practice-Lab-Support.png",
          title: "Practise Lab Support",
          description:
              "We offer lab practise facilities for weak students where they can practice the task and be able to hold the attention by solving what is not understood by them.",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomUi(
          image_url: "assets/bottom_img/Class-Video.png",
          title: "Class Video",
          description:
              "Get the recorded lectures and class practical as video. It will create a good storage of materials for future. And you can practice at home with the help of these materials.",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomUi(
          image_url: "assets/bottom_img/Review-Class.png",
          title: "Review Class",
          description:
              "Ensure 100% learning of tools, techniques, designs by our review classes for each batch. Better understand the difficult terms by revising every topic.",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomUi(
          image_url: "assets/bottom_img/Job-Placement.png",
          title: "Job Placement",
          description:
              "Acquire exclusive opportunities to work in international marketplaces as an expert freelancer. CITI creates opportunities by adding value to your career.",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomImageUi(
          image_url: "assets/bottom_img/iso.jpg",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomImageUi(
          image_url: "assets/bottom_img/mou.jpg",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomImageUi(
          image_url: "assets/bottom_img/CBT&A.png",
        ),
        SizedBox(
          height: 15.0,
        ),
        bottomImageUi(
          image_url:
              "assets/bottom_img/Job-Placement_Banner.png",
        ),
        SizedBox(
          height: 15.0,
        )
      ],
    );
  }
}

class bottomUi extends StatelessWidget {
  final String image_url;
  final String title;
  final String description;

  bottomUi({this.image_url, this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: Padding(
        padding:
            EdgeInsets.only(left: 5.0, right: 5.0, top: 10.0, bottom: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                height: 90.0,
                width: 90.0,
                child: Image.asset(image_url)),
            SizedBox(
              height: 2.0,
            ),
            Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black),
            ),
            SizedBox(
              height: 2.0,
            ),
            Text(
              description,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class bottomImageUi extends StatelessWidget {
  final String image_url;

  bottomImageUi({this.image_url});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.only(left: 5.0, right: 5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(image_url),
            SizedBox(
              height: 5.0,
            ),
          ],
        ),
      ),
    );
  }
}
