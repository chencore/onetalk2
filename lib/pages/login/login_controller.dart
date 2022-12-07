import 'package:get/get.dart';
import 'package:onetalk2/pages/login/login_model.dart';
import 'package:onetalk2/services/user.dart';

class LoginController extends GetxController {
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  increment() => count.value++;

  void login() {
    UserLoginResponseModel? user =
        UserAPI.login(params: {}) as UserLoginResponseModel;
  }
}
