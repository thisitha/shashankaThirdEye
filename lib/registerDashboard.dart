import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:third_eye_pro/main.dart';
import 'package:sizer/sizer.dart';
import 'package:third_eye_pro/studentRegistration.dart';
import 'package:third_eye_pro/vehicleRegistration.dart';

class registerDashboard extends StatefulWidget {
  @override
  _registerDashboardState createState() => _registerDashboardState();
}

class _registerDashboardState extends State<registerDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.yellow,
      ),
      //backgroundColor: Colors.yellow,
      body: Column(

        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Center(
            child: Text("Register as a",
            style: TextStyle(
              fontSize: 15.sp
            ),),
          ),
          SizedBox(height: 20.sp),
          GestureDetector(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> studentRegistration()) );
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 25.sp,
                width: 70.w,
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "Student Parent",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: Colors.white
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 5.sp,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> vehicleRegistration()));
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 25.sp,
                width: 70.w,
                color: Colors.black,
                child: Center(
                  child: Text("School Bus or Van",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp
                  ),),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }
}



