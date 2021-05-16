import 'package:blood365/screens/chat_screen.dart';
import 'package:blood365/screens/donation_history_screen.dart';
import 'package:blood365/screens/donation_request_screen.dart';
import 'package:blood365/screens/emergency_screen.dart';
import 'package:blood365/screens/health_tips_screen.dart';
import 'package:blood365/screens/login_screen.dart';
import 'package:blood365/screens/profile_screen.dart';
import 'package:blood365/screens/request_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class NavBar extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  static const String id = 'nav_bar';
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text(
              'Imran ',
              style: TextStyle(color: Colors.black),
            ),
            accountEmail: Text('imran@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://yt3.ggpht.com/ytc/AAUvwnj9PvCgb44_6oy39dZfFvVXYzN0_LvKhbUu9ggRCOE=s900-c-k-c0x00ffffff-no-rj',
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://image.freepik.com/free-vector/abstract-red-splatter-blood-stains-background_1017-30344.jpg'),
                  fit: BoxFit.cover,
                )),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Request'),
            onTap: () {
              Navigator.pushNamed(context, DonationRequestScreen.id);
            },
            trailing: ClipOval(
              child: Container(
                color: Colors.red,
                width: 20,
                height: 20,
                child: Center(
                  child: Text(
                    '2',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text('Donate Blood'),
            onTap: () {
              Navigator.pushNamed(context, RequestListScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip_sharp),
            title: Text('Health Tips'),
            onTap: () {
              Navigator.pushNamed(context, HealthTipsScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.history),
            title: Text('Donation History'),
            onTap: () {
              Navigator.pushNamed(context, DonationHistoryScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.local_hospital),
            title: Text('Emergency'),
            onTap: () {
              Navigator.pushNamed(context, EmergencyScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.chat),
            title: Text('Chat'),
            onTap: () {
              Navigator.pushNamed(context, CHatScreen.id);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {
              _auth.signOut();
              Navigator.pushNamed(context, LoginScreen.id);
            },
          ),
        ],
      ),
    );
  }
}
