import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 25),
            AvatarGlow(
              endRadius: 115,
              glowColor: Colors.black,
              child: Container(
                margin: EdgeInsets.all(15),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black38,
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/foto.jpeg",
                      ),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Text(
              "Data Diri",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Nama: "),
                    Text("Nafis El Qurtubhi"),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Umur: "),
                    Text("23 Tahun"),
                  ],
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tinggal: "),
                    Text("Jakarta Barat"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
