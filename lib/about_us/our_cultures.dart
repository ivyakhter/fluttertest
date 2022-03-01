import 'package:flutter/material.dart';

class OurCultures extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
           "We have developed our brilliant team of designers, developers, and marketers to flourish in making the future leaders. We encourage personal projects for getting trendy arts and to continuously progress with the innovative world. We value the innovative ideas and work in a dynamic lifestyle. Thus we are passionate towards uplifting new opportunities for the country. And we always prioritize to work in a friendly environment where time off and interaction with our team helps us to be together and to learn new stuffs."
           "\n",
              style: TextStyle(height: 1.5, letterSpacing: 0.0, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(
                        "assets/about/img1.jpg"),
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Image.asset(
                        "assets/about/img2.jpg"),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Capacity & Training Scenario",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 100.0,
                  height: 2.0,
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                    "Total number of Trained participants till date : 30000+"
                        "\n"
                        "Number of equipped computer Lab : 7"
                        "\n"
                        "Number of theory classroom : 5"
                        "\n"
                        "Number of Trainer : 100 (In house)"
                        "\n",
                    style: TextStyle(
                        height: 1.5, letterSpacing: 0.0, fontSize: 15.0))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "IT Training for Development",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 100.0,
                  height: 2.0,
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                    "Basic Computer Training has been provided to 130 underprivileged youths from low income area Dhaka Uddyan, Mohammadpur partnership with an NGO named Prativa Shamaj Kallyan Samity."
                        "\n"
                        "\n"
                        "Full free scholarship of amount Tk. 20 Lacs has been provided to 100 Women for training them as freelancers from the own fund of Creative IT Ltd."
                        "\n"
                        "\n"
                        "Freelancing Training has been provided to 100 differently abled people with own fund."
                        "\n"
                        "\n"
                        "IT skill development Training has been provided to 30 Media Journalist to enhance their professional skill."
                        "\n",
                    style: TextStyle(
                        height: 1.5, letterSpacing: 0.0, fontSize: 15.0))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Office & Training Space",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 100.0,
                  height: 2.0,
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                    "12,500 Sft with 200 students capacity per shift (Air Conditioned)"
                        "\n"
                        "\n"
                        "Total number of employees (350) including Trainers (100), Counselors (7), Customer Relationship Management (10), Web Developers (18), Graphic Designers (35), Apps Developers (7), Network Engineers (6), Hardware Engineers (5), Business Developers (5), HR & Admins (5), Finance & Accounts (7), Support Staffs for Security and Cleanliness (13)  "
                        "\n",
                    style: TextStyle(
                        height: 1.5, letterSpacing: 0.0, fontSize: 15.0)),
                Text(
                  '* On Job training facilities for eligible participants.',
                  style: TextStyle(color: Colors.red, fontSize: 15.0),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Annual Evolution",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 100.0,
                  height: 2.0,
                  color: Colors.black87,
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                    "After training Skill Development ration 90%"
                        "\n"
                        "Successful placement ration 70%"
                        "\n"
                        "Average self-employment record 45%"
                        "\n"
                        "Entrepreneurship Development 20%"
                        "\n"
                        "Able to arrange 120 awareness workshop per year with 6000 participants"
                        "\n",
                    style: TextStyle(
                        height: 1.5, letterSpacing: 0.0, fontSize: 15.0))
              ],
            ),
          ),
        ],
      ),
    );
  }
}