import 'package:flutter/material.dart';
import 'package:mobile_ui/patient_module/chat.dart';
import 'package:mobile_ui/patient_module/mood.dart';
import 'package:mobile_ui/patient_module/therapysession.dart';
import 'package:mobile_ui/shared_module/login.dart';
import 'package:mobile_ui/shared_module/resetpass.dart';
import 'package:mobile_ui/shared_module/signup1.dart';
import 'package:mobile_ui/shared_module/signup2.dart';
import 'package:mobile_ui/shared_module/splash.dart';

import 'layout/homelayout.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/", routes: {
      "/": (context) => const splash(),
      "/login": (context) => Login(),
      "/signup1": (context) => signup1(),
      "/homelayout": (context) => Homelayout(),
      "/signup2": (context) => signup2(),
      "/resetpassword":(context) => resetpassword(),
      "/mood":(context) => mood(),
      "/chat":(context) => Chat(),
      "/therapysession":(context) => therapysession(),
      
      
    });
  }
}
