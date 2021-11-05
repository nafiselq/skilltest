import 'package:get/get.dart';

import 'package:skilltest_karyawan_apps/app/modules/addKaryawan/bindings/add_karyawan_binding.dart';
import 'package:skilltest_karyawan_apps/app/modules/addKaryawan/views/add_karyawan_view.dart';
import 'package:skilltest_karyawan_apps/app/modules/home/bindings/home_binding.dart';
import 'package:skilltest_karyawan_apps/app/modules/home/views/home_view.dart';
import 'package:skilltest_karyawan_apps/app/modules/karyawan/bindings/karyawan_binding.dart';
import 'package:skilltest_karyawan_apps/app/modules/karyawan/views/karyawan_view.dart';
import 'package:skilltest_karyawan_apps/app/modules/profileKaryawan/bindings/profile_karyawan_binding.dart';
import 'package:skilltest_karyawan_apps/app/modules/profileKaryawan/views/profile_karyawan_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.KARYAWAN,
      page: () => KaryawanView(),
      binding: KaryawanBinding(),
    ),
    GetPage(
      name: _Paths.ADD_KARYAWAN,
      page: () => AddKaryawanView(),
      binding: AddKaryawanBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE_KARYAWAN,
      page: () => ProfileKaryawanView(),
      binding: ProfileKaryawanBinding(),
    ),
  ];
}
