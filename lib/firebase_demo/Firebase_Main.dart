import 'package:flutter/material.dart';


class FirebaseMain extends StatefulWidget {
  @override
  _FirebaseMainState createState() => _FirebaseMainState();
}

class _FirebaseMainState extends State<FirebaseMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Main"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: () {

         /*     Route route =
              new MaterialPageRoute(builder: (context) => Fire_write());
              Navigator.push(context, route);*/
            },
            child: Text("Data Write"),
          )
        ],
      ),
    );
  }
}
