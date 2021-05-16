import 'package:blood365/main.dart';
import 'package:blood365/screens/NavBar.dart';
import 'package:blood365/screens/featured_request_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/historyList.dart';

final _firestore = FirebaseFirestore.instance;
final _auth = FirebaseAuth.instance;
final _userID = FirebaseAuth.instance.currentUser.uid;

User loggedInUser;
List<History> historyList = [
  History(date: '21 May', location: "Hospital Serdang"),
  History(date: '10 jan', location: 'HKL')
];

class DonationHistoryScreen extends StatefulWidget {
  static const String id = 'donation_history_screen';
  @override
  _DonationHistoryScreenState createState() => _DonationHistoryScreenState();
}

class _DonationHistoryScreenState extends State<DonationHistoryScreen> {
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
      drawer: NavBar(),
      appBar: AppBar(
        leading: null,
        actions: [
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                //Implement logout functionality
                //messagesStream();
                //_auth.signOut();
                //Navigator.pop(context);
              }),
        ],
        title: Text('⚡️Donation History'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height - 10,
            width: MediaQuery.of(context).size.width - 10,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.red[100],
                  offset: Offset(0, 2),
                  blurRadius: 30,
                ),
              ],
            ),
            child: DonationHistoryStream(),
          ),
        ),
      ),
    );
  }
}

class DonationHistoryStream extends StatelessWidget {
  // void getDocumentLength() async {
  //   final QuerySnapshot qSnap =
  //       await FirebaseFirestore.instance.collection('products').get();
  //   int documents = qSnap.docs.length;
  // }
  Future getHistory() async {
    var historyStore = FirebaseFirestore.instance;
    QuerySnapshot count = await historyStore.collection('history').get();
    return count.docs;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: StreamBuilder<QuerySnapshot>(
          stream: _firestore.collection('history').snapshots(),
          //future: getHistory(),
          builder: (_, snapshot) {
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(
                  backgroundColor: Colors.lightBlueAccent,
                ),
              );
            } else {
              return ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: historyList.length,
                  itemBuilder: (_, index) {
                    return Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("${historyList[index].date}"),
                            Text("${historyList[index].location}"),
                          ],
                        ),
                      ],
                    );
                  });
            }
          }),
    );
  }
}
