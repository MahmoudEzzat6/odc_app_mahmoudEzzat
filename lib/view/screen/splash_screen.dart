import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'on_boarding_screen.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {

    Future.delayed(const Duration(seconds: 2), (){
      Navigator.pushAndRemoveUntil(
          (context),
          MaterialPageRoute(builder: (context) => OnBoardingScreen()),
              (route) => true);} );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(
      child: Image.asset('assets/images/logo.png'),

    ),

    );
  }
}