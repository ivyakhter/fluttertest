import 'package:flutter/material.dart';

class freelancing_faq extends StatelessWidget {
  List Faq_list = [
    {
      "title": "Do you have any freelancing course?",
      "answer":
          "With every course offered we provide techniques and show all the possible ways to become a freelancer. We help you to work and generate income as a freelancer. You will be able to know the ways to promote your works in online marketplaces."
    },
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
