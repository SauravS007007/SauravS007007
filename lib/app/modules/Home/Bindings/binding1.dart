import 'package:get/get.dart';
import 'package:racemose/app/modules/Home/Contollers/controller1.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController1>(() => HomeController1());
  }
}
