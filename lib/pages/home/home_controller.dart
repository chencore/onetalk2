import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  RxString userName = 'burnish'.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;

  void changeUserName() {
    userName.value = 'juefei';
    update();
  }
}
