import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import '../../../components/components.dart';
import '../../../constant/theme.dart';
import '../../../routes/routs.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
  bool iconShow = true;
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confPasswordController = TextEditingController();

    //final controllers = Get.find<AuthController>();
    return Form(
      key: formKey,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Stack(children: const [
                      Image(image: AssetImage('assets/images/rectangleup.png')),
                      Image(
                          image:
                              AssetImage('assets/images/rectangleshadow.png')),
                    ]),
                  ],
                ),
                Row(
                  children: const [
                    Text(
                      'Hello, ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Friend!',
                      style: TextStyle(
                          color: mainColor,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Sign Up ',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 23.33,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 25.0,
                ),
                defaultTextField(
                    label: 'Full Name',
                    //prefix: Icons.person_outline,
                    validate: (value) {},
                    type: TextInputType.name,
                    vector: 'assets/images/user.png',
                    controller: nameController),
                const SizedBox(
                  height: 20.0,
                ),
                defaultTextField(
                    label: 'E-mail',
                    type: TextInputType.emailAddress,
                    vector: 'assets/images/Vector.png',
                    validate: (value) {},
                    controller: emailController),
                const SizedBox(
                  height: 20.0,
                ),
                defaultTextField(
                  label: 'Password',
                  isPassword: true,
                  type: TextInputType.text,
                  controller: passwordController,
                  suffixPress: () {},
                  suffixColor: backGroundColor,
                  suffix: Icons.visibility_off_outlined,
                  vector: 'assets/images/lockVector.png',
                  //prefix: Icons.lock_outline_rounded,
                  validate: (value) {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                defaultTextField(
                  label: 'Phone number',
                  type: TextInputType.number,
                  controller: null,
                  suffixPress: () {},
                  suffixColor: mainColor,
                  vector: 'assets/images/callVector.png',
                  validate: (value) {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                defaultTextField(
                  vector: 'assets/images/mapVector.png',
                  label: 'Address',
                  type: TextInputType.text,
                  controller: null,
                  suffixPress: () {},
                  suffixColor: mainColor,
                  validate: (value) {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image(
                        image: AssetImage('assets/images/Rectangle 2661.png')),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('Do you agree ti our '),
                    InkWell(
                      onTap: () {
                        Get.offAndToNamed(Routes.privacyPolicy);
                      },
                      child: Text('Privacy Policy',
                          style: TextStyle(
                              color: mainColor,
                              decoration: TextDecoration.underline)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32.0,
                ),
                defaultButton(
                    onTap: () {},
                    text: 'Sign Up',
                    width: 335,
                    background: mainColor,
                    textColor: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.w500)),
                    TextButton(
                      onPressed: () {
                         Get.toNamed(Routes.loginScreen);
                      },
                      child: const Text(
                        'Login',
                        style: TextStyle(color: mainColor),
                      ),
                    ),
                  ],
                ),
                Stack(children: const [
                  Padding(
                    padding: EdgeInsets.only(right: 222, top: 5),
                    child: Image(
                        image: AssetImage('assets/images/rectanglebottom.png')),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 241.0),
                    child: Image(
                        image: AssetImage(
                            'assets/images/rectanglebottomshadowpng.png')),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
