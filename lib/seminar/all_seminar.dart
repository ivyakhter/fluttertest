import 'package:creative_it_flutter_last/registration/ragistration.dart';
import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

import '../Seminar_model.dart';
import '../color_helper.dart';


class AllSeminar extends StatefulWidget {
  @override
  _SeminarState createState() => _SeminarState();
}

class _SeminarState extends State<AllSeminar> {
  List<Seminar> seminarLIst = [];

  @override
  void initState() {
    super.initState();

    DatabaseReference reference =
    FirebaseDatabase.instance.reference().child("Seminer").child("All_Seminar");
    reference.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;
      var DATA = snap.value;

      seminarLIst.clear();

      for (var indivisual in KEYS) {
        Seminar seminar = new Seminar(
          seminer_day: DATA[indivisual]["seminer_day"],
          seminer_time: DATA[indivisual]["seminer_time"],
          subject: DATA[indivisual]["subject"],
        );

        seminarLIst.add(seminar);
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Helper.getHexToInt("e50000")),
        title: Text("All seminar"),
      ),
      body: Container(
        child: seminarLIst.length == 0
            ? new Text("No Seminar Available")
            : ListView.builder(
          itemCount: seminarLIst.length,
          itemBuilder: (BuildContext context, int index) {
            return semiarUi(
              seminarLIst[index].seminer_day,
              seminarLIst[index].seminer_time,
              seminarLIst[index].subject,
            );
          },
        ),
      ),
    );
  }

  Widget semiarUi(String date, String time, String subject) {
    return Container(

      child: Card(
        elevation: 1.0,
        margin: EdgeInsets.only(top:10.0,left: 5.0,right: 5.0),
        child: Container(
          padding: EdgeInsets.only(top:15.0,left: 5.0,right: 0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[

              Align(
                alignment: Alignment.center,
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Icon(Icons.subject,color: Colors.red,),
                              Text(" "+subject, style: TextStyle(fontSize: 15.0,fontWeight: FontWeight.bold),),

                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Container(

                                  child: Icon(
                                    Icons.date_range,color: Colors.red,

                                  size: 30.0,
                                  )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: <Widget>[
                                  Text(" "+date),

                                  Text(" "+time),

                                ],
                              )

                            ],
                          ),

                        ],
                      ),

                      FlatButton(

                        color: Color(Helper.getHexToInt("e50000")),
                        onPressed:()=> Navigator.of(context).push(
                            new MaterialPageRoute(builder: (context) => Registration())),
                        child: Text("Join Seminar",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                      )

                    ],
                  ),
                ),
              )




            ],
          ),
        ),
      ),
    );
  }
}
