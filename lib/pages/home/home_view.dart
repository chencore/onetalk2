import 'package:flutter/material.dart';
import 'package:onetalk2/pages/home/home_controller.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Obx(() => Center(child: Text(controller.count.toString()))),
    //       TextButton(
    //           onPressed: () => controller.increment(),
    //           child: Text('1111count++')),
    //       GetBuilder<HomeController>(builder: (_) {
    //         return Text(controller.userName);
    //       }),
    //       TextButton(
    //           onPressed: () => controller.changeUserName(),
    //           child: Text('changeName')),
    //     ],
    //   ),
    // );

    return Scaffold(
      appBar: AppBar(title: Text('Browse')),
      body: Center(
        child: Container(
          child: Text(Get.find<HomeController>().userName.value),
        ),
      ),
    );
  }
}
