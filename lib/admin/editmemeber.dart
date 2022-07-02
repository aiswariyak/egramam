import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egramam/admin/addmember.dart';
import 'package:egramam/admin/validator.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:date_time_picker/date_time_picker.dart';

import 'package:egramam/admin/viewfamily.dart';
import 'package:egramam/admin/viewmembers.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class editmember extends StatefulWidget {
  var id;
  var adharInputcontroller;
  bool Student;
  bool Job;
  bool Maritalstatus;
  bool Dis;
  bool Finance;
  bool Mentallychallenged;
  var UsernameInputcontroller;
  var dobInputcontroller;
  //var FamilyName;
  var housename;
  var housenumber;
  var Category;
  var Meghala;
 // var phone;
  var PhoneInputcontroller;
  var gender;
  var DIs;
  editmember({
    this.DIs,
    //this.Toilet,
    this.Meghala,
    this.adharInputcontroller,
    this.dobInputcontroller,
    this.UsernameInputcontroller,
   // this.phone,
    required this.Student,
    required this.Maritalstatus,
    required this.Job,
    required this.Dis,
    required this.Mentallychallenged,
    required this.Finance,
    this.Category,
    this.gender,
    this.id,
    this.housename,
    this.housenumber,
   this.PhoneInputcontroller,
  });
  @override
  _editmemberState createState() => _editmemberState();
}
class _editmemberState extends State<editmember> {
  TextEditingController nameInputcontroller = new TextEditingController();
 // TextEditingController PhoneInputcontroller = new TextEditingController();
  var uuid = Uuid();
 var id;
  bool Student=false;
  bool Job=false;
  bool Maritalstatus=false;
  bool Finance=false;
  bool Mentallychallenged=false;
  bool Dis=false;
 var phone;
 var DIs;
  //var viewhouse_id;
  void initState() {
    id=widget.id;
    Meghala=widget.Meghala;
    gender=widget.gender;
    Student=widget.Student;
    Job=widget.Job;
    Dis=widget.Dis;
    DIs=widget.DIs;
    Mentallychallenged=widget.Mentallychallenged;
    Finance=widget.Finance;
    Maritalstatus=widget.Maritalstatus;
    HouseInputcontroller.text=widget.housename;
    housenoInputcontroller.text=widget.housenumber;
    adharInputcontroller.text=widget.adharInputcontroller;
    dobInputcontroller.text=widget.dobInputcontroller;
    UsernameInputcontroller.text=widget.UsernameInputcontroller;
    PhoneInputcontroller.text=widget.PhoneInputcontroller;
    Category=widget.Category;
    //Ration=widget.rationcard;
    //House=widget.house;
    //Toilet=widget.toilet;
   // rationcard=widget.rtype;
  //  land=widget.landtype;
   // danimal=widget.danimaltype;
   // house=widget.housetype;
    //Water=widget.Water;
   // Road=widget.Road;
  //  Current=widget.Current;
 //   Uslswater=widget.Uslswater;
 //   Land=widget.land;
   // Danimal=widget.Danimal;
    super.initState();
  }
  TextEditingController UsernameInputcontroller = new TextEditingController();

  TextEditingController dobInputcontroller = new TextEditingController();
  TextEditingController adharInputcontroller = new TextEditingController();
  TextEditingController PhoneInputcontroller = new TextEditingController();
  TextEditingController HouseInputcontroller = new TextEditingController();
  TextEditingController housenoInputcontroller = new TextEditingController();
  TextEditingController dob =
  new TextEditingController(text: DateTime.now().toString());

  var _valueToValidate3;
  var _valueSaved3;
  var _addmemberkey = new GlobalKey<FormState>();
  var Meghala;
  var Category;
  var Types;
  var gender;
  var value;
  var House;
  var Water;
  var Road;
  var Current;
  var Uslswater;
  var land;
  var Land ;
  var LAnd;
  var danimal;
  var Danimal;
  var DAnimal;
  var val;
  var valuefirst;
  var valuesecond;
  var Ration;
  var RationCard;
  var rationcard;
  var house;
  var HOUSE;
  var Toilet;
  var TOilet;
  var toilet;

var dateob;

  // get  valuefirst => null;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Edit Member",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DropdownButtonFormField<String>(
                  value: Meghala,
                  decoration: InputDecoration(
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
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: UsernameInputcontroller,
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
              ), //name
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: PhoneInputcontroller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Phone',
                  ),
                ),
              ), //phone
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: HouseInputcontroller,
                  readOnly: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'House Name',
                  ),
                ),
              ), //house name
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: housenoInputcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'House Number',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: DropdownButtonFormField<String>(
                  value: Category,
                  decoration: InputDecoration(
                    labelText: ("Category"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onChanged: (caste) => setState(() => Category = caste),
                  validator: (value) => value == null ? 'field required' : null,
                  items: [
                    'SC',
                    'ST',
                    'OBC',
                    'OEC',
                    'General',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ), //category
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: adharInputcontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Adhar Number',
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              DateTimePicker(
                type: DateTimePickerType.date,
                //dateMask: 'yyyy/MM/dd',
                controller: dobInputcontroller,
                //initialValue: _initialValue,
                firstDate: DateTime(1800),
                lastDate: DateTime.now(),
                icon: Icon(Icons.event),
                dateLabelText: 'DOB',

                onChanged: (val) => setState(() => dateob = val),
                validator: (val) {
                  setState(() => _valueToValidate3 = val ?? '');
                  return null;
                },
                onSaved: (val) => setState(() => _valueSaved3 = val ?? ''),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 235),
                child: Text("Gender?"),
              ), //gender
              ListTile(
                leading: Radio(
                  value: "male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value as String?;
                    });
                  },
                ),
                title: Text("Male"),
              ),

              ListTile(
                leading: Radio(
                  value: "Female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value as String?;
                    });
                  },
                ),
                title: Text("Female"),
              ),

              ListTile(
                leading: Radio(
                  value: "other",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value as String?;
                    });
                  },
                ),
                title: Text("other"),
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 15,
              ),

              CheckboxListTile(
                value: Student,
                title: Text("  Are you a student?"),
                onChanged: (value) {
                  setState(() {
                    Student = value!;
                  });
                },
              ),

              CheckboxListTile(
                value: Job,
                title: Text("Do you have job?"),
                onChanged: (value) {
                  setState(() {
                    Job = value!;
                  });
                },
              ),

              // CheckboxListTile(
              //   value: Job,
              //   title: Text("  Have job?"),
              //   onChanged: (value) {
              //     setState(() {
              //       Job = value!;
              //     });
              //   },
              // ),

              // Job == true
              //     ? DropdownButtonFormField<String>(
              //         value: JOb,
              //         decoration: InputDecoration(
              //           labelText: ("Job"),
              //           border: OutlineInputBorder(
              //             borderRadius: BorderRadius.circular(30),
              //           ),
              //         ),
              //         onChanged: (job) => setState(() => JOb = job),
              //         validator: (value) =>
              //             value == null ? 'field required' : null,
              //         items: [
              //           'Upto 7th',
              //           'SSLC',
              //           'PLUS TWO',
              //           'GRADUATED',
              //         ].map<DropdownMenuItem<String>>((String value) {
              //           return DropdownMenuItem<String>(
              //             value: value,
              //             child: Text(value),
              //           );
              //         }).toList(),
              //       )
              //     : Text("NO"),
              CheckboxListTile(
                value: Dis,
                title: Text(" Do you have any diseases?"),
                onChanged: (value) {
                  setState(() {
                    Dis = value!;
                  });
                },
              ),

              Dis == true
                  ? DropdownButtonFormField<String>(
                value: DIs,
                decoration: InputDecoration(
                  labelText: ("Diseases"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: (dis) => setState(() => DIs = dis),
                validator: (value) =>
                value == null ? 'field required' : null,
                items: [
                  'Cancer',
                  'Heart patient',
                  'Kidney patient',
                  'Liver cerosis',
                  'Life style diseses',
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              )
                  : Text("NO"),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 15,
              ),

              CheckboxListTile(
                value: Maritalstatus,
                title: Text("Marital status"),
                onChanged: (value) {
                  setState(() {
                    Maritalstatus = value!;
                  });
                },
              ),

              SizedBox(
                height: 15,
              ),

              CheckboxListTile(
                value: Finance,
                title: Text("Do you have financial crisis?"),
                onChanged: (value) {
                  setState(() {
                    Finance = value!;
                  });
                },
              ),

              SizedBox(
                height: 15,
              ),

              CheckboxListTile(
                value: Mentallychallenged,
                title: Text(
                    "Is there any mentally challenged persond in your family?"),
                onChanged: (value) {
                  setState(() {
                    Mentallychallenged = value!;
                  });
                },
              ),

              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 25,
              ),

              // ElevatedButton(
              //   onPressed: () {
              //
              //
              //
              //
              //
              //
              //     Navigator.pushReplacement(context,
              //         MaterialPageRoute(builder: (context) => addmember()));
              //   },
              //   child: Text(
              //     "Add",
              //     style: TextStyle(fontWeight: FontWeight.bold),
              //   ),
              //   style: ElevatedButton.styleFrom(
              //     primary: Color(0xff880e4f),
              //     onPrimary: Colors.white,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10)),
              //   ),
              // ),
              SizedBox(
                height: 25,
              ),
              ElevatedButton(
                onPressed: () {
                  var memberId;
                  FirebaseFirestore.instance
                      .collection('Members')
                      .doc(memberId)
                      .set({
                    'id': memberId,
                    'Meghala': widget.Meghala,
                    'Membername': UsernameInputcontroller.text,
                    'housename': widget.housename,
                    'housenumber': widget.housenumber,
                    'category': widget.Category,
                    'adhar': adharInputcontroller.text,
                    'dob': dobInputcontroller.text,
                    'gender': gender,
                    'student': Student,
                    'job': Job,
                    'disease': Dis,
                    'diseasetype':DIs,
                    'marital': Maritalstatus,
                    'finance': Finance,
                    'mentallychallenged': Mentallychallenged,
                    'status': 1,
                    'date': DateTime.now(),
                    'phone':PhoneInputcontroller.text,
                  }).then((value) {
                    Navigator.pop(context);
                    // Navigator.pushReplacement(context,
                    //     MaterialPageRoute(builder: (context) => addmember()));
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
              // ElevatedButton(
              //   onPressed: () {
              //     FirebaseFirestore.instance
              //         .collection('Members')
              //         .doc(member_id)
              //         .set({
              //       'id': member_id,
              //
              //       'Meghala': widget.Meghala,
              //       'Membername': UsernameInputcontroller.text,
              //       'housename': widget.housename,
              //       'housenumber': widget.housenumber,
              //       'category': widget.Category,
              //       'adhar': adharInputcontroller.text,
              //       'dob': dobInputcontroller.text,
              //       'gender': gender,
              //       'student': Student,
              //       'job': Job,
              //       'disease': Dis,
              //       'marital': Maritalstatus,
              //       'finance': Finance,
              //       'mentallychallenged': Mentallychallenged,
              //       //  'housenumber':housenoInputcontroller.text,
              //       'status': 1,
              //       'date': DateTime.now(),
              //     }).then((value) {
              //       //Navigator.pop(context);
              //       Navigator.pushReplacement(context,
              //          MaterialPageRoute(builder: (context) => addmember()));
              //     });
              //    // Navigator.pushReplacement(context,
              //        // MaterialPageRoute(builder: (context) => addmember()));
              //   },
              //   child: Text("Add"),
              //   style: ElevatedButton.styleFrom(
              //     primary: Color(0xff880e4f),
              //     onPrimary: Colors.white,
              //     shape: RoundedRectangleBorder(
              //         borderRadius: BorderRadius.circular(10)),
              //   ),
              // )
            ],
          ),
        ),



      ),
      //
    );
  }
}
