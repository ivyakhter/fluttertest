import 'package:flutter/material.dart';

import 'intersted_student.dart';


class Admin_Main extends StatefulWidget {
  @override
  _Admin_MainState createState() => _Admin_MainState();
}

class _Admin_MainState extends State<Admin_Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Admin"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () {
                Route route = new MaterialPageRoute(
                    builder: (context) => intersted_student());
                Navigator.push(context, route);
              },
              child: Text("Intersted Student"),
            )
          ],
        ),
      ),
    );
  }
}
