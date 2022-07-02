import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egramam/admin/editfamily.dart';
import 'package:egramam/admin/viewmembers.dart';
import 'package:flutter/material.dart';
import 'addmember.dart';
class viewfamily extends StatefulWidget {
  @override
  _viewfamilyState createState() => _viewfamilyState();
}

class _viewfamilyState extends State<viewfamily> {
  bool House=false;
  var house;
  var HOUSE;
  var LAnd;
  var Meghala;
  var Category;

  var FamilyName;
  var Types;
  var value;
 // var House ;
  bool Water=false ;
  bool Road=false;
  bool Current=false;
   bool Uslswater=false;
  var land;
  bool Land=false ;
 // var LAnd;
  var danimal;
  bool Danimal=false;
  var DAnimal;

  var val;
  var valuefirst;
  var valuesecond;
  bool Ration=false;
  var RationCard;
  var rationcard;
 // var house;
 // var HOUSE;
  bool Toilet=false;
  var TOilet;
  var toilet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "View Family",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child:  StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('family')
                .where('status',isEqualTo: 1).snapshots(),
            builder: (context, snapshot) {
              if(!snapshot.hasData)
                return Center(child: (CircularProgressIndicator()));
              else if(snapshot.data?.docs.length==0)
                return Center(child: (Text("No data found")));
              else {
                return ListView.builder(
                  itemCount:snapshot.data?.docs.length ,

                  itemBuilder: (BuildContext context, int index){

                      return  Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          elevation: 6,
                          child: ListTile(
                            title:Text(snapshot.data!.docs[index]['FamilyName']) ,
                           subtitle:Text(snapshot.data!.docs[index]['housename']) ,
                            trailing:   GestureDetector(
                                onTap: (){

                                  shwalertdialg(context,snapshot.data!.docs[index]['uid']);

                                },
                                child: Icon(Icons.delete)),


                            onTap: (){
                             Navigator.push(context,
                                 MaterialPageRoute(builder: (context) =>editfamily(
                                   uid:snapshot.data!.docs[index]['uid'],
                                   housename:snapshot.data!.docs[index]['housename'] ,
                                   Meghala:snapshot.data!.docs[index]['Meghala'],
                                   Category:snapshot.data!.docs[index]['Category'],
                                   housenumber:snapshot.data!.docs[index]['housenumber'],
                                   FamilyName:snapshot.data!.docs[index]['FamilyName'],
                                  Land:snapshot.data!.docs[index]['land'],
                                  RationCard:snapshot.data!.docs[index]['rtype'],
                                   LAnd:snapshot.data!.docs[index]['landtype'],
                                   DAnimal:snapshot.data!.docs[index]['danimaltype'],
                                   HOUSE:snapshot.data!.docs[index]['housetype'],
                                   Uslswater:snapshot.data!.docs[index]['uselesswater'],
                                  Water:snapshot.data!.docs[index]['water'],
                                   Road:snapshot.data!.docs[index]['road'],
                                   Current:snapshot.data!.docs[index]['electricity'],
                                   Danimal:snapshot.data!.docs[index]['domesticanimal'],
                                   phone:snapshot.data!.docs[index]['phone'],
                                   Toilet:snapshot.data!.docs[index]['toilet'],
                                   House:snapshot.data!.docs[index]['house'],
                                   Ration: snapshot.data!.docs[index]['rstatus'],


                                 ))
                             );
                           },


                          ),
                        ),
                      );
                  }
              );
              }
            }
        ),
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
  shwalertdialg(BuildContext context,var uid){

    return showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text("Alert!!!"),
            content: Text("Are you sure"),
            actions: [
              TextButton(
                onPressed: () {
                  FirebaseFirestore.instance.collection('family')
                      .doc(uid).update({'status':0}).then((value) => Navigator.pop(context));
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
