import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:intl/intl.dart';
import 'package:third_eye_pro/userDashboard.dart';
import 'package:http/http.dart' as http;

class vehicleRegistration extends StatefulWidget {
  @override
  _vehicleRegistrationState createState() => _vehicleRegistrationState();
}
TextEditingController vehicleMobileController = new TextEditingController();
TextEditingController vehicleNameController =  TextEditingController();
TextEditingController vehicleEmailController = TextEditingController();
TextEditingController vehicleAgeController = TextEditingController();
TextEditingController vehicleNicController = TextEditingController();
TextEditingController vehicleGenderController = TextEditingController();
TextEditingController vehicleAddressController = TextEditingController();
TextEditingController vehicleTypeController = TextEditingController();
TextEditingController vehicleRegController = TextEditingController();
TextEditingController vehicleTransportController = TextEditingController();
TextEditingController vehicleServicingSController = TextEditingController();
TextEditingController vehicleDeviceVController = TextEditingController();
class _vehicleRegistrationState extends State<vehicleRegistration> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            registrationForm(),
            SizedBox(height: 10.sp),
            GestureDetector(
              onTap: () {
                registerVehicle(context);
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //           builder: (context) => vehicleRegistration2()));
              //
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
            SizedBox(height: 20.sp,)
          ],
        ),
      ),
    );
  }
}

class registrationForm extends StatefulWidget {
  @override
  _registrationFormState createState() => _registrationFormState();
}

class _registrationFormState extends State<registrationForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Center(
          child: Text(
            "Vehicle"
                " Registration",
            style: TextStyle(
                fontSize: 15.sp,
                color: Colors.black
            ),
          ),
        ),
        SizedBox(height: 30.sp,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleMobileController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Mobile Number",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleNameController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Name",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleEmailController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleAgeController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Age",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleGenderController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Gender",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleAddressController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Address",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleTypeController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Vehicle Type ",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleRegController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Vehicle Registration Number",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleTransportController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "School Transport Reg Number",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleServicingSController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Servicing School",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: vehicleNicController,
            style: TextStyle(),
            decoration: InputDecoration(
                labelText: "Nic",
                labelStyle: TextStyle(color: Colors.black, fontSize: 10.sp),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.black))),
          ),
        ),

      ],
    );
  }
}
registerVehicle(context) async {
  var data ={
    "vehicle_no":vehicleRegController.text,
    "vehicle_type":vehicleTypeController.text,
    "transport_register_no": vehicleTransportController.text,
    "servicing_school_list": vehicleServicingSController.text,
    "mobile_no": vehicleMobileController.text,
    "owner_name":vehicleNameController.text,
    "email": vehicleEmailController.text,
    "age": vehicleAddressController.text,
    "gender": vehicleGenderController.text,
    "owner_address": vehicleAddressController.text,
    "nic" : vehicleNicController.text
  };
  //if(studentNameController.text.isNotEmpty||studentDobController.text.isNotEmpty){
  final regStudentResponse =await http.post(Uri.parse("https://shashanka.codeplait.net/kigston/api/register-vehicle.php"),
      headers:<String,String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data)
  );
  print(jsonEncode(data));
  if (regStudentResponse.statusCode == 200) {
    registerSuccess(context);
  print(regStudentResponse.body.toString());
  }
  // }else{
  //   dataError(context);
  // }

}
registerSuccess(context) {
  const snackBar = SnackBar(
    content: Text('Registration Success'),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}