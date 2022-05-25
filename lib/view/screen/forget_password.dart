import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../components/components.dart';
import '../../constant/strings.dart';
import '../../constant/theme.dart';
import '../../logic/controller/controller.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

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
          title: Center(child: Text('Forget password')),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                    child:
                        Image(image: AssetImage('assets/images/forget.png'))),
                const Text(
                    'Please enter your email address to \n recieve vervication code',
                    style: TextStyle(fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 15.0,
                ),
                defaultTextField(
                    label: 'E-mail ID',
                    vector: 'assets/images/Vector.png',
                    validate: (value) {
                      if (!RegExp(validationEmail).hasMatch(value!) ||
                          value.toString().isEmpty) {
                        return 'not valid e-mail';
                      } else {
                        return null;
                      }
                    },
                    controller: emailController),
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
