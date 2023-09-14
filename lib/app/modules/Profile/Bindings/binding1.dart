import 'package:get/get.dart';
import 'package:racemose/app/modules/Profile/Controllers/controller1.dart';

class HomeBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileController1>(() => ProfileController1());
  }
}
