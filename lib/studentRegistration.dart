import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:third_eye_pro/userDashboard.dart';
import 'package:http/http.dart' as http;

class studentRegistration extends StatefulWidget {
  @override
  _studentRegistrationState createState() => _studentRegistrationState();
}
TextEditingController studentNameController = new TextEditingController();
TextEditingController studentParentNameController = new TextEditingController();
TextEditingController studentParentMobileController = new TextEditingController();
TextEditingController studentparentEmailController = new TextEditingController();
TextEditingController studentHomeAddressController = new TextEditingController();
TextEditingController studentSVController =  new TextEditingController();
TextEditingController studentParentWorkplaceController =  new TextEditingController();
TextEditingController studentVVController = new TextEditingController();
TextEditingController studentSchoolController = new TextEditingController();
TextEditingController studentAgeController = new TextEditingController();
class _studentRegistrationState extends State<studentRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
                  studentRegForm(),

            ]
        ),
      )
    );
  }
}


class studentRegForm extends StatefulWidget {
  @override
  _studentRegFormState createState() => _studentRegFormState();
}

class _studentRegFormState extends State<studentRegForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            "Student Registration",
            style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentNameController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Student Name",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentParentNameController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Parent Name",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentParentMobileController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Parent Mobile",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(

          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentparentEmailController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Parent Email",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentHomeAddressController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Home Address",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentSVController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "School Verification Code",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentParentWorkplaceController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Workplace Address",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentSchoolController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "School",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: studentAgeController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Age",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        GestureDetector(
          onTap: () {
            registerStudent(context);
            // Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //         builder: (context) => vehicleRegistration2()));
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              height: 20.sp,
              width: 30.w,
              color: Colors.black,
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 12.sp, color: Colors.white),
                ),
              ),
            ),
          ),
        ),

      ],
    );

  }
}


registerStudent(context) async {
  var data ={
    "student_name":studentNameController.text,
    "parent_name":studentParentNameController.text,
    "parent_mobile": studentParentMobileController.text,
    "parent_email": studentparentEmailController.text,
    "home_address": studentHomeAddressController.text,
    "workplace_address":studentParentWorkplaceController.text,
    "school": studentSchoolController.text,
    "age" : studentAgeController.text
  };
  //if(studentNameController.text.isNotEmpty||studentDobController.text.isNotEmpty){
    final regStudentResponse =await http.post(Uri.parse("https://shashanka.codeplait.net/kigston/api/register-student.php"),
        headers:<String,String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(data)
    );
    print(jsonEncode(data));
 if (regStudentResponse.statusCode == 200) {

   Navigator.push(context, MaterialPageRoute(builder: (context)=>userDashboard()));
   }


}

dataError(context) {
  const snackBar = SnackBar(
    content: Text('Please Fill Out All The Fields'),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}