import 'package:blood365/constants.dart';
import 'package:blood365/screens/request_list_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:blood365/components/rounded_button.dart';
import 'chat_screen.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

import 'package:firebase_auth/firebase_auth.dart';

class RegistrationScreen extends StatefulWidget {
  static const String id = 'registration_screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

User user;

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  bool showSpinner = false;
  String email;
  String password;
  String userName;
  String userPhone;
  String userGroup;
  String userAddress;
  String userCity;
  String userPostcode;
  String userState;

  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      height: 20.0,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'Please enter a valid Email';
                    }
                    return null;
                  },
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    email = value;
                  },
                  decoration: kTextFileDecoration.copyWith(
                      hintText: 'Enter Your Email'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    userName = value;
                  },
                  decoration: kTextFileDecoration.copyWith(
                      hintText: 'Enter Your Full Name'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    userPhone = value;
                  },
                  decoration: kTextFileDecoration.copyWith(
                      hintText: 'Enter Your Phone Number'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                DropdownButton(
                    value: _value,
                    items: [
                      DropdownMenuItem(
                        child: Text("A+"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("A-"),
                        value: 2,
                      ),
                      DropdownMenuItem(child: Text("B+"), value: 3),
                      DropdownMenuItem(child: Text("B-"), value: 4)
                    ],
                    onChanged: (value) {
                      setState(() {
                        _value = value;
                      });
                    }),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    userAddress = value;
                    //Do something with the user input.
                  },
                  decoration: kTextFileDecoration.copyWith(
                      hintText: 'Please Enter Your Address'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    userCity = value;
                  },
                  decoration:
                      kTextFileDecoration.copyWith(hintText: 'Enter Your City'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    userPostcode = value;
                  },
                  decoration: kTextFileDecoration.copyWith(
                      hintText: 'Enter Your Postcode'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    userState = value;
                  },
                  decoration: kTextFileDecoration.copyWith(
                      hintText: 'Enter Your State'),
                ),
                SizedBox(
                  height: 5.0,
                ),
                TextFormField(
                  validator: (value) {
                    if (value.isEmpty || value.length < 6) {
                      return 'Password Should be more than 6';
                    }
                    return null;
                  },
                  obscureText: true,
                  textAlign: TextAlign.center,
                  onChanged: (value) {
                    //Do something with the user input.
                    password = value;
                  },
                  decoration: kTextFileDecoration.copyWith(
                      hintText: 'Enter Your Password'),
                ),
                SizedBox(
                  height: 14.0,
                ),
                RoundedButton(
                  title: 'Register',
                  colour: Colors.blueAccent,
                  onPressed: () async {
                    setState(() {
                      showSpinner = true;
                    });
                    try {
                      final newUser =
                          await _auth.createUserWithEmailAndPassword(
                              email: email, password: password);
                      if (newUser != null) {
                        await FirebaseFirestore.instance
                            .collection('users')
                            .doc(newUser.user.uid)
                            .set({
                          'id': newUser.user.uid,
                          'email': email,
                          'userName': userName,
                          'userPhone': userPhone,
                          //'userGroup': userGroup,
                          'userAddress': userAddress,
                          'userCity': userCity,
                          'userPostcode': userPostcode,
                          'userState': userState,
                        });
                        Navigator.pushNamed(context, RequestListScreen.id);
                      }
                      setState(() {
                        showSpinner = false;
                      });
                    } catch (e) {
                      print(e);
                    }
                    //print(email);
                    //print(password);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
