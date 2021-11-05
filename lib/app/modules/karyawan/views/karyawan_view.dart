import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:skilltest_karyawan_apps/app/routes/app_pages.dart';

import '../controllers/karyawan_controller.dart';

class KaryawanView extends GetView<KaryawanController> {
  final karyawanC = Get.put(KaryawanController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Karyawan'),
        actions: [
          IconButton(
            onPressed: () => Get.toNamed(Routes.ADD_KARYAWAN),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.all(20),
            child: karyawanC.karyawan.isEmpty
                ? Center(child: Text("Belum ada Karyawan"))
                : ListView.builder(
                    itemCount: karyawanC.karyawan.length,
                    itemBuilder: (context, i) => ListTile(
                      leading: CircleAvatar(),
                      title: Text("${karyawanC.karyawan[i].name}"),
                      subtitle: Text("${karyawanC.karyawan[i].nik}"),
                      trailing: IconButton(
                        onPressed: () =>
                            karyawanC.delete(karyawanC.karyawan[i].id),
                        icon: Icon(
                          Icons.delete_forever,
                          color: Colors.red[900],
                        ),
                      ),
                      onTap: () => Get.toNamed(Routes.PROFILE_KARYAWAN,
                          arguments: karyawanC.karyawan[i].id),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
