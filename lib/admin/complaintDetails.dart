import 'package:egramam/admin/validator.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class cdetails extends StatefulWidget {
  var name;
  var uuid = Uuid();
  var Meghala;
  var complaint;
//  var complaint_id;
  cdetails({this.name,this.Meghala,uuid,this.complaint});
  @override
  _cdetailsState createState() => _cdetailsState();
}

class _cdetailsState extends State<cdetails> {
  var uuid = Uuid();
  var name;
  //var Meghala;
 // var complaint_id;

  void initState() {
 //   complaint_id = uuid.v1();
    MeghalaInputcontroller.text = widget.Meghala;
    nameInputcontroller.text = widget.name;
    uuid=widget.uuid;
    complaintInputcontroller.text=widget.complaint;
  //  housenoInputcontroller.text = widget.housenumber;
  //  Meghala = widget.Meghala;
    super.initState();
  }
  TextEditingController nameInputcontroller = new TextEditingController();
  TextEditingController complaintInputcontroller = new TextEditingController();

  TextEditingController MeghalaInputcontroller = new TextEditingController();

  //var Meghala;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Complaint Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(

            children: [

              SizedBox(height: 15,),
              SizedBox(
                child: Text("Complaint"),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(15.0),
              //   child: DropdownButtonFormField<String>(
              //     value: Meghala,
              //     decoration: InputDecoration(
              //       // hintText: "Meghala",
              //       labelText: ("Area"),
              //       border: OutlineInputBorder(
              //         borderRadius: BorderRadius.circular(15),
              //       ),
              //     ),
              //     onChanged: (meghala) => setState(() => Meghala = meghala),
              //     validator: (value) => value == null ? 'field required' : null,
              //     items: [
              //       'Kottoppadam',
              //       'AB road',
              //       'CH auditorium',
              //       'School junction',
              //     ].map<DropdownMenuItem<String>>((String value) {
              //       return DropdownMenuItem<String>(
              //         value: value,
              //         child: Text(value),
              //       );
              //     }).toList(),
              //   ),
              // ),

              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: MeghalaInputcontroller,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),

                  ),
                  validator: (value) {
                    return Validate.txtvalidator(value!);
                  },
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
                  validator: (value) {
                    return Validate.txtvalidator(value!);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
