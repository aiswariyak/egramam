import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'findcategory.dart';
import 'findhouse.dart';
import 'findpatient.dart';

class fpatient extends StatefulWidget {
  @override
  _fpatientState createState() => _fpatientState();
}

class _fpatientState extends State<fpatient> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Sort by disease types",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                  height: 52,
                  width: MediaQuery.of(context).size.width * 0.50,
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => findpatient(disease:'Cancer')));
                    },
                    child: Text(
                      "Cancer",
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
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => findpatient(disease: 'Heart patient',)));
                    },
                    child: Text(
                      "Heart patient",
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
                    onPressed: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => findpatient(disease: 'Kidney patient',)));
                    },
                    child: Text(
                      "Kidney patient",
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
                    onPressed: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => findpatient(disease: 'Liver cerosis',)));
                    },
                    child: Text(
                      "Liver cerosis",
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
                    onPressed: (){
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => findpatient(disease: 'Life style diseases',)));
                    },
                    child: Text(
                      "Life style diseases",
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
            ],
          ),
        ),
      ),
    );
  }
}
