import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../pages/home/home_view.dart';
import '../pages/login/login_view.dart';
import 'global_controller.dart';

class BootomNvPage extends StatelessWidget {
  //全局状态控制器
  final globalStateController = Get.put(GlobalStateController());
  var mainState = Get.find<GlobalStateController>().state;

  List bodyPageList = [
    HomePage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //主题
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Obx(() => bodyPageList[mainState.bottombar_index.value]),
        //底部导航条
        bottomNavigationBar: Obx(() => BottomNavigationBar(
              // 当前菜单下标
              currentIndex: mainState.bottombar_index.value,
              // 点击事件,获取当前点击的标签下标
              onTap: (int index) {
                globalStateController.changeBottomBarIndex(index);
              },
              iconSize: 10.0,
              fixedColor: Colors.red,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
                BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类")
              ],
            )));
  }
}
