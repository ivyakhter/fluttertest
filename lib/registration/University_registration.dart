import 'package:creative_it_flutter_last/registration/city.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:uuid/uuid.dart';

import '../Main_Pages.dart';
import '../color_helper.dart';

class Uni_reg extends StatefulWidget {
  @override
  _FormVAlidationState createState() => _FormVAlidationState();
}

class _FormVAlidationState extends State<Uni_reg> {
  var formkey = GlobalKey<FormState>();
  var uuid = Uuid();
  var name, phone, myPhone, email, uni_name;
  String today;
  DateTime timeStamp;

  var nameCTRl = TextEditingController();
  var phoneCTRl = TextEditingController();
  var emailCTRl = TextEditingController();

/*
  var    now = new DateTime.now();
  var berlinWallFell = new DateTime.utc(1989, 11, 9);
  var moonLanding = DateTime.parse("1969-07-20 20:18:04Z");*/

  List<city> cities = [];

  @override
  void initState() {
    super.initState();

    DatabaseReference reference = FirebaseDatabase.instance
        .reference()
        .child("Seminer")
        .child("All_Seminar");
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

  DatabaseReference reference_push = FirebaseDatabase.instance
      .reference()
      .child("Registration")
      .child("University_students");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () => Navigator.of(context)
                .push(new MaterialPageRoute(builder: (context) => Main_App()))),
        elevation: 0.0,
        backgroundColor: Color(Helper.getHexToInt("e50000")),
        title: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Icon(Icons.today),
                SizedBox(
                  width: 5.0,
                ),
                Text(" Seminar Registration ")
              ],
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(5.0),
            child: Card(
              elevation: 2.0,
              child: Container(
                /* decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/ui/back_bottom.png"),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomRight,
                  ),
                ),*/
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
                    key: formkey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 150,
                          height: 150,
                          child: Image.asset(
                            "assets/ui/gif2.gif",

                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.red),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          height: 60.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black87, width: 1.0),
                                  borderRadius: BorderRadius.circular(30.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                30.0,
                              )),
                              labelText: "Enter name",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            controller: nameCTRl,
                            validator: (value) {
                              if (value.length == 0)
                                return ("Name is required ");
                            },
                            onSaved: (value) {
                              this.name = value;
                            },
                          ),
                        ),
                        //name
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(
                          height: 75.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black87, width: 1.0),
                                  borderRadius: BorderRadius.circular(30.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              labelText: "Enter Phone",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:  BorderSide(
                                    color: Colors.black, width: 1.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            controller: phoneCTRl,
                            keyboardType: TextInputType.number,
                            maxLength: 11,
                            validator: (value) {
                              if (value.length < 11)
                                return ("Phone Number must be 11 Digit ");
                            },
                            onSaved: (value) {
                              this.phone = value;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Container(
                          height: 60.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.black87, width: 1.0),
                                  borderRadius: BorderRadius.circular(30.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              labelText: "Enter Email",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.black, width: 1.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            controller: emailCTRl,
                            validator: (V) => !EmailValidator.validate(V, true)
                                ? 'Not a valid email.'
                                : null,
                            onSaved: (val) => this.email = val,
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Container(

                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(30.0),
                            color: Colors.transparent,
                            border: Border.all(
                              width: 1.0,
                              color: Colors.white.withOpacity(0.7),
                            ),
                          ),
                          child: Card(

                            elevation: 0.3,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(left: 18.0, right: 18.0),
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(color: Colors.white))),

                                isExpanded: true,
                                onChanged: (val) {
                                  //_showToast("You Have selected " + val);
                                  setState(() {
                                    uni_name = val;
                                  });
                                },
                                value: uni_name,
                                hint: new Text("Select Your University"),
                                items: cities.map((city value) {
                                  return new DropdownMenuItem(
                                    value: value.uni_name,
                                    child: new Row(
                                      children: <Widget>[
                                        new Text(value.uni_name)
                                      ],
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        //email

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                              width: 120.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)),
                                child: Text("Submit"),
                                color: Colors.red,
                                textColor: Colors.white,
                                onPressed: () {
                                  submitValidation();
                                },
                              ),
                            ),
                            Container(
                              width: 120.0,
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)),
                                child: Text(
                                  "Reset",
                                  style: TextStyle(color: Colors.red),
                                ),
                                color: Colors.white,
                                //textColor: Colors.white,
                                onPressed: () => Navigator.of(context).push(
                                    new MaterialPageRoute(
                                        builder: (context) => Uni_reg())),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  submitValidation() {
    if (formkey.currentState.validate()) {
      formkey.currentState.save();

      reference_push.push().set({
        "name": name,
        "phone": phone,
        "email": email,
        "Uni_Name": uni_name,
      }).whenComplete(() {
        Fluttertoast.showToast(
            msg: "Registration Completed !",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.CENTER,
            timeInSecForIos: 1,
            backgroundColor: Colors.green,
            textColor: Colors.white,
            fontSize: 16.0);

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Main_App()),
        );
      });
    }
  }

  resetOperation() {
    nameCTRl.clear();
    phoneCTRl.clear();
    emailCTRl.clear();
  }

/*  _showToast(String massage) {
    Fluttertoast.showToast(
        msg: massage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIos: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }*/
}
