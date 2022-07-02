import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egramam/admin/loginpage.dart';
import 'package:egramam/admin/user.dart';
import 'package:egramam/admin/validator.dart';

import 'package:egramam/user/userlogin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  var _loginkey = new GlobalKey<FormState>();
  //var _regkey = new GlobalKey<FormState>();

  TextEditingController  nameInputcontroller =new TextEditingController();
  TextEditingController usernameInputcontroller = new TextEditingController();
  TextEditingController passwordInputcontroller = new TextEditingController();
  bool visble = true;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color(0xffdcedc8), //0xffd7ccc8//0xfff8bbd0
      appBar: AppBar(
        backgroundColor: Color(0xff880e4f), //0xff3e2723//0xff880e4f0
        title: Text(
          "User Register",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) =>LoginPage ()));
              },
              child: Icon(Icons.logout)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _loginkey,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextFormField(
                    controller: nameInputcontroller,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'name',
                    ),
                    validator: (value) {
                      return Validate.txtvalidator(value!);
                    },
                  ),

                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: usernameInputcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "email",labelStyle: TextStyle(color: Colors.brown),
                      hintText: 'abc@gmail.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),borderSide: BorderSide(color: Color(0xff880e4f))),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.brown)),

                      suffixIcon: Icon(Icons.email,color: Color(0xff880e4f),),
                    ),

                    validator: (value) {
                      return Validate.emailValidator(value!);
                    },
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: passwordInputcontroller,
                    obscureText: visble,
                    keyboardType: TextInputType.visiblePassword,
                    decoration: InputDecoration(
                      labelText: "password",labelStyle: TextStyle(color: Colors.brown),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.brown)),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            visble = !visble;
                          });
                        },
                        child: Icon(visble == true
                            ? Icons.visibility
                            : Icons.visibility_off,color: Color(0xff880e4f),),
                      ),
                    ),
                    validator: (value) {
                      return Validate.passwordvalidator(value!);
                    },
                  ),
                ),

                SizedBox(
                  height:25,
                ),
                SizedBox(
                  height: 35,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {
    if (_loginkey.currentState!.validate()) {
      FirebaseAuth.instance.createUserWithEmailAndPassword(
            email:usernameInputcontroller.text.trim(),
                   password: passwordInputcontroller.text.trim(),
            //name:nameInputcontroller.text,

      ).then((value) {
        FirebaseFirestore.instance.collection('Users').doc(value.user!.uid).set({
            'uid':value.user!.uid,
            'name':nameInputcontroller.text,
            'email':usernameInputcontroller.text.trim(),
            'password':passwordInputcontroller.text.trim(),
            'status':1,
            'date':DateTime.now(),
        }).then((value){
          print("Registered");
          Navigator.pop(context);
        }).catchError((e)=>print("Registered"));
      }).catchError((e)=>print("Failed"));

      // Navigator.push(context,
      //       MaterialPageRoute(builder: (context) => userlogin())
      // );
    }
                     // if(usernameInputcontroller.text=="abc@gmail.com"&& passwordInputcontroller.text=="12345678");

                    },
                    child: Text(
                      "Register",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff880e4f),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }

}
