

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egramam/admin/validator.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'complaintDetails.dart';
class Complaint extends StatefulWidget {
  var uid;
  var name;
  var Meghala;
  Complaint({this.Meghala,this.name,this.uid});
  @override
  _ComplaintState createState() => _ComplaintState();
}

class _ComplaintState extends State<Complaint> {
  TextEditingController nameInputcontroller = new TextEditingController();
  TextEditingController complaintInputcontroller = new TextEditingController();
  var uuid = Uuid();
  var Meghala;
var complaint_id;
void initState(){
  complaint_id=uuid.v1();
  super.initState();
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Complaint",
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
                child: Text("Complaint"),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DropdownButtonFormField<String>(
                  value: Meghala,
                  decoration: InputDecoration(
                    // hintText: "Meghala",
                    labelText: ("Area"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onChanged: (meghala) => setState(() => Meghala = meghala),
                  validator: (value) => value == null ? 'field required' : null,
                  items: [
                    'Kottoppadam',
                    'AB road',
                    'CH auditorium',
                    'School junction',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: nameInputcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    return Validate.txtvalidator(value!);
                  },
                ),
              ),


              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                controller:  complaintInputcontroller,
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

                  FirebaseFirestore.instance.collection('Complaint').doc(complaint_id).set({
                    //'id':complaint_id,
                    'uid':widget.uid,
                    'name':nameInputcontroller.text,
                    'complaint':complaintInputcontroller.text,
                    'Meghala':Meghala,
                    'status':1,
                    'date':DateTime.now(),
                  }).then((value) {

                    if (Meghala != null )

                    Navigator.pop(context);
                  });
                },
                child: Text(
                  "Submit",
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
