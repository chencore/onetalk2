import 'dart:async';

import 'package:get/get.dart';
import 'package:eosdart/eosdart.dart';
import 'package:onetalk2/pages/Index/Index_controller.dart';

class HomeController extends GetxController {
  final count = 0.obs;

  RxString userName = 'test'.obs;
  RxString btnTaskName = "任务已停止".obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {}

  @override
  void onClose() {}

  void increment() => count.value++;

  void invokeIndexMethod(String val) {
    IndexController controller = Get.find<IndexController>();
    controller.testInvoke(val);
  }

  void startTask() {
    btnTaskName.value = "任务已开始";
    int count = 0;
    const period = const Duration(seconds: 1);
    print('currentTime=' + DateTime.now().toString());
    Timer.periodic(period, (timer) {
      //到时回调
      print('afterTimer=' + DateTime.now().toString());
      count++;
      if (count >= 5) {
        //取消定时器，避免无限回调
        timer.cancel();
        btnTaskName.value = "任务已停止";
      }
    });
  }

  void getChainInfo() async {
    try {
      userName.value = "getChainInfo";
      EOSClient client = EOSClient('https://api.eosn.io', 'v1');
      // Get EOS Node Info
      userName.value = "getChainInfo1";
      NodeInfo nodeInfo = await client.getInfo();
      userName.value = "getChainInfo2";
      userName.value = nodeInfo.toString();
    } catch (e) {
      print(e);
      userName.value = "getChainInfo4";
      userName.value = e.toString();
    }
  }

  void transfar() async {
    //EOSClient client = EOSClient('https://api.eosn.io', 'v1');
    EOSClient client = EOSClient('https://api.eosn.io', 'v1');
    client.privateKeys = [
      "5KTw6NpGvz84v4Goxug7sifTdM2iBuSbvm3b94rZWweWVkW1YGc"
    ];

    // Get EOS Node Info
    // NodeInfo nodeInfo = await client.getInfo();
    // userName.value = nodeInfo.toString();
    //print(nodeInfo.toString());

    List<Authorization> auth = [
      Authorization()
        ..actor = 'edenbettest4'
        ..permission = 'owner'
    ];

    Map data = {
      'from': 'edenbettest4',
      'to': 'edenbettest2',
      'quantity': '0.0001 EOS',
      'memo': 'aaaa',
    };

    List<Action> actions = [
      Action()
        ..account = 'eosio.token'
        ..name = 'transfer'
        ..authorization = auth
        ..data = data
    ];

    Transaction transaction = Transaction()..actions = actions;

    dynamic trx = await client.pushTransaction(transaction, broadcast: true);
    print(trx);
    userName.value = trx.toString();
  }
}
