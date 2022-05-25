
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:odc_app/view/screen/on_boarding_screen.dart';
import 'package:odc_app/view/screen/privacy_policy.dart';

import '../logic/binding/auth_binding.dart';
import '../view/screen/auth_screens/login.dart';
import '../view/screen/auth_screens/sign_up.dart';
import '../view/screen/password_screen/forget_password.dart';
import '../view/screen/splash_screen.dart';

class AppRoute {
  //initial Route
  static const splashScreen = Routes.splashScreen;

  //get page
  static final routes = [
    GetPage(name: Routes.splashScreen, page: () => const SplachScreen(),),
    GetPage(name: Routes.privacyPolicy, page: () => const PrivacyPolicy(),),
    GetPage(name: Routes.loginScreen, page: () => const LoginScreen(),binding: AuthBinding()),
    GetPage(name: Routes.signupScreen, page: () => const SignUpScreen(),binding: AuthBinding()),
    GetPage(name: Routes.forgotPasswordScreen, page: () => const ForgotPasswordScreen(),binding: AuthBinding()),
    GetPage(name: Routes.mainScreen, page: () =>  OnBoardingScreen(),binding: AuthBinding()),
  ];
}

class Routes {
  static const splashScreen = "/SplashScreen";
  static const privacyPolicy = "/privacyPolicy";
  static const loginScreen = "/loginScreen";
  static const signupScreen = "/signupScreen";
  static const forgotPasswordScreen = "/forgotPasswordScreen";
  static const mainScreen = "/mainScreen";
}
