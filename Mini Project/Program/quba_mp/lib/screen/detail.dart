import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quba_mp/view_model/detail_view_model.dart';
import 'package:quba_mp/view_model/home_view_model.dart';
import 'dart:convert';

class DetailPage extends StatelessWidget {
  final String surah;
  DetailPage({required this.surah});

  @override
  Widget build(BuildContext context) {
    // final surah = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
        appBar: AppBar(
          title: const Text("Tafsir Surah"),
        ),
        body: FutureBuilder<void>(
            future: Provider.of<HomeViewModel>(context, listen: false)
                .getAllResult(),
            builder: (context, AsyncSnapshot<void> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                final result = Provider.of<HomeViewModel>(context).result;
                return PageView.builder(
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Scaffold(
                          body: Center(
                        child: Container(
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(
                                            5, 5), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.deepPurple,
                                  ),
                                  width:
                                      (MediaQuery.of(context).size.width - 50),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 50,
                                        ),
                                        child: Text(
                                          "${result[int.parse(surah) - 1].name?.short}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 48,
                                            fontFamily: 'Macondo',
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 50,
                                        ),
                                        child: Text(
                                          "${result[int.parse(surah) - 1].name?.transliteration?.id} (${result[int.parse(surah) - 1].name?.translation?.id})",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 50,
                                        ),
                                        child: Text(
                                          "Surah ke: ${result[int.parse(surah) - 1].number} | Jumlah ayat: ${result[int.parse(surah) - 1].numberOfVerses}",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(
                                            5, 5), // changes position of shadow
                                      ),
                                    ],
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20)),
                                    color: Colors.deepPurple,
                                  ),
                                  width:
                                      (MediaQuery.of(context).size.width - 50),
                                  child: Column(
                                    children: [
                                      SizedBox(height: 20),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 30,
                                        ),
                                        child: Text(
                                          "${result[int.parse(surah) - 1].tafsir?.id}",
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 16,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 20),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 20),
                              ],
                            ),
                          ),
                        ),
                      ));
                    });
              }
            }));
  }
}
