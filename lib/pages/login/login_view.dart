import 'package:flutter/material.dart';
import 'package:onetalk2/pages/login/login_controller.dart';
import 'package:get/get.dart';

import '../../router/app_pages.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   body: GestureDetector(
    //     onTap: () => Get.offAndToNamed(AppRoutes.Home),
    //     child: Container(
    //       child: Center(
    //         child: Text('登录页'),
    //       ),
    //     ),
    //   ),
    // );

    return Container(
      child: Center(
        child: Text('登录页'),
      ),
    );

    // return Container(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       Text("登录页"),
    //       TextButton(onPressed: () => controller.login(), child: Text('获取信息')),
    //     ],
    //   ),
    // );
  }
}
