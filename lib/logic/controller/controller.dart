import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isShow = false;
  bool isConfShow = false;
  bool checkBoxVis = false;
  String displayName = '';
  String displayImage = '';

  void suffixShow() {
    isShow = !isShow;
    update();
  }

  void suffixConShow() {
    isConfShow = !isConfShow;
    update();
  }

  void checkBoxShow() {
    checkBoxVis = !checkBoxVis;
    update();
  }
}