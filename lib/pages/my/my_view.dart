import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'my_controller.dart';

class MyPage extends GetView<MyController> {
  const MyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的')),
      body: Center(
        child: Container(
          child: Text("我的"),
        ),
      ),
    );
  }
}
