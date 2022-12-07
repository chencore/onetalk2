//全局状态控制器
import 'package:get/get.dart';

import 'main_state.dart';

class GlobalStateController extends GetxController {
  MainState state = MainState();
  //改变底部导航栏索引
  changeBottomBarIndex(int index) {
    state.bottombar_index.value = index;
    print(state.bottombar_index.value);
  }
}
