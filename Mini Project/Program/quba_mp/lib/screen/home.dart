import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quba_mp/screen/detail.dart';
import 'package:quba_mp/view_model/home_view_model.dart';
import 'package:quran/surah_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List Surah Alquran"),
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
                return ListView.builder(
                    itemCount: result.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: Text("${result[index].number}"),
                        trailing: Text(
                          "${result[index].name?.short}",
                          style:
                              TextStyle(color: Colors.deepPurple, fontSize: 15),
                        ),
                        title: Text(
                            "Surah ${result[index].name?.transliteration?.id}"),
                        onTap: () {
                          // Navigator.of(context).pushNamed('/detail', arguments: result[index].number.toString());
                          Navigator.of(context).push(
                        PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) {
                          return DetailPage(surah: result[index].number.toString());
                        }, transitionDuration: Duration(milliseconds: 1500),
                        transitionsBuilder:
                                (context, animation, secondaryAnimation, child) {
                          final tween =
                              Tween(begin: const Offset(5, 0), end: Offset.zero);
                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        }));
                        },
                      );
                    });
              }
            }));
  }
}
