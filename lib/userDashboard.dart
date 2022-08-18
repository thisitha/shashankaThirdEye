import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:third_eye_pro/studentLive.dart';

class userDashboard extends StatefulWidget {
  @override
  _userDashboardState createState() => _userDashboardState();
}

class _userDashboardState extends State<userDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        leading: Container(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
          width: 20.h,
          height: 20.h,

          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                // fit: BoxFit.fill,
                  image:
                  new NetworkImage("https://shashanka.codeplait.net/kigston/assets/img/dummy-profile.png")

              ))),
         Text("Thisitha Kavinda",
         style: TextStyle(
           fontSize: 15.sp
         ),),
         SizedBox(height: 30.sp,),

         Center(
           child: ClipRRect(
             borderRadius: BorderRadius.circular(20),
             child: Container(
               height: 40.sp,
               width: 90.w,
               decoration: BoxDecoration(
                 color: Colors.orange
               ),
               child: Center(child: Text("location",)
               ),
             ),
           ),
         ),
          SizedBox(height: 10.sp,),

          GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>liveFeed()));
                },
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 40.sp,
                  width: 90.w,
                  decoration: BoxDecoration(
                      color: Colors.orange
                  ),
                  child: Center(
                    child: Text("Live Feed"),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.sp,),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 40.sp,
                width: 90.w,
                decoration: BoxDecoration(
                    color: Colors.orange
                ),
                child: Center(
                  child: Text("Messages"),
                ),
              ),
            ),
          ),
          SizedBox(height: 10.sp,),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 40.sp,
                width: 90.w,
                decoration: BoxDecoration(
                    color: Colors.orange
                ),
                child: Center(
                  child: Text("Profile"),
                ),
              ),

            ),
          )
        ],
      ),
    );
  }
}

