import 'package:blood365/screens/donation_history_screen.dart';
import 'package:blood365/screens/donation_request_screen.dart';
import 'package:blood365/screens/emergency_screen.dart';
import 'package:blood365/screens/health_tips_screen.dart';
import 'package:blood365/screens/login_screen.dart';
import 'package:blood365/screens/chat_screen.dart';
import 'package:blood365/screens/profile_screen.dart';
import 'package:blood365/screens/registration_screen.dart';
import 'package:blood365/screens/request_list_screen.dart';
import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(Blood365());
}

class Blood365 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          dividerColor: Colors.black,
          primaryColor: Colors.blue.shade300,
        ),
        title: 'Blood 365',
        initialRoute: WelcomeScreen.id,
        routes: {
          WelcomeScreen.id: (context) => WelcomeScreen(),
          LoginScreen.id: (context) => LoginScreen(),
          RegistrationScreen.id: (context) => RegistrationScreen(),
          CHatScreen.id: (context) => CHatScreen(),
          DonationHistoryScreen.id: (context) => DonationHistoryScreen(),
          DonationRequestScreen.id: (context) => DonationRequestScreen(),
          EmergencyScreen.id: (context) => EmergencyScreen(),
          HealthTipsScreen.id: (context) => HealthTipsScreen(),
          ProfileScreen.id: (context) => ProfileScreen(),
          RequestListScreen.id: (context) => RequestListScreen(),
        });
  }
}
