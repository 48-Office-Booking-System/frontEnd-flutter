import 'package:map_koba/components/color.dart';
import 'package:flutter/material.dart';
import 'package:map_koba/model/office_model.dart';
import 'package:map_koba/view_model/office_view_model.dart';
import 'package:map_koba/view_model/review_view_model.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Favorite'),
      //   centerTitle: true,
      //   backgroundColor: ColorStyles.secondaryColor,
      // ),
      backgroundColor: ColorStyles.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset(
                "assets/images/favorit.png",
                height: 250,
                width: 250,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Belum ada ruangan yang anda sukai',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Work Sans',
                color: ColorStyles.textColor,
                // fontWeight: FontWeight.w800
              ),
            ),
          ],
        ),
      ),
    );
  }
}
