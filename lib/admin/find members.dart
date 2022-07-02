import 'package:egramam/admin/fhouse.dart';
import 'package:egramam/admin/fjob.dart';
import 'package:egramam/admin/fladies.dart';
import 'package:flutter/material.dart';

import 'fcategory.dart';
import 'ffinance.dart';
import 'fmeghala.dart';
import 'fpatient.dart';
import 'fstudent.dart';
import 'ftoilet.dart';

class findmembers extends StatefulWidget {
  @override
  _findmembersState createState() => _findmembersState();
}

class _findmembersState extends State<findmembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Find Members ",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 25,
              ),
              Center(
                child: Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: ElevatedButton(
                    onPressed: () {


                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => fstudent()));
                    },
                    child: Text(
                      "Student",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff880e4f),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.50,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context,
                        MaterialPageRoute(builder: (context) => fjob()));
                  },
                  child: Text(
                    "Job",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff880e4f),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.50,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context,
                      MaterialPageRoute(builder: (context) => fhouse()));
                  },
                  child: Text(
                    "House",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff880e4f),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.50,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.push(context,
                    MaterialPageRoute(builder: (context) => fladies()));
                  },
                  child: Text(
                    "Ladies",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff880e4f),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => fmeghala()));
                  },
                  child: Text(
                    "Meghala",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff880e4f),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                       MaterialPageRoute(builder: (context) => fpatient()));
                  },
                  child: Text(
                    "Patient",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff880e4f),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ftoilet()));
                  },
                  child: Text(
                    "Toilet",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff880e4f),
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ffinance()));
                    },
                    child: Text(
                      "Financial crisis",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff880e4f),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: ElevatedButton(
                    onPressed: () {



                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => fcategory()));
                    },
                    child: Text(
                      "Category",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff880e4f),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
