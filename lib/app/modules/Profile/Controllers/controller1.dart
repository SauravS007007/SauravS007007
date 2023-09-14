import 'package:get/get.dart';
import 'package:racemose/app/modules/models/postModel.dart';
import 'package:racemose/app/modules/Profile/Providers/provider1.dart';

class ProfileController1 extends GetxController {
  late List<Welcome> list1 = <Welcome>[].obs;
  var listLength = 0.obs;
  // final List<String> urls = <String>[].obs;
  // final urlsLength = 0.obs;

  final DioClient _client = DioClient();
  @override
  onInit() async {
    // print(urls.runtimeType);

    super.onInit();
  }

  // late List<Welcome> list1 = <Welcome>[].obs;

  Future<List<Welcome>> getAll() async {
    if (list1.isEmpty) {
      list1 = await _client.getphotos();
      listLength.value = list1.length;
      return list1;
    }
    return list1;

    // final List<String> urls = list1.map((welcome) => welcome.url).toList();
    // urlsLength.value = urls.length;
  }
}
