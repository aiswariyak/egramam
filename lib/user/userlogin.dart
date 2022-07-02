import 'package:egramam/admin/addfamily.dart';
import 'package:egramam/admin/complaint.dart';
import 'package:egramam/admin/enquiry.dart';
import 'package:egramam/admin/loginpage.dart';
import 'package:egramam/admin/projects.dart';
import 'package:egramam/admin/projectview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class userlogin extends StatefulWidget {
  var uid;
  var name;


  userlogin({Key? key,this.uid,this.name}):super(key:key);
  @override
  _userloginState createState() => _userloginState();
}

class _userloginState extends State<userlogin> {
  List<String> name = [
    "Add family",
    "Complaints",
    "Projects",
    "Enquiry",
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "User Dashboard",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
       actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
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
                        itemCount: 4,
                        itemBuilder: (BuildContext context, int Index) {
                          return GestureDetector(
                            onTap: () {
                              if (Index == 0) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => addfamily(uid: widget.uid,FamilyName:widget.name)));
                              }
                              else if (Index == 1) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Complaint(uid: widget.uid,name: widget.name,)));
                              }
                              else if (Index == 2) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>viewproject(uid: widget.uid,name: widget.name,) ));
                              }
                              else if (Index == 3) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>enquiry(uid: widget.uid,name: widget.name,) ));
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
                                    name[Index],
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
        ),
      ),
    );
  }
}
