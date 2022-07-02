import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egramam/admin/editmemeber.dart';
import 'package:flutter/material.dart';

import 'addmember.dart';

class viewmember extends StatefulWidget {
 var FamilyName;
// var phone;
  var Membername;
  var housenumber;
  var housename;
  var Category;
  var Meghala;
  // var rtype;
  // var landtype;
  // var danimaltype;
  // var housetype;
  viewmember({
    // this.rtype,
    // this.landtype,
    // this.danimaltype,
    // this.housetype,
    this.FamilyName,
   // this.phone,
    this.Meghala,
    this.Membername,
    this.housename,
    this.housenumber,
    this.Category,
  });
  @override
  _viewmemberState createState() => _viewmemberState();
}

class _viewmemberState extends State<viewmember> {
  var gender;
  var STudent;
  bool Student = false;
  var student;
  bool Maritalstatus = false;
  bool Finance = false;
  var job;
  bool Job = false;
  var JOb;
  bool Ration = false;
  var RationCard;
  var rationcard;
  bool Mentallychallenged = false;
  bool Dis = false;
  var DIs;
  var dis;
  var rtype;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8),
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "View Members",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => addmember(
                    Membername:widget.Membername,
                     // phone:widget.phone,
                        housenumber: widget.housenumber,
                        housename: widget.housename,
                        Category: widget.Category,
                        Meghala: widget.Meghala,
                      )));
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance
                .collection('Members')
                .where('status', isEqualTo: 1)
            .where('housename',isEqualTo:widget.housename)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData)
                return Center(child: (CircularProgressIndicator()));
              else if (snapshot.data?.docs.length == 0)
                return Center(child: (Text("No data found")));
              else {
                return ListView.builder(
                  itemCount: snapshot.data?.docs.length,
                  itemBuilder: (BuildContext context, int index) {

                      return Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          elevation: 6,
                          child: ListTile(
                            title:
                                Text(snapshot.data!.docs[index]['Membername']),

                            subtitle:
                                Text(snapshot.data!.docs[index]['housename']),
                            trailing:   GestureDetector(
                                onTap: (){

                                  shwalertdialg(context,snapshot.data!.docs[index]['id']);

                                  // FirebaseFirestore.instance.collection('Members')
                                  //     .doc(snapshot.data!.docs[index]['id']).update({'status':0});
                                },
                                child: Icon(Icons.delete)),
                            onTap: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) =>editmember(
                                    id:snapshot.data!.docs[index]['id'],
                                    dobInputcontroller: snapshot.data!.docs[index]['dob'],
                                    housename:snapshot.data!.docs[index]['housename'] ,
                                    Meghala:snapshot.data!.docs[index]['Meghala'],
                                    Category:snapshot.data!.docs[index]['category'],
                                    housenumber:snapshot.data!.docs[index]['housenumber'],
                                    Maritalstatus: snapshot.data!.docs[index]['marital'],
                                    adharInputcontroller:snapshot.data!.docs[index]['adhar'],
                                    Mentallychallenged: snapshot.data!.docs[index]['mentallychallenged'],
                                    Job: snapshot.data!.docs[index]['job'],
                                    gender: snapshot.data!.docs[index]['gender'],
                                    Student: snapshot.data!.docs[index]['student'],
                                    Finance:snapshot.data!.docs[index]['finance'],
                                    Dis:snapshot.data!.docs[index]['disease'],
                                    DIs: snapshot.data!.docs[index]['diseasetype'],
                                    UsernameInputcontroller:snapshot.data!.docs[index]['Membername'],
                                  PhoneInputcontroller:snapshot.data!.docs[index]['phone'],
                                 //   DIs:snapshot.data!.docs[index]['d']
                                    //Toilet:snapshot.data!.docs[index]['toilet'],

                                  )));
                            },
                          ),
                        ),
                      );
                  });
              }
            }),
      ),
    );
  }
  // _showsnackbar(BuildContext context,String value)//if use "_" infront of fn,it wil be private fn
  // {
  //   //select the name and right click,then refactor ,for new name ,fully change all other same fn
  //   ScaffoldMessenger.of(context).showSnackBar(
  //     SnackBar(content: Text(value),
  //       backgroundColor: Colors.deepOrange,
  //     ),
  //   );
  // }
  shwalertdialg(BuildContext context,var id){

    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text("Alert!!!"),
            content: Text("Are you sure"),
            actions: [
              TextButton(
                onPressed: () {
                  FirebaseFirestore.instance.collection('Members')
                      .doc(id).update({'status':0}).then((value) => Navigator.pop(context));
                }, child: Text("ok"),

              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                }, child: Text("Cancel"),

              ),
            ],
          );
        }
    );
  }

}
