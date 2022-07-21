import 'package:flutter/material.dart';
import 'package:map_koba/model/detail_model.dart';
import 'package:map_koba/model/list_model.dart';
import 'package:map_koba/view_model/detail_view_model.dart';
import 'package:provider/provider.dart';

class DataWidget extends StatelessWidget {
  final Data detailData;
  final DetailViewModel providers;
  final Datum listData;

  const DataWidget({Key? key, required this.detailData, required this.providers, required this.listData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
        builder: (context, provider, child) {
          return Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Text(
                        "${listData.name}",
                        // listData.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      "${listData.description}",
                      // listData.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "latitude : ${listData.latitude}",
                      // 'latitude : ' + listData.latitude,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "latitude : ${listData.longitude}",
                      // 'longitude : ' + listData.longitude,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    Text(
                      "view count : ${listData.viewCount.toString()}",
                      // 'view count : ' + listData.viewCount.toString(),
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                    // Text(
                    //   'price : ' + listData.price.toString(),
                    //   style: TextStyle(
                    //     fontSize: 14,
                    //     color: Colors.black54,
                    //   ),
                    // ),
                    // Text(
                    //   'chair min : ' + listData.chairMin.toString(),
                    //   style: TextStyle(
                    //     fontSize: 14,
                    //     color: Colors.black54,
                    //   ),
                    // ),
                    // Text(
                    //   'chair max : ' + listData.chairMax.toString(),
                    //   style: TextStyle(
                    //     fontSize: 14,
                    //     color: Colors.black54,
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          );
        });
  }
}
