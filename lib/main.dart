import 'package:flutter/material.dart';
import 'package:odc_app/constant/theme.dart';
import 'package:odc_app/view/screen/auth_screens/login.dart';
import 'package:odc_app/view/screen/auth_screens/sign_up.dart';
import 'package:odc_app/view/screen/forget_password.dart';
import 'package:odc_app/view/screen/on_boarding_screen.dart';
import 'package:odc_app/view/screen/privacy_policy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home: ForgotPasswordScreen(),
    );
  }
}

