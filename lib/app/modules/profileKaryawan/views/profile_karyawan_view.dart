import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skilltest_karyawan_apps/app/data/models/karyawan.dart';
import 'package:skilltest_karyawan_apps/app/modules/karyawan/controllers/karyawan_controller.dart';

import '../controllers/profile_karyawan_controller.dart';

class ProfileKaryawanView extends GetView<ProfileKaryawanController> {
  final profileK = Get.put(ProfileKaryawanController());
  final karyawanC = Get.find<KaryawanController>();
  final String uid = Get.arguments;

  @override
  Widget build(BuildContext context) {
    final Karyawan karyawan = karyawanC.karyawanById(uid);
    profileK.nameK.text = karyawan.name!;
    profileK.nikK.text = karyawan.nik!;
    profileK.phoneC.text = karyawan.phone!;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Karyawan'),
        actions: [
          IconButton(
            onPressed: () => karyawanC.delete(uid).then(
              (deleted) {
                if (deleted) Get.back();
              },
            ),
            icon: Icon(Icons.delete_forever),
          ),
        ],
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 15),
            TextField(
              controller: profileK.nameK,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: profileK.nikK,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: profileK.phoneC,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () => karyawanC.edit(
                uid,
                profileK.nameK.text,
                profileK.nikK.text,
                profileK.phoneC.text,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => karyawanC.edit(
                uid,
                profileK.nameK.text,
                profileK.nikK.text,
                profileK.phoneC.text,
              ),
              child: Text("UPDATE KARYAWAN"),
            ),
          ],
        ),
      ),
    );
  }
}
