import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../components/components.dart';
import '../../../constant/strings.dart';
import '../../../constant/theme.dart';
import '../../../logic/controller/controller.dart';

class NewPasswordScreen extends StatelessWidget {
  const NewPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var passwordController = TextEditingController();
    var newPasswordController = TextEditingController();
    var formKey = GlobalKey<FormState>();

    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(child: Text('Create New Password')),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                    child:
                    Image(image: AssetImage('assets/images/passDone.png'))),
                const Text(
                    'Enter your new password',
                    style: TextStyle(fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 15.0,
                ),
                defaultTextField(
                  isPassword: true,
                    label: 'New Password',
                    vector: 'assets/images/lockVector.png',
                    validate: (value) {
                      if (!RegExp(validationEmail).hasMatch(value!) ||
                          value.toString().isEmpty) {
                        return 'not valid e-mail';
                      } else {
                        return null;
                      }
                    },
                    controller: passwordController),
                const SizedBox(
                  height: 20.0,
                ),
                defaultTextField(
                  isPassword: true,
                    label: 'Confirm Password',
                    vector: 'assets/images/lockVector.png',
                    validate: (value) {
                      if (!RegExp(validationEmail).hasMatch(value!) ||
                          value.toString().isEmpty) {
                        return 'not valid e-mail';
                      } else {
                        return null;
                      }
                    },
                    controller: newPasswordController),
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
