import 'package:firebase_core/firebase_core.dart';
import 'package:leson9firebase/profile.dart';

import 'Home.dart';
import 'login.dart';
import 'new_account.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),

      routes: {
        'Login': (context) => Login(),
        'NewAccount': (context) => NewAccount(),
        'Profile': (context) => Profile(),
        'Home': (context) => Home(),
      },
    );
  }
}
