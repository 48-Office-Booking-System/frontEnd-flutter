import 'package:quba_app/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "QUBA ",
              style: TextStyle(
                fontSize: 80,
                fontFamily: 'Macondo',
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 50,
              ),
              child: Text(
                "Alquran diturunkan untuk menjadi obat bagi penyakit manusia dan rahmat bagi orang-orang yang beriman(QS.Al-Isra:82)",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 300,
              height: 300,
              child: Lottie.asset(
                "assets/lotties/animasi1.json",
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.purple),
              ),
              onPressed: () => Get.offAllNamed(Routes.HOME),
              child: Text("Mulai dengan Bismillah"),
            ),
          ],
        ),
      ),
    );
  }
}
