import 'package:blood365/main.dart';
import 'package:flutter/material.dart';

class HealthTipsScreen extends StatefulWidget {
  static const String id = 'health_tips_screen';
  @override
  _HealthTipsScreenState createState() => _HealthTipsScreenState();
}

class _HealthTipsScreenState extends State<HealthTipsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: Center(
            child: Text(
              'I am Health Tips Screen',
              style: TextStyle(fontSize: 20, color: Colors.red),
            ),
          ),
        ),
      ),
    );
  }
}
