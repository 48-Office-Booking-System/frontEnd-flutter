import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quba_mp/main.dart';
import 'package:quba_mp/model/surah_model.dart';
import 'package:quba_mp/screen/home.dart';
import 'package:quba_mp/screen/reading_page.dart';
import 'package:quran/quran.dart';
import 'package:quran/surah_data.dart';

class IntroductionScreen {
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
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomePage()),
                // );
              },
              child: Text("Mulai dengan Bismillah"),
            ),
          ],
        ),
      ),
    );
  }
}
