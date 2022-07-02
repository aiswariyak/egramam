import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:egramam/admin/complaintDetails.dart.dart';
import 'complaintDetails.dart';

class viewcomplaint extends StatefulWidget {
  @override
  _viewcomplaintState createState() => _viewcomplaintState();
}

class _viewcomplaintState extends State<viewcomplaint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "View Complaints",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child:  StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance.collection('Complaint')
              .where('status',isEqualTo: 1).snapshots(),
          builder: (context, snapshot) {
            if(!snapshot.hasData)
              return Center(child: (CircularProgressIndicator()));
            else if(snapshot.data?.docs.length==0)
              return Center(child: (Text("No data found")));
            else
            return ListView.builder(
              itemCount:snapshot.data?.docs.length ,

                itemBuilder: (BuildContext context, int index){

                  return  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Card(
                      elevation: 6,
                      child: ListTile(



                       title:Text(snapshot.data!.docs[index]['complaint']) ,
                   subtitle:Text(snapshot.data!.docs[index]['name']) ,


                    onTap: (){
                           Navigator.pushReplacement(context,
                             MaterialPageRoute(builder: (context) => cdetails(
                               name:snapshot.data!.docs[index]['name'],
                               complaint: snapshot.data!.docs[index]['complaint'],
                               Meghala: snapshot.data!.docs[index]['Meghala'],
                              // complaint_id: snapshot.data!.docs[index]['id'],
                               uuid: snapshot.data!.docs[index]['uid'],
                             )));
                    },

                     //   subtitle: Text(""),

                   ),
                    ),
                  );
                }
            );
          }
        ),
      ),
    );
  }
}
