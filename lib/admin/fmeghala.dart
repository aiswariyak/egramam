import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'findcategory.dart';
import 'findmeghala.dart';

class fmeghala extends StatefulWidget {
  @override
  _fmeghalaState createState() => _fmeghalaState();
}

class _fmeghalaState extends State<fmeghala> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Find Area",
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
                          MaterialPageRoute(builder: (context) => findmeghala(Meghala: 'Kottoppadam',)));
                    },
                    child: Text(
                      "Kottoppadam",
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
                          MaterialPageRoute(builder: (context) => findmeghala(Meghala: 'AB road',)));
                    },
                    child: Text(
                      "AB road",
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
                          MaterialPageRoute(builder: (context) => findmeghala(Meghala: 'CH auditorium',)));
                    },
                    child: Text(
                      "CH auditorium",
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
                          MaterialPageRoute(builder: (context) => findmeghala(Meghala:'School junction')));
                    },
                    child: Text(
                      "School junction",
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
