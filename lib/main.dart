

import 'dart:async';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:third_eye_pro/registerDashboard.dart';
import 'package:third_eye_pro/studentLive.dart';
import 'package:third_eye_pro/userDashboard.dart';

void main(){
  runApp(myApp());
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Third Eye Pro',
          theme: ThemeData.light(),
          home: splachScreen() ,
        );
      },
    );
  }
}

class splachScreen extends StatefulWidget {
  @override
  _splachScreenState createState() => _splachScreenState();
}

class _splachScreenState extends State<splachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
        ()=>{
        Navigator.push(context, MaterialPageRoute(builder: (context) => registerDashboard()))
        }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.orange,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Text("Splash Screen"),
          )
        ],
      ),
    );
  }
}



