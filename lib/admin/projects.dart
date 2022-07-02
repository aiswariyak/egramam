
import'package:egramam/admin/viewfamily.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class projects extends StatefulWidget {
  var uid;
  var name;
  projects({this.name,this.uid});

  @override
  _projectsState createState() => _projectsState();
}

class _projectsState extends State<projects> {
  var uuid=Uuid();
  var viewproject_id;
  void initState(){
    viewproject_id=uuid.v1();
    super.initState();
  }
  TextEditingController projectInputcontroller = new TextEditingController();
  TextEditingController eligibilityInputcontroller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "projects",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child:SingleChildScrollView(
          child: Column(
            children: [
          SizedBox(height: 15,),
              SizedBox(
                child: Text("Project Details"),
              ),
            TextFormField(
              controller:  projectInputcontroller,
              maxLines: 5,
              keyboardType: TextInputType.multiline,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
              SizedBox(
                child: Text("Eligibility criteria"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller:  eligibilityInputcontroller,
                  maxLines: 5,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),

              ElevatedButton(
                onPressed: () {

                  FirebaseFirestore.instance.collection('projects').doc(viewproject_id).set({
                    'id':viewproject_id,
                    'uid':widget.uid,
                    'name':widget.name,
                    'Project':projectInputcontroller.text,
                   //'Eligibility':eligibilityInputcontroller.text,
                    //'Criteria':eligibilityInputcontroller.text,
                    'status':1,
                    'date':DateTime.now(),
                  }).then((value) {
                    print("Added");
                    Navigator.pop(context);
                  });
                },
                child: Text(
                  "Publish",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff880e4f),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ],
          ),
        ) ,
      ),
    );
  }
}
