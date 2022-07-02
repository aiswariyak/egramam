

import 'package:flutter/material.dart';

import 'addmember.dart';

class user extends StatefulWidget {
  @override
  _userState createState() => _userState();
}

class _userState extends State<user> {
  var Meghala;
  var Category;

  var Types;
  var value;
  bool House=false;
  var water;
  var road;
  var current;
  var uslswater;
  var land;
  var danimal;
  bool? val = false;
  bool valuefirst = false;
  bool valuesecond = false;
  bool Ration=false;
  var RationCard;
  var rationcard;
  var house;
  var HOUSE;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "UPLOAD DETAILS",
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
                    labelText: ("Meghala"),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onChanged: (meghala) => setState(() => Meghala = meghala),
                  validator: (value) => value == null ? 'field required' : null,
                  items: [
                    'Perinthalmanna',
                    'Karinkallathani',
                    'Poovathani',
                    'Thazhekkod',
                    'Chethallur',
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
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Name',
                  ),
                ),
              ), //name
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'Phone',
                  ),
                ),
              ), //phone
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    labelText: 'House Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
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
                      borderRadius: BorderRadius.circular(30),
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

              Ration== true ? DropdownButtonFormField<String>(
                value: RationCard,
                decoration: InputDecoration(
                  labelText: ("Card type"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
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

              House== true ? DropdownButtonFormField<String>(
                value: HOUSE,
                decoration: InputDecoration(
                  labelText: ("House"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onChanged: (rationcard) =>
                    setState(() => HOUSE = house),
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
              // SizedBox(height: 15),
              // Padding(
              //   padding: const EdgeInsets.only(right: 70),
              //   child: Text("Applid for house?"),
              // ),
              // ListTile(
              //   leading: Radio(
              //     value: "Y",
              //     groupValue: house,
              //     onChanged: (value) {
              //       setState(() {
              //         house = value!;
              //       });
              //     },
              //   ),
              //   title: Text("YES"),
              // ),
              // ListTile(
              //   leading: Radio(
              //     value: "N",
              //     groupValue: house,
              //     onChanged: (value) {
              //       setState(() {
              //         house = value as String?;
              //       });
              //     },
              //   ),
              //   title: Text("NO"),
              // ),//house
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 70),
                child: Text("Is drinking water facility available?"),
              ),
              ListTile(
                leading: Radio(
                  value: "Y",
                  groupValue: water,
                  onChanged: (value) {
                    setState(() {
                      water = value!;
                    });
                  },
                ),
                title: Text("YES"),
              ),
              ListTile(
                leading: Radio(
                  value: "N",
                  groupValue: water,
                  onChanged: (value) {
                    setState(() {
                      water = value as String?;
                    });
                  },
                ),
                title: Text("NO"),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text("Is road available?"),
              ),
              ListTile(
                leading: Radio(
                  value: "Y",
                  groupValue: road,
                  onChanged: (value) {
                    setState(() {
                      road = value!;
                    });
                  },
                ),
                title: Text("YES"),
              ),
              ListTile(
                leading: Radio(
                  value: "N",
                  groupValue: road,
                  onChanged: (value) {
                    setState(() {
                      road = value as String?;
                    });
                  },
                ),
                title: Text("NO"),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: Text("Current?"),
              ),
              ListTile(
                leading: Radio(
                  value: "Y",
                  groupValue: current,
                  onChanged: (value) {
                    setState(() {
                      current = value!;
                    });
                  },
                ),
                title: Text("YES"),
              ),
              ListTile(
                leading: Radio(
                  value: "N",
                  groupValue: current,
                  onChanged: (value) {
                    setState(() {
                      current = value as String?;
                    });
                  },
                ),
                title: Text("NO"),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 110),
                child: Text("Have useless water resource?"),
              ),
              ListTile(
                leading: Radio(
                  value: "Y",
                  groupValue: uslswater,
                  onChanged: (value) {
                    setState(() {
                      uslswater = value!;
                    });
                  },
                ),
                title: Text("YES"),
              ),
              ListTile(
                leading: Radio(
                  value: "N",
                  groupValue: uslswater,
                  onChanged: (value) {
                    setState(() {
                      uslswater = value as String?;
                    });
                  },
                ),
                title: Text("NO"),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text("Do you have land?"),
              ),
              ListTile(
                leading: Radio(
                  value: "Y",
                  groupValue: land,
                  onChanged: (value) {
                    setState(() {
                      land = value!;
                    });
                  },
                ),
                title: Text("YES"),
              ),
              ListTile(
                leading: Radio(
                  value: "N",
                  groupValue: land,
                  onChanged: (value) {
                    setState(() {
                      land = value as String?;
                    });
                  },
                ),
                title: Text("NO"),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(right: 100),
                child: Text("Do you have domestic animal?"),
              ),
              ListTile(
                leading: Radio(
                  value: "Y",
                  groupValue: danimal,
                  onChanged: (value) {
                    setState(() {
                      danimal = value!;
                    });
                  },
                ),
                title: Text("YES"),
              ),
              ListTile(
                leading: Radio(
                  value: "N",
                  groupValue: danimal,
                  onChanged: (value) {
                    setState(() {
                      danimal = value as String?;
                    });
                  },
                ),
                title: Text("NO"),
              ),

              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => addmember()));

                },
                child: Text(
                  "Next",
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
    );
  }
}
