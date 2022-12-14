import 'package:flutter/material.dart';
import 'package:onetalk2/pages/home/home_controller.dart';
import 'package:get/get.dart';
import 'package:eos_flutter_plugin/TPListener.dart';
import 'package:eos_flutter_plugin/tp_flutter_plugin.dart';

class HomePage extends GetView<HomeController> implements TPListener {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TpFlutterPlugin.addTPListener(this);
    return Scaffold(
        appBar: AppBar(title: Text('Browse')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Center(child: Text(controller.userName.value))),
            TextButton(
                onPressed: () => controller.getChainInfo(),
                child: Text('获取当前链信息')),
            TextButton(
                onPressed: () => controller.transfar(), child: Text('转账')),
            // Obx(() => TextButton(
            //     onPressed: () => controller.invokeIndexMethod("aaaa"),
            //     child: Text("${controller.btnTaskName.value}"))),
            Obx(() => TextButton(
                onPressed: () => controller.startTask(),
                child: Text(controller.btnTaskName.value))),
            TextButton(
                onPressed: () async {
                  //String val = await TpFlutterPlugin.authorize("授权");
                  String val = await TpFlutterPlugin.transfer(
                      "edenbettest4",
                      "edenbettest2",
                      "eosio.token",
                      "EOS",
                      "0.0001",
                      "testaab");
                  print(val);
                },
                child: Text('调用TP')),
          ],
        ));
  }

  @override
  void receiveMsg(String message) {
    print(message);
  }
}
