import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'findcategory.dart';

class fcategory extends StatefulWidget {
  @override
  _fcategoryState createState() => _fcategoryState();
}

class _fcategoryState extends State<fcategory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Find category",
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

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => findcategory(category: 'SC',)));
                    },
                    child: Text(
                      "SC",
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
                          MaterialPageRoute(builder: (context) => findcategory(category: 'ST',)));
                    },
                    child: Text(
                      "ST",
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
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => findcategory(category: 'OBC',)));
                },
                    child: Text(
                      "OBC",
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
                          MaterialPageRoute(builder: (context) => findcategory(category: 'OEC',)));
                    },
                    child: Text(
                      "OEC",
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
                          MaterialPageRoute(builder: (context) => findcategory(category: 'GENERAL',)));
                    },
                    child: Text(
                      "GENERAL",
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
