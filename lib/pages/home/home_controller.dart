import 'package:get/get.dart';
import 'package:eosdart/eosdart.dart';

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

  void changeUserName() async {
    EOSClient client = EOSClient('https://api.eosn.io', 'v1');
    // Get EOS Node Info
    NodeInfo nodeInfo = await client.getInfo();
    userName.value = nodeInfo.toString();
    update();
    // client.getInfo().then((NodeInfo nodeInfo) {
    //   print(nodeInfo);
    //   userName.value = nodeInfo.toString();
    //   //update();
    // });
  }
}
