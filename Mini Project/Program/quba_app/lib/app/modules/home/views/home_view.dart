import 'package:quba_app/app/data/models/surah.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class Home extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Beranda'),
        backgroundColor: Colors.purple,
        centerTitle: true,
      ),
      body: FutureBuilder<List<Surah>>(
        future: controller.getAllSurah(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (!snapshot.hasData) {
            return Center(
              child: Text("Tidak ada data."),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              Surah surah = snapshot.data![index];
              return ListTile(
                onTap: () {},
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                  child: Text("${surah.number}"),
                ),
                title: Text("${surah.name?.transliteration?.id ?? 'Error..'}"),
                subtitle: Text(
                    "${surah.numberOfVerses} Ayat | ${surah.revelation?.id ?? 'Error..'}"),
                trailing: Text("${surah.name?.short ?? 'Error..'}"),
              );
            },
          );
        },
      ),
    );
  }
}
