import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class viewproject extends StatefulWidget {
  var uid;
  var name;
  viewproject({this.name,this.uid});

  @override
  _viewprojectState createState() => _viewprojectState();
}

class _viewprojectState extends State<viewproject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('projects')
                .where('status',isEqualTo: 1).snapshots(),
            builder: (context, snapshot) {
              return ListView.builder(
                  itemCount:snapshot.data?.docs.length ,

                  itemBuilder: (BuildContext context, int index){
                    if(!snapshot.hasData)
                      return Center(child: (CircularProgressIndicator()));
                    else if(snapshot.data?.docs.length==0)
                      return Center(child: (Text("No data found")));
                    else
                      return  Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Card(
                          elevation: 6,
                          child: ListTile(
                            title:Text(snapshot.data!.docs[index]['Project']) ,
                           //subtitle: Text(snapshot.data!.docs[index]['Criteria']),
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
