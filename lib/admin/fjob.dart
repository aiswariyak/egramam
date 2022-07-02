import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class fjob extends StatefulWidget {

  @override
  _fjobState createState() => _fjobState();
}

class _fjobState extends State<fjob> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Find jobless people",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child:  StreamBuilder<QuerySnapshot>(
            stream: FirebaseFirestore.instance.collection('Members')
                .where('status',isEqualTo: 1).where('job',isEqualTo: true).snapshots(),
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
