import 'package:flutter/material.dart';
import 'Main_Pages.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'color_helper.dart';



class Splash_Screen extends StatefulWidget {


  @override
  _Splash_ScreenState createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Main_App()));
    });
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
   /*     height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,*/
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(

                padding: EdgeInsets.only(bottom:(MediaQuery.of(context).size.height/3.0))  ,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Container(
                      height: 116.0, //// USE THIS FOR THE MATCH WIDTH AND HEIGHT
                      width: 86.0,
                      child: Image.asset("assets/logo.png", fit: BoxFit.fill),


                    ),



                  ],
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(

                child: TextLiquidFill(
                  boxWidth: double.infinity,
                  boxHeight: 50.0,
                  text: 'LOADING...',
                  waveColor: Color(Helper.getHexToInt("e50000")),
                  boxBackgroundColor: Colors.transparent,
                  textStyle: TextStyle(
                    fontSize: 10.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),



        ],
      ),
    );
  }
}
