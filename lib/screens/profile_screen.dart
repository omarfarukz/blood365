import 'package:blood365/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'number_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ProfileScreen extends StatefulWidget {
  static const String id = 'profile_screen';

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //String get userName => null;
  String userName;
  User loggedInUser;
  final _auth = FirebaseAuth.instance;
  String userId = FirebaseAuth.instance.currentUser.uid;
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
        print(loggedInUser.uid);
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
                'https://organicthemes.com/demo/profile/files/2018/05/profile-pic.jpg'),
          ),
          SizedBox(
            height: 24,
          ),
          Center(
            child: FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(loggedInUser.uid)
                    .get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting ||
                      !snapshot.hasData) {
                    return Text('Loading...');
                  }
                  if (!snapshot.hasData) {
                    CircularProgressIndicator();
                  }
                  return Text(
                    snapshot.data['userName'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  );
                }),
          ),
          Center(
            child: FutureBuilder(
                future: FirebaseFirestore.instance
                    .collection('users')
                    .doc(loggedInUser.uid)
                    .get(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting ||
                      !snapshot.hasData) {
                    return Text('Loading...');
                  }
                  if (!snapshot.hasData) {
                    CircularProgressIndicator();
                  }
                  return Text(
                    snapshot.data['email'],
                    style: TextStyle(color: Colors.grey),
                  );
                }),
          ),
          SizedBox(height: 24),
          NumbersWidget(),
          SizedBox(height: 24),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              children: [
                Text(
                  'Compliments',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(
                  height: 48,
                ),
                Text(
                  'Blood donation is safe for healthy adults. There’s no risk of contracting disease. New, sterile equipment is used for each donor. Some people may feel nauseous, lightheaded, or dizzy after donating blood. If this happens, it should only last a few minutes. You can lie down with your feet up at the until you feel better.You may also experience some bleeding at the site of the needle. Applying pressure and raising your arm for a couple of minutes will usually stop this. You may develop a bruise at the site.',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
