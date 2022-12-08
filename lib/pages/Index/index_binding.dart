import 'package:onetalk2/pages/Index/Index_controller.dart';
import 'package:get/get.dart';

class IndexBinding extends Bindings {
  @override
  void dependencies() {
    print("IndexBinding");
    Get.lazyPut<IndexController>(() => IndexController());
  }
}
