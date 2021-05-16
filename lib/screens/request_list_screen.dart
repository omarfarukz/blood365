import 'package:blood365/main.dart';
import 'package:blood365/screens/NavBar.dart';
import 'package:blood365/screens/featured_request_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'NavBar.dart';
import 'categories.dart';

class RequestListScreen extends StatefulWidget {
  static const String id = 'request_list_screen';
  @override
  _RequestListScreenState createState() => _RequestListScreenState();
}

class _RequestListScreenState extends State<RequestListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                //Implement logout functionality
                //_auth.signOut();
                Navigator.pop(context);
              }),
        ],
        title: Text('⚡️Blood Request'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'I need ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Categories(),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Help us',
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular Tips',
                style: TextStyle(fontSize: 30, color: Colors.grey),
              ),
            ),
            Stack(children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                      'https://www.boldsky.com/img/400x80/2020/09/simplehealthtips-1600977758.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
