import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Routines_Next_to_Next extends StatefulWidget {
  @override
  _myRoutinesState createState() => _myRoutinesState();
}

class _myRoutinesState extends State<Routines_Next_to_Next> {

  static var now = new DateTime.now();
  static var formatter = new DateFormat('dd');
  static String formatted = formatter.format(now);

  int val = int.tryParse(formatted) + 1;

/*
  var now = new DateTime.now();
  var formatter = new DateFormat('yyyy-MM-dd');
  String formatted = formatter.format(now);*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(val.toString()),
      ),
    );
  }
}
