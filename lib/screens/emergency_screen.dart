import 'package:blood365/main.dart';
import 'package:flutter/material.dart';

class EmergencyScreen extends StatefulWidget {
  static const String id = 'emergency_screen';
  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Text(
              'I am Emergency Screen',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
