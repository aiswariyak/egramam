import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'findcategory.dart';
import 'findhouse.dart';

class fhouse extends StatefulWidget {
  @override
  _fhouseState createState() => _fhouseState();
}

class _fhouseState extends State<fhouse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Find housetype",
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
              Container(
                height: 52,
                width: MediaQuery.of(context).size.width * 0.50,
                child: ElevatedButton(
                  onPressed: () {

                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => findhouse(house:'Yes')));
                  },
                  child: Text(
                    "Have house",
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
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => findhouse(house: 'No',)));
                  },
                  child: Text(
                    "Don't have house",
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
                  onPressed: (){
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => findhouse(house: 'Repairing',)));
                  },
                  child: Text(
                    "Repairing",
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

            ],
          ),
        ),
      ),
    );
  }
}
