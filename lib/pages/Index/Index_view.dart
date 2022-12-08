import 'package:flutter/material.dart';
import 'package:onetalk2/pages/Index/Index_controller.dart';
import 'package:get/get.dart';

/** */
class IndexPage extends GetView<IndexController> {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: '/home',
          onGenerateRoute: controller.onGenerateRoute,
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              // 当前菜单下标
              currentIndex: controller.currentIndex.value,
              // 点击事件,获取当前点击的标签下标sww
              onTap: (int index) {
                print(index);
                controller.changePage(index);
              },
              iconSize: 10.0,
              fixedColor: Colors.red,
              type: BottomNavigationBarType.fixed,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.home), label: "Browse"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.category), label: "History")
              ],
            )));
  }
}
