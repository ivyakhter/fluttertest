import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import '../color_helper.dart';
import 'notice_model.dart';

class AllNotice extends StatefulWidget {
  @override
  _AllNoticeState createState() => _AllNoticeState();
}

class _AllNoticeState extends State<AllNotice> {
  List<Notices> noticeList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    DatabaseReference reference =
        FirebaseDatabase.instance.reference().child("Notice");
    reference.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;
      var DATA = snap.value;

      noticeList.clear();

      for (var indivisual in KEYS) {
        Notices notices = new Notices(
          main_nottice: DATA[indivisual]["main_nottice"],
          not_date: DATA[indivisual]["not_date"],
          postrd_by: DATA[indivisual]["postrd_by"],
        );

        noticeList.add(notices);
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Notices"),
       backgroundColor: Color(Helper.getHexToInt("e50000"))
      ),
      body: Container(
        child: noticeList.length == 0
            ? new Text("No Seminar Available")
            : ListView.builder(
                itemCount: noticeList.length,
                itemBuilder: (BuildContext context, int index) {
                  return noticeUI(
                    noticeList[index].main_nottice,
                    noticeList[index].not_date,
                    noticeList[index].postrd_by,
                  );
                },
              ),
      ),
    );
  }

  Widget noticeUI(String main_nottice, String not_date, String postrd_by) {
    return Card(
      elevation: 1.0,
      margin: EdgeInsets.all(10.0),
      child: Container(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Card(

                elevation: 0.50,
                child: Container(
                  height: 50.0,
                  width: double.infinity,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5.0,right: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          "Posted by : " + postrd_by,
                          style: TextStyle(fontSize: 13.0),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          not_date,
                          style: TextStyle(fontSize: 13.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Text(
                  main_nottice,
                  style: TextStyle(fontSize: 13.0),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
