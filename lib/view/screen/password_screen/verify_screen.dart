import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../components/components.dart';
import '../../../constant/strings.dart';
import '../../../constant/theme.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(child: Text('Verify Your Email')),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Center(
                    child: Image(
                        image: AssetImage('assets/images/emailForget.png'))),
                const Text(
                    'please enter the 4-digit code sent to\n ahmedabaza@gmail.com',
                    style: TextStyle(fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 15.0,
                ),
                Pinput(
                  validator: (s) {
                    return s == '2222' ? null : 'Pin is incorrect';
                  },
                  showCursor: true,
                ),
                const SizedBox(
                  height: 20.0,
                ),
                defaultButton(
                    onTap: () {
                      if (formKey.currentState!.validate()) {}
                    },
                    text: 'Send',
                    width: 335,
                    background: mainColor,
                    textColor: Colors.white),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
