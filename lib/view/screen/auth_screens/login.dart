import 'package:flutter/material.dart';
import 'package:odc_app/components/components.dart';
import 'package:odc_app/constant/theme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SizedBox(
            child: SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(children:const [
                    Padding(
                      padding: EdgeInsets.only(left: 235),
                      child: Image(image: AssetImage('assets/images/rectangleup.png')),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 248.0),
                      child: Image(image: AssetImage('assets/images/rectangleshadow.png')),
                    ),
                    Image(image: AssetImage('assets/images/logo.png'),width: 81,height: 42,)
                  ] ),
                  SizedBox(height: 85.0,),
                  Row(
                    children: const [
                      Text(
                        'Welcome, ',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 35.0,
                            fontWeight: FontWeight.w700),
                      ),
                      Text(
                        'Back!',
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
                    'Login ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 23.33,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  defaultTextField(
                      label: 'E-mail',
                      type: TextInputType.emailAddress,
                      vector:'assets/images/Vector.png' ,
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
                    vector:'assets/images/lockVector.png' ,
                    //prefix: Icons.lock_outline_rounded,
                    validate: (value) {},
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(onPressed:() {}, child: Text('Forget Password',style: TextStyle(decoration: TextDecoration.underline)),),
                    ],
                  ),
                  const SizedBox(
                    height: 32.0,
                  ),
                  defaultButton(
                      onTap: () {  },
                      text: 'Login',
                      width: 335,
                      background: mainColor,
                      textColor: Colors.white
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Don\'t have an account?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w500)),

                      TextButton(
                        onPressed: () {
                          // Get.offAndToNamed(Routes.loginScreen);
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(color: mainColor),
                        ),
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 90),
                    child: Stack(children:const [
                      Padding(
                        padding: EdgeInsets.only(right: 222,top: 5),
                        child: Image(image: AssetImage('assets/images/rectanglebottom.png')),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 241.0),
                        child: Image(image: AssetImage('assets/images/rectanglebottomshadowpng.png')),
                      ),
                    ] ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
