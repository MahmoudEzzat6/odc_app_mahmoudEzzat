import 'package:flutter/material.dart';
import 'package:odc_app/constant/theme.dart';

import '../../constant/strings.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          shadowColor: Colors.white,
          backgroundColor: Colors.white,
          elevation: 0,

        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Privacy',style: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.w700),
                    ),
                    SizedBox(width: 5,),
                    Text(
                      'Policy',style: TextStyle(color: mainColor,fontSize: 35,fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(PrivacyPolicyString)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
