import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:email_validator/email_validator.dart';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:uuid/uuid.dart';

import '../Main_Pages.dart';
import '../color_helper.dart';

class Registration extends StatefulWidget {
  @override
  _FormVAlidationState createState() => _FormVAlidationState();
}

class _FormVAlidationState extends State<Registration> {
  var formkey = GlobalKey<FormState>();
  var uuid = Uuid();
  var name, phone, myPhone, email, subject;
  String today;
  DateTime timeStamp;
  DatabaseReference reference = FirebaseDatabase.instance
      .reference()
      .child("demo")
      .child("Interested_Students");

  var nameCTRl = TextEditingController();
  var phoneCTRl = TextEditingController();
  var emailCTRl = TextEditingController();

/*
  var    now = new DateTime.now();
  var berlinWallFell = new DateTime.utc(1989, 11, 9);
  var moonLanding = DateTime.parse("1969-07-20 20:18:04Z");*/

  @override
  void initState() {
    // TODO: implement initState
    super.initState();


  }

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
                            "assets/ui/rgister.gif",
                          ),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,color: Colors.red),


                        ),
                        SizedBox(height: 20.0,),
                        Container(
                          height: 60.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black87, width: 1.0),
                                  borderRadius: BorderRadius.circular(30.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                30.0,
                              )),
                              labelText: "Enter name",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white, width: 2.0),
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                            controller: nameCTRl,
                            validator: (value) {
                              if (value.length == 0) return ("Name is required ");
                            },
                            onSaved: (value) {
                              this.name = value;
                            },
                          ),
                        ),
                        //name
                        SizedBox(
                          height: 30.0,
                        ),
                        Container(
                          height: 70.0,
                          child: TextFormField(
                            decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black87, width: 1.0),
                                  borderRadius: BorderRadius.circular(30.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              labelText: "Enter Phone",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white, width: 2.0),
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
                                  borderSide:
                                      BorderSide(color: Colors.black87, width: 1.0),
                                  borderRadius: BorderRadius.circular(30.0)),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30.0)),
                              labelText: "Enter Email",
                              fillColor: Colors.white,
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white, width: 1.0),
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
                          height: 10.0,
                        ),
                        Container(

                          decoration: new BoxDecoration(
                            borderRadius: new BorderRadius.circular(30.0),
                            color: Colors.transparent,
                            border: Border.all(
                              width: 1.0,
                              color: Colors.black12,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left:18.0,right: 18.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                DropdownButton(
                                 isExpanded: true,
                                  hint: Text("Select a Subject"),
                                  onChanged: (val) {
                                    //_showToast("You Have selected " + val);

                                    setState(() {
                                      subject = val;
                                    });
                                  },
                                  value: subject,

                                  items: [
                                    DropdownMenuItem(
                                      value: "3D Animation",
                                      child: Text("3D Animation"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Advance Graphic Design",
                                      child: Text("Advance Graphic Design"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Android App Development",
                                      child: Text("Android App Development"),
                                    ),
                                    DropdownMenuItem(
                                      value: "CCNA",
                                      child: Text("CCNA"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Communicative English",
                                      child: Text("Communicative English"),
                                    ),
                                    DropdownMenuItem(
                                      value: "CompTIA A+",
                                      child: Text("CompTIA A+"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Digital Film Making",
                                      child: Text("Digital Film Making"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Digital Image Editing",
                                      child: Text("Digital Image Editing"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Digital Marketing",
                                      child: Text("Digital Marketing"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Ethical Hacking",
                                      child: Text("Ethical Hacking"),
                                    ),
                                    DropdownMenuItem(
                                      value: "JavaScript",
                                      child: Text("JavaScript"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Logo Design",
                                      child: Text("Logo Design"),
                                    ),
                                    DropdownMenuItem(
                                      value: "MikroTik",
                                      child: Text("MikroTik"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Motion Graphics",
                                      child: Text("Motion Graphics"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Professional Graphic Design",
                                      child: Text("Professional Graphic Design"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Professional Interior & Exterior Design",
                                      child: Text(
                                          "Professional Interior & Exterior Design"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Professional Web Development",
                                      child: Text("Professional Web Development"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Python",
                                      child: Text("Python"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Redhat",
                                      child: Text("Redhat"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Responsive Web Design",
                                      child: Text("Responsive Web Design"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Robotics",
                                      child: Text("Robotics"),
                                    ),
                                    DropdownMenuItem(
                                      value: "SEO & Amazon Affiliate Marketing",
                                      child: Text("SEO & Amazon Affiliate Marketing"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Social Media Marketing (SMM)",
                                      child: Text("Social Media Marketing (SMM)"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Spoken English",
                                      child: Text("Spoken English"),
                                    ),
                                    DropdownMenuItem(
                                      value: "UX/UI Design",
                                      child: Text("UX/UI Design"),
                                    ),
                                    DropdownMenuItem(
                                      value: "Windows Server",
                                      child: Text("Windows Server"),
                                    ),
                                  ],
                                )
                              ],
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

                                    borderRadius: new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)
                                ),
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
                                    borderRadius: new BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red)
                                ),
                                child: Text(
                                  "Reset",
                                  style: TextStyle(color: Colors.red),

                                ),
                                color: Colors.white,
                                //textColor: Colors.white,
                                onPressed: () => Navigator.of(context)
                                    .push(new MaterialPageRoute(builder: (context) => Registration())),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 50.0,),
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
      /* _showToast(this.name);
      _showToast(this.phone);
      _showToast(this.email);*/

      reference.push().set({
        "name": name,
        "phone": phone,
        "email": email,
        "subject": subject,
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
