
import 'package:get/get.dart';
import '../controller/controller.dart';

class AuthBinding extends Bindings{

  @override
  void dependencies() {
    Get.put(AuthController());
  }

}