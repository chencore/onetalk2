import 'package:flutter/material.dart';
import 'package:onetalk2/global.dart';
import 'package:onetalk2/pages/Index/Index_controller.dart';
import 'package:onetalk2/pages/home/home_view.dart';
import 'package:onetalk2/pages/login/login_view.dart';
import 'package:onetalk2/pages/splash/spalsh_view.dart';
import 'package:get/get.dart';

import '../../components/bootom_nvpage.dart';

/** */
class IndexPage extends GetView<IndexController> {
  const IndexPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: controller.isloadWelcomePage.isTrue
            ? SplashPage()
            : Global.isOfflineLogin
                ? HomePage()
                : LoginPage(),
        bottomNavigationBar: BottomNavigationBar(
          // 当前菜单下标
          currentIndex: 0,
          // 点击事件,获取当前点击的标签下标sww
          // onTap: (int index) {
          //   globalStateController.changeBottomBarIndex(index);
          // },
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
