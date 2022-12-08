import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:onetalk2/pages/home/home.binding.dart';
import 'package:onetalk2/pages/home/home_view.dart';
import 'package:onetalk2/pages/login/login_binding.dart';
import 'package:onetalk2/pages/login/login_view.dart';
import 'package:onetalk2/pages/my/my_binding.dart';
import 'package:onetalk2/pages/my/my_view.dart';

class IndexController extends GetxController {
  static IndexController get to => Get.find();

  // 是否展示欢迎页
  var isloadWelcomePage = true.obs;
  var currentIndex = 0.obs;

  //final pages = <String>['/home', '/my'];
  final pages = <String>['/home', '/my'];
  // final List pages = [
  //   HomePage(),
  //   MyPage(),
  // ];
  void changePage(int index) {
    currentIndex.value = index;
    print(index);
    //Get.toNamed(pages[index]);
    Get.offNamedUntil(
      pages[index],
      (page) => page.settings.name == '/login',
      id: 1,
    );
  }

  void testInvoke(String val) {
    print(val);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == '/login')
      return GetPageRoute(
        settings: settings,
        page: () => LoginPage(),
        binding: LoginBinding(),
      );

    if (settings.name == '/my')
      return GetPageRoute(
        settings: settings,
        page: () => MyPage(),
        binding: MyBinding(),
      );

    if (settings.name == '/home')
      return GetPageRoute(
        settings: settings,
        page: () => HomePage(),
        binding: HomeBinding(),
      );
    return null;
  }
}
