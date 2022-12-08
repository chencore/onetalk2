import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Text("aaaaa"),
    // );

    return Scaffold(
      appBar: AppBar(title: Text('History')),
      body: Center(
        child: Container(
          child: Text("aaaaa"),
        ),
      ),
    );
  }
}
