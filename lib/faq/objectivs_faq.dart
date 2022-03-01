import 'package:flutter/material.dart';

class objective_faq extends StatefulWidget {
  @override
  _objective_faqState createState() => _objective_faqState();
}

class _objective_faqState extends State<objective_faq> {
  List Faq_list = [
    {
      "title": "What is the Main Objectives of CITI?",
      "answer":
          "The main objective of CITI is to empower the community for providing excellent standard of IT training and to ensure the quality of delivery for the long run. We help to build your career and to assist you towards entrepreneurship."
    },
    {
      "title":
          "How many official Facebook page does CITI have? Tell their URL?",
      "answer": "Head office - https://www.facebook.com/CreativeITInstitute/"
          "\n"
          "\n"
          "Chattogram - https://www.facebook.com/CITI.Chattogram/"
          "\n"
          "\n"
          "Khulna - https://www.facebook.com/CITI.Khulna/"
          "\n"
          "\n"
          "\n"
          " Besides we have two other branches one in Chattogram and one in Khulna. And we have one online platform for IT Training that is called Creative-E-School."
          "\n"
          "\n"
          "  E-School - https://www.facebook.com/CreativeEschool/"
    },
    {
      "title": "What is the establishment year of CITI?",
      "answer":
          "We are serving & providing quality training for more than 11 years. The year of establishment is 2008. The institute is dedicated to serving the quality training programs under ISO 9001: 2015 certification which remarks us in the IT world."
    },
    {
      "title": "What is your office address?",
      "answer":
          "Our office is located in Momtaz Plaza (4th floor), Opposite of Labaid Hospital, House#7, Road#4, Dhanmondi, Dhaka"
    },
    {
      "title": "What is the address of your Chattogram Branch?",
      "answer":
          "Creative IT Chittagong Branch location is 9 No, Kapasgola Road, Chawkbazar, Telpotti Road, Chittagong 4203."
              "\n"
              "\n"
              "Map: goo.gl/maps/kWbk1rMSAMG2"
              "\n"
              "\n"
              "For details - 01990779999"
              "\n"
    },
    {
      "title": "What is the address of your Khulna Branch?",
      "answer":
          "Creative IT Khulna Branch location is: The Daily Probaho Vabon [3rd Floor], 3 KDA Avenue [Shivbari Mor], Khulna."
              "\n"
              "\n"
              "Map: goo.gl/maps/uSYKuDqLZQ22"
              "\n"
              "\n"
              " For details - 01990779800"
    },
    {"title": " Where should I contact for admission?",
      "answer": "For any type of query related with admission please contact with Ms. Shakila Sultana Miti, Head of Admission & Counselling at 01624666000"},
    {"title": "What are the pre-requirements for enrolling in your institute? ",
      "answer": "The Documents that you need to submit before enrolling are- One copy passport size photo, Photocopy of your NID or Birth Certificate, Certificate of any one of your Academic certificate (S.S.C / H.S.C)"},
    {"title": "Where can I find the course materials?    ",
      "answer": "You will be able to collect all our course materials from our premises. You can directly come and have a discussion with our counselling team. They will provide you with all the necessary documents."},
    {"title": "Does CITI offer any internship facility for its students?    ",
      "answer": "Yes, we offer internship facilities for the students. Students have to apply for the Internship Facilities to the Director through the respective program coordinator."},

  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Faq_list.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 1.0,
            child: ExpansionTile(
                title: Text(
                  Faq_list[index]["title"],
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                  textAlign: TextAlign.left,
                ),
                children: <Widget>[
                  Divider(),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        Faq_list[index]["answer"],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0),
                        textAlign: TextAlign.left,
                      )),
                  Divider()
                ]),
          );
        });
  }
}
