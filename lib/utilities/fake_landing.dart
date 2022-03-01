import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';


import '../registration/city.dart';
class Mydrop extends StatefulWidget {
  @override
  _MydropState createState() => _MydropState();
}

class _MydropState extends State<Mydrop> {

  List<city> cities = [];
  @override
  void initState() {
    super.initState();

    DatabaseReference reference =
    FirebaseDatabase.instance.reference().child("Seminer").child("All_Seminar");
    reference.once().then((DataSnapshot snap) {
      var KEYS = snap.value.keys;
      var DATA = snap.value;

      cities.clear();

      for (var indivisual in KEYS) {
        city ct = new city(
          uni_name: DATA[indivisual]["subject"],
        );

        cities.add(ct);
      }
      setState(() {});
    });
  }
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return drop();
  }

  Widget drop() {
    return DropdownButton(
        onChanged: (val) {
          //_showToast("You Have selected " + val);
          setState(() {
            cities[index] = val;
          });
        },

        value: cities[index],
        hint: new Text("Ville"),
        items: cities.map((city value) {
          return new DropdownMenuItem(
            value: value,
            child: new Row(
              children: <Widget>[

                new Text(value.uni_name)
              ],
            ),
          );
        }).toList(),
      );
  }
}
