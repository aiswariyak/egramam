import 'package:egramam/admin/find%20members.dart';
import 'package:egramam/admin/projects.dart';
import 'package:egramam/admin/complaint.dart';
import 'package:egramam/admin/viewfamily.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'addfamily.dart';
import 'complaintview.dart';
import 'loginpage.dart';

class admindash extends StatefulWidget {
  const admindash({Key? key}) : super(key: key);

  @override
  _admindashState createState() => _admindashState();
}

class _admindashState extends State<admindash> {
  List<String> names = [
    "Add Family",
    "View family",
    "Find Members",
    "Projects",
    "View Complaints",
  ];
  var screen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
        appBar: AppBar(
          backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
          title: Text(
            "Admin dash board",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          actions: [
            GestureDetector(
                onTap: () {
                  FirebaseAuth.instance.signOut().then((value) =>
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => LoginPage())));
                },
                child: Icon(Icons.logout)),
          ],
        ),
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                    height: 600,
                    width: 317,
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                        ),
                        itemCount: 5,
                        itemBuilder: (BuildContext context, int Index) {
                          return GestureDetector(
                            onTap: () {
                              if (Index == 0) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => addfamily()));
                              } else if (Index == 1) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => viewfamily()));
                              } else if (Index == 2) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => findmembers()));
                              } else if (Index == 3) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => projects()));
                              } else if (Index == 4) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => viewcomplaint()));
                              }
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30.0),
                                  color: Color(0xffc5e1a5)), //0xffbcaaa4
                              child: Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Center(
                                  child: Text(
                                    names[Index],
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          );
                        })),
              ),
            ],
          ),
        )));
  }
}
