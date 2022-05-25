import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odc_app/constant/theme.dart';
import 'package:odc_app/routes/routs.dart';
import 'package:odc_app/view/screen/auth_screens/login.dart';
import 'package:odc_app/view/screen/auth_screens/sign_up.dart';
import 'package:odc_app/view/screen/password_screen/forget_password.dart';
import 'package:odc_app/view/screen/on_boarding_screen.dart';
import 'package:odc_app/view/screen/password_screen/new_password.dart';
import 'package:odc_app/view/screen/password_screen/verify_screen.dart';
import 'package:odc_app/view/screen/privacy_policy.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.orange,
      ),
      home: NewPasswordScreen(),
      // initialRoute: AppRoute.splashScreen,
      // getPages:AppRoute.routes
    );
  }
}

