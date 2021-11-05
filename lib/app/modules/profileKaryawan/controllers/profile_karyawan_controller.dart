import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileKaryawanController extends GetxController {
  late TextEditingController nameK;
  late TextEditingController nikK;
  late TextEditingController phoneC;

  @override
  void onInit() {
    super.onInit();
    nameK = TextEditingController();
    nikK = TextEditingController();
    phoneC = TextEditingController();
  }

  @override
  void dispose() {
    nameK.dispose();
    nikK.dispose();
    phoneC.dispose();
    super.dispose();
  }
}
