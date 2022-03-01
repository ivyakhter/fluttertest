import 'package:flutter/material.dart';

class Our_Mission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Creative IT is an institution where empowering the community for an excellent standard of learning is what we desire. We endeavor for the continuous improvement of our leaders who will work for constructing a better future. The institute is dedicated to serving the quality training programs under ISO 9001: 2015 certification which remarks us in the IT world. We will continue to share our knowledge for contributing to the success of individuals and to serve society with the best interest."
              "\n" "\n"
              "We are committed to providing our students with a platform where superiority is the mantra. We nurture the young talent by sharing knowledge, providing supports in learning techniques, co-operating them for international standard projects, making successful freelancers and driving our youth towards a world of entrepreneurship and thus reducing inequalities. Our culture is important to us and our team of experts drives our culture. The skilled human resource make our deliverables valuable that really helps us to set our standard internationally."
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
