import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ffinance extends StatefulWidget {

  @override
  _ffinanceState createState() => _ffinanceState();
}

class _ffinanceState extends State<ffinance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('Members')
                .where('status',isEqualTo: 1).where('finance',isEqualTo: true).snapshots(),
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



                            title:Text(snapshot.data!.docs[index]['Membername']) ,
                            subtitle:Text(snapshot.data!.docs[index]['housename']) ,


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
