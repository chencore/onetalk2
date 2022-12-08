import 'package:onetalk2/pages/login/login_controller.dart';
import 'package:get/get.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    print("LoginBinding");
    Get.lazyPut<LoginController>(() => LoginController());
  }
}
