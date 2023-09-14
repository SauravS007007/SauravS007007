import 'dart:io';

// import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:racemose/app/modules/AddPost/Views/view1.dart';

class AddPostController extends GetxController {
  @override
  void onInit() {
    pickImage(ImageSource.gallery);
    super.onInit();
  }

  var option1 = ''.obs;
  var option2 = ''.obs;
  var opiton3 = ''.obs;
  var opiton4 = ''.obs;

  var selectedImagePath = ''.obs;
  var selectedImageSize = ''.obs;

  var cropImagePath = ''.obs;
  var cropImageSize = ''.obs;

  var compressImagePath = ''.obs;
  var compressImageSize = ''.obs;

  void pickImage(ImageSource imageSource) async {
    final pickedFile =
        await ImagePicker().pickImage(source: imageSource, imageQuality: 100);
    if (pickedFile != null) {
      selectedImagePath.value = pickedFile.path;
      selectedImageSize.value =
          ((File(selectedImagePath.value)).lengthSync() / 1024 / 1024)
                  .toStringAsFixed(2) +
              " Mb";
    } else {
      Get.off(() => AddPostView2());

      return;
    }

    // Crop
    final cropImageFile = await ImageCropper().cropImage(
        sourcePath: selectedImagePath.value,
        compressQuality: 50,
        // cropStyle: CropStyle.rectangle,
        compressFormat: ImageCompressFormat.jpg);
    if (cropImageFile?.path == null) {
      Get.off(() => AddPostView2());
      return;
    }
    cropImagePath.value = cropImageFile!.path;
    cropImageSize.value =
        ((File(cropImagePath.value)).lengthSync() / 1024 / 1024)
                .toStringAsFixed(2) +
            " Mb";

    // final dir = Directory.systemTemp;
    // final targetPath = dir.absolute.path + "/temp.jpg";
    // var compressedFile = await FlutterImageCompress.compressAndGetFile(
    //     cropImagePath.value, targetPath,
    //     quality: 90);
    // compressImagePath.value = compressedFile!.path;
    // compressImageSize.value =
    //     ((File(compressImagePath.value)).lengthSync() / 1024 / 1024)
    //             .toStringAsFixed(2) +
    //         " Mb";
  }

  @override
  void onClose() {
    Get.back();
    super.onClose();
  }
}
