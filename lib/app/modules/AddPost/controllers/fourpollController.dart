import 'package:get/get.dart';

class fourPollController extends GetxController {
  // TextEditingController option1Controller = TextEditingController()
  //   ..addListener((){
  //     onchanged();
  //   });

  // void onchanged() {
  //   if (option1Controller.text.length > 20) {
  //     // ignore: avoid_print
  //     print("${option1Controller.text.length}");
  //   }
  // }

  // @override
  // void dispose() {
  //   option1Controller.dispose();
  //   super.dispose();
  // }

  dynamic option1text;
  dynamic option2text;
  dynamic option3text;
  dynamic option4text;

  @override
  void onInit() async {
    option1text = "".obs;
    option2text = "".obs;
    option3text = "".obs;
    option4text = "".obs;

    super.onInit();
  }

  onchanged() {
    print("lenfht more than 20 ");
    return;
  }
}
