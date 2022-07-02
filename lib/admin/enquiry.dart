import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class enquiry extends StatefulWidget {
  var name;
  var uid;
  enquiry({this.name,this.uid});
  @override
  _enquiryState createState() => _enquiryState();
}

class _enquiryState extends State<enquiry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Enquiry",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("Contact number:6238308499"),
              Row(
                children: [
                   GestureDetector(
                     onTap: (){

                       launch('whatsapp://send?phone=+917994065068');

                     },
                       child: Icon(Icons.textsms)),
                  SizedBox(width: 50,),
                  GestureDetector(
                      onTap: (){
                        launch('tel:6238308499');

                      },
                      child: Icon(Icons.call)),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
