import 'package:get/get.dart';

import '../controllers/profile_karyawan_controller.dart';

class ProfileKaryawanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProfileKaryawanController>(
      () => ProfileKaryawanController(),
    );
  }
}
