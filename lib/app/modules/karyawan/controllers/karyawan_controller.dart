import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:skilltest_karyawan_apps/app/data/models/karyawan.dart';

class KaryawanController extends GetxController {
  var karyawan = List<Karyawan>.empty().obs;

  void snackBarError(String msg) {
    Get.snackbar(
      "ERROR",
      msg,
      duration: Duration(seconds: 2),
    );
  }

  void add(String name, String nik, String phone) {
    if (name != '' && nik != '' && phone != '') {
      karyawan.add(
        Karyawan(
          id: DateTime.now().toString(),
          name: name,
          nik: nik,
          phone: phone,
        ),
      );
      Get.back();
    } else {
      snackBarError("Semua Data Harus Diisini");
    }
  }

  Karyawan karyawanById(String id) {
    return karyawan.firstWhere((element) => element.id == id);
  }

  void edit(String id, String name, String nik, String phone) {
    if (name != '' && nik != '' && phone != '') {
      final user = karyawanById(id);
      user.name = name;
      user.nik = nik;
      user.phone = phone;
      karyawan.refresh();
      Get.back();
    } else {
      snackBarError("Semua Data Harus Diisini");
    }
  }

  Future<bool> delete(String id) async {
    bool _deleted = false;
    await Get.defaultDialog(
      title: "DELETE",
      middleText: "Apakah kamu yakin akan menghapus karyawan ini?",
      textConfirm: "Ya",
      confirmTextColor: Colors.white,
      onConfirm: () {
        karyawan.removeWhere((element) => element.id == id);
        _deleted = true;
        Get.back();
      },
      textCancel: "Tidak",
    );
    return _deleted;
  }
}
