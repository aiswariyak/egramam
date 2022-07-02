import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egramam/admin/addmember.dart';
import 'package:egramam/admin/validator.dart';
import 'package:egramam/admin/viewmembers.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class addfamily extends StatefulWidget {
 //  var rtype;
 //  var RationCard;
 //  var LAnd;
 //  var DAnimal;
 //  var HOUSE;
 // var House;
  var uid;

  var FamilyName;
  var housename;
  var housenumber;
  var Category;
  var Meghala;
  addfamily({
    // this.HOUSE,
    // this.House,
    // this.DAnimal,
    // this.LAnd,
    // this.RationCard,

    this.Meghala,
    this.Category,
    this.FamilyName,
    this.uid,
    this.housename,
    this.housenumber,
  });
  @override
  _addfamilyState createState() => _addfamilyState();
}

class _addfamilyState extends State<addfamily> {
  TextEditingController nameInputcontroller = new TextEditingController();
  var uuid = Uuid();
  var uid;
  var viewfamily_id;
  // var viewhouse_id;

 // var fstudent_id;
  void initState() {
    viewfamily_id = uuid.v1();
    super.initState();
  }

  TextEditingController PhoneInputcontroller = new TextEditingController();

  TextEditingController houseInputcontroller = new TextEditingController();

  TextEditingController housenoInputcontroller = new TextEditingController();
  var _addfamilykey = new GlobalKey<FormState>();
  var Meghala;
  var Category;

  var Types;
  var value;
  bool House = false;
  bool Water = false;
  bool Road = false;
  bool Current = false;
  bool Uslswater = false;
  var land;
  bool Land = false;
  var LAnd;
  var danimal;
  bool Danimal = false;
  var DAnimal;

  bool? val = false;
  bool valuefirst = false;
  bool valuesecond = false;
  bool Ration = false;

  var RationCard;
  var rationcard;
  var house;
  var HOUSE;
  bool Toilet = false;
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
          "Add Family",
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
                        'NO',
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
                      onChanged: (house) => setState(() => HOUSE = house),
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
                        'NO',
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
                        'NO',
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
                      .doc(viewfamily_id)
                      .set({
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
                    'phone':PhoneInputcontroller.text,
                    'status': 1,
                    'date': DateTime.now(),




                    // 'rstatus':widget.rationcard,
                  }).then((value) {
                    if (Meghala != null && Category != null)
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => viewmember(
                                    FamilyName: nameInputcontroller.text,
                                    housename: houseInputcontroller.text,
                                    housenumber: housenoInputcontroller.text,
                                    Category: Category,
                                    Meghala: Meghala,
                                  )));
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
            ],
          ),
        ),
      ),
      //
    );
  }
}
