import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skilltest_karyawan_apps/app/modules/karyawan/controllers/karyawan_controller.dart';

import '../controllers/add_karyawan_controller.dart';

class AddKaryawanView extends GetView<AddKaryawanController> {
  final addK = Get.put(AddKaryawanController());
  final karyawanC = Get.find<KaryawanController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Karyawan'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            SizedBox(height: 15),
            TextField(
              controller: addK.nameK,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: "Nama Lengkap Karyawan",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: addK.nikK,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: "NIK Karyawan",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: addK.phoneC,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              autocorrect: false,
              decoration: InputDecoration(
                labelText: "Nomor HP Karyawan",
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () => karyawanC.add(
                addK.nameK.text,
                addK.nikK.text,
                addK.phoneC.text,
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () => karyawanC.add(
                addK.nameK.text,
                addK.nikK.text,
                addK.phoneC.text,
              ),
              child: Text("TAMBAH KARYAWAN"),
            ),
          ],
        ),
      ),
    );
  }
}
