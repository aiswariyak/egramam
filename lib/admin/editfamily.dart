import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egramam/admin/addmember.dart';
import 'package:egramam/admin/validator.dart';
import 'package:egramam/admin/viewfamily.dart';
import 'package:egramam/admin/viewmembers.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import 'addfamily.dart';

class editfamily extends StatefulWidget {
  var uid;
  var FamilyName;
  //var Membername;
  var housename;
  var housenumber;
  var Category;
  var Meghala;
  var phone;
  //var rationcard;
 // var house;
 // var toilet;
 // var water;
  //var road;
  //var current;
//  var uslswater;
// var land;
  bool Land;
 // var danimal;
  //var rtype;
  //var landtype;
 // var danimaltype;
//  var housetype;
  var RationCard;
  var LAnd;
  var HOUSE;
  bool Uslswater;
  bool Water;
  bool Road;
  bool Current;
bool Danimal;
var DAnimal;
bool Toilet;
bool House;
bool Ration;
//var rstatus;

  editfamily({

    //this.rstatus,
    required this.Ration,
    // ignore: non_constant_identifier_names
    required this.House,
    required this.Toilet,
    this.DAnimal,
    required this.Danimal,
    required this.Current,
    required this.Road,
    // ignore: non_constant_identifier_names
    required this.Water,
    // ignore: non_constant_identifier_names
    required this.Uslswater,
    this.HOUSE,
    this.LAnd,
    this.RationCard,
    required this.Land,
    this.Meghala,
   // this.Membername,
    this.Category,
    this.FamilyName,
    this.uid,
    this.housename,
    this.housenumber,
   // this.land,
    //this.uslswater,
    //this.water,
    //this.road,
    //this.current,
    //this.danimal,
    this.phone,
    //this.house,
   // this.rationcard,
    //this.toilet,
   // this.danimaltype,
    //this.landtype,
    //this.rtype,
   // this.housetype,
  });
  @override
  _editfamilyState createState() => _editfamilyState();
}

class _editfamilyState extends State<editfamily> {
  TextEditingController UsernameInputcontroller = new TextEditingController();

  TextEditingController nameInputcontroller = new TextEditingController();
  var uuid = Uuid();
  var uid;
  var viewfamily_id;
  // var viewhouse_id;


  void initState() {
    Meghala=widget.Meghala;
    uid=widget.uid;
    //UsernameInputcontroller.text=widget.Membername;
    nameInputcontroller.text=widget.FamilyName;
   phoneInputcontroller.text=widget.phone;
    houseInputcontroller.text=widget.housename;
    housenoInputcontroller.text=widget.housenumber;
    Category=widget.Category;
    Ration=widget.Ration;
    House=widget.House;
    Toilet=widget.Toilet;
    RationCard=widget.RationCard;
    LAnd=widget.LAnd;
    DAnimal=widget.DAnimal;
    HOUSE=widget.HOUSE;
    Water=widget.Water;
    Road=widget.Road;
    Current=widget.Current;
    Uslswater=widget.Uslswater;
    Land=widget.Land;
    Danimal=widget.Danimal;

    super.initState();
  }

//  TextEditingController nameInputcontroller = new TextEditingController();

  TextEditingController phoneInputcontroller = new TextEditingController();

  TextEditingController houseInputcontroller = new TextEditingController();

  TextEditingController housenoInputcontroller = new TextEditingController();
  var _addfamilykey = new GlobalKey<FormState>();
  var Meghala;
  var Category;

  var FamilyName;
  var Types;
  var value;
  var House ;
  var Water ;
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

  // get  valuefirst => null;
  @override
  Widget build(BuildContext context) {
    var yes;
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "Edit Family",
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
              ), //name
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  controller: phoneInputcontroller,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'Phone',
                  ),
                ),
              ), //phone
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  controller: houseInputcontroller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    labelText: 'House Name',
                  ),
                  validator: (value) {
                    return Validate.txtvalidator(value!);
                  },
                ),
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
              ),
              SizedBox(
                height: 15,
              ),

              SizedBox(
                height: 15,
              ),

              CheckboxListTile(
                value: Ration,
                title: Text("Ration card?"),
                onChanged: (value) {
                  setState(() {
                    Ration = value!;
                  });
                },
              ),

              Ration == true
                  ? DropdownButtonFormField<String>(
                      value: RationCard,
                      decoration: InputDecoration(
                        labelText: ("Card type"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (rationcard) =>
                          setState(() => RationCard = rationcard),
                      validator: (value) =>
                          value == null ? 'field required' : null,
                      items: [
                        'BPL',
                        'APL',
                        'AAY',
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

              CheckboxListTile(
                value: House,
                title: Text("Do you have own house?"),
                onChanged: (value) {
                  setState(() {
                    House = value!;
                  });
                },
              ),

              House == true
                  ? DropdownButtonFormField<String>(
                      value: HOUSE,
                      decoration: InputDecoration(
                        labelText: ("House"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onChanged: (rationcard) => setState(() => HOUSE = house),
                      validator: (value) =>
                          value == null ? 'field required' : null,
                      items: [
                        'Yes',
                        'No',
                        'Repairing',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  : Text("NO"),

              CheckboxListTile(
                value: Toilet,
                title: Text("Do you have toilet facility?"),
                onChanged: (value) {
                  setState(() {
                    Toilet = value!;
                  });
                },
              ),

              SizedBox(height: 15),
              // Padding(
              //   padding: const EdgeInsets.only(right: 70),
              //   child: Text("Is drinking water facility available?"),
              // ),
              CheckboxListTile(
                value: Water,
                title: Text("Do you have drinking water facility?"),
                onChanged: (value) {
                  setState(() {
                    Water = value!;
                  });
                },
              ),

              SizedBox(height: 15),
              // Padding(
              //   padding: const EdgeInsets.only(right: 180),
              //   child: Text("Is road available?"),
              // ),
              CheckboxListTile(
                value: Road,
                title: Text("Is road available?"),
                onChanged: (value) {
                  setState(() {
                    Road = value!;
                  });
                },
              ),

              SizedBox(height: 15),
              // Padding(
              //   padding: const EdgeInsets.only(right: 240),
              //   child: Text("Electricity?"),
              // ),
              CheckboxListTile(
                value: Current,
                title: Text("Is electricity available?"),
                onChanged: (value) {
                  setState(() {
                    Current = value!;
                  });
                },
              ),

              SizedBox(height: 15),
              // Padding(
              //   padding: const EdgeInsets.only(right: 110),
              //   child: Text("Have useless water resource?"),
              // ),
              //
              CheckboxListTile(
                value: Uslswater,
                title: Text("Have useless water resource?"),
                onChanged: (value) {
                  setState(() {
                    Uslswater = value!;
                  });
                },
              ),

              SizedBox(height: 15),
              // Padding(
              //   padding: const EdgeInsets.only(right: 180),
              //   child: Text("Do you have land?"),
              // ),
              CheckboxListTile(
                value: Land,
                title: Text("Do you have land?"),
                onChanged: (value) {
                  setState(() {
                    Land = value!;
                  });
                },
              ),

              Land == true
                  ? DropdownButtonFormField<String>(
                      value: LAnd,
                      decoration: InputDecoration(
                        labelText: ("Land"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (land) => setState(() => LAnd = land),
                      validator: (value) =>
                          value == null ? 'field required' : null,
                      items: [
                        '1 to 10 cent',
                        '10 cent to 1 acre',
                        'More than 1 acre',
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    )
                  : Text("NO"),

              SizedBox(height: 15),
              // Padding(
              //   padding: const EdgeInsets.only(right: 100),
              //   child: Text("Do you have domestic animal?"),
              // ),
              CheckboxListTile(
                value: Danimal,
                title: Text("Do you have domestic animal?"),
                onChanged: (value) {
                  setState(() {
                    Danimal = value!;
                  });
                },
              ),
              Danimal == true
                  ? DropdownButtonFormField<String>(
                      value: DAnimal,
                      decoration: InputDecoration(
                        labelText: ("Animal"),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onChanged: (danimal) => setState(() => DAnimal = danimal),
                      validator: (value) =>
                          value == null ? 'field required' : null,
                      items: [
                        'Cow',
                        'Buffalo',
                        'Goat',
                        'Others',
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
              ElevatedButton(
                onPressed: () {
                  FirebaseFirestore.instance
                      .collection('family')
                      .doc(widget.uid)
                      .update({
                    'uid': viewfamily_id,
                    'Meghala': Meghala,
                    'FamilyName': nameInputcontroller.text,
                    'Category': Category,
                    'housename': houseInputcontroller.text,
                    'housenumber': housenoInputcontroller.text,
                    'rstatus':Ration,
                    'rtype':RationCard,
                    'landtype':LAnd,
                    'danimaltype':DAnimal,
                    'housetype':HOUSE,
                    'house':House,
                    'toilet':Toilet,
                    'water':Water,
                    'road':Road,
                    'electricity':Current,
                    'uselesswater':Uslswater,
                    'land':Land,
                    'domesticanimal':Danimal,
                    'phone':phoneInputcontroller.text,

                  }).then((value) {
                    if (Meghala != null && Category != null)
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => addfamily(

                                uid:uid,
                                FamilyName:nameInputcontroller.text,
                               // FamilyName: nameInputcontroller.text,
                                housename: houseInputcontroller.text,
                                housenumber: housenoInputcontroller.text,
                                Category: Category,
                                Meghala: Meghala,

                                  )));
                  });
                },
                child: Text(
                  "Edit",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff880e4f),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => viewmember(

                        Membername: UsernameInputcontroller.text,
                        FamilyName: nameInputcontroller.text,
                        housename: houseInputcontroller.text,
                        housenumber: housenoInputcontroller.text,
                        Category: Category,
                        Meghala: Meghala,

                      )));
                },
                child: Text(
                  "View Members",
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
        ),
      ),
      //
    );
  }
}
