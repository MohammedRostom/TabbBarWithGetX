import 'package:cart_model/controller/tabBar_controller.dart';
import 'package:get/get.dart';

class bidinges extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => tabBar_controller());
  }
}
