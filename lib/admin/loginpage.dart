import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:egramam/admin/admindashboard.dart';
import 'package:egramam/admin/user.dart';
import 'package:egramam/admin/validator.dart';
import 'package:egramam/user/userlogin.dart';
import 'package:egramam/user/userregister.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'addfamily.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var _loginkey = new GlobalKey<FormState>();
  TextEditingController usernameInputcontroller = new TextEditingController();
  TextEditingController passwordInputcontroller = new TextEditingController();
  bool visble = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffdcedc8),
      body: SafeArea(
        child: Form(
          key: _loginkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Center(
                          child: ClipOval(
                        child: Image.asset(
                          "img/logoimg.png",
                          height: 300,
                          width: 300,
                        ),
                      )),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  child: Text(
                    "E-Gramam",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0xff880e4f),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 300,
                  child: TextFormField(
                    controller: usernameInputcontroller,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "email",
                      labelStyle: TextStyle(color: Colors.brown),
                      hintText: 'abc@gmail.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(color: Color(0xff880e4f))),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown)),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Color(0xff880e4f),
                      ),
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
                      labelText: "password",
                      labelStyle: TextStyle(color: Colors.brown),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown)),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            visble = !visble;
                          });
                        },
                        child: Icon(
                          visble == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xff880e4f),
                        ),
                      ),
                    ),
                    validator: (value) {
                      return Validate.passwordvalidator(value!);
                    },
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 35,
                  width: 100,
                  child: ElevatedButton(


                        onPressed: (){
                  if(_loginkey.currentState!.validate()){
                  FirebaseAuth.instance.signInWithEmailAndPassword(email: usernameInputcontroller.text.trim(),
                  password: passwordInputcontroller.text.trim()).then((value) => FirebaseFirestore.instance
                      .collection('Register').doc(value.user!.uid).get().then((value) {
                  if(value.data()!['status']==1)
                  {
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=>userlogin(
                  uid: value.data()!['uid'],
                  name: value.data()!['username'],
                  // address: value.data()!['Address'],
                  // medium: value.data()!['medium'],
                  // classess: value.data()!['class'],
                  // gender:  value.data()!['gender'],
                  // dob:  value.data()!['dob'],

                  )));
                  }
                  })).catchError((e)=>_showsnackbar(context,  " login failed"));

                  if(usernameInputcontroller.text=="admin@gmail.com"&&passwordInputcontroller.text=="123456789")
                  Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context)=>admindash()));

                  }


                  },
                    // onPressed: () {
                    //   if (_loginkey.currentState!.validate()) {
                    //     if(usernameInputcontroller.text=="abc@gmail.com"&& passwordInputcontroller.text=="12345678")
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => admindash(
                    //
                    //               )));
                    //  else   FirebaseAuth.instance
                    //         .signInWithEmailAndPassword(
                    //             email: usernameInputcontroller.text.trim(),
                    //             password: passwordInputcontroller.text.trim())
                    //         .then((value) => FirebaseFirestore.instance
                    //                 .collection('Register')
                    //                 .doc(value.user!.uid)
                    //                 .get()
                    //                 .then((value) {
                    //               if (value.data()!['status'] == 1) {
                    //                 print("ok");
                    //                 Navigator.push(
                    //                     context,
                    //                     MaterialPageRoute(
                    //                         builder: (context) => userlogin(
                    //                           uid:value.data()!['uid'] ,
                    //                           name: value.data()!['username'],
                    //                         )));
                    //               }
                    //             }));
                    //   }
                    //   },
                    child: Text(
                      "Login",
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
                SizedBox(height: 20,),
                SizedBox(
                  height: 35,
                  width: 100,
                  child: ElevatedButton(
                    onPressed: () {

                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => register()));

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
  void _showsnackbar(BuildContext context,String value){
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text(value),
            backgroundColor: Colors.brown)
    );
  }
}
