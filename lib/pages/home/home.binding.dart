import 'package:onetalk2/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    print("HomeBinding");
    Get.lazyPut<HomeController>(() => HomeController());
  }
}
