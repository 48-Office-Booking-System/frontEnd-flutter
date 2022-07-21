import 'package:flutter/material.dart';
import 'package:map_koba/components/color.dart';
import 'package:map_koba/model/detail_model.dart';
import 'package:map_koba/view_model/detail_view_model.dart';

class DataWidget extends StatelessWidget {
  final Data detailData;
  final DetailViewModel providers;

  const DataWidget({Key? key, required this.detailData, required this.providers}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              SizedBox(
                child: Image.asset(
                  '${detailData.photoUrls![0].url}',
                  height: 175,
                  width: 403,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                '${detailData.name}',
                style: const TextStyle(
                    fontSize: 20,
                    fontFamily: 'avenir',
                    color: ColorStyles.textColor,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                width: 110,
                height: 40,
                child: Card(
                  color: ColorStyles.cardbestseller,
                  // elevation: 1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      IconButton(
                        iconSize: 20,
                        color: ColorStyles.primaryColor,
                        onPressed: () {},
                        icon: const Icon(Icons.person),
                      ),
                      // const SizedBox(width: 2),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${detailData.chairMin} - ${detailData.chairMax}',
                            style: const TextStyle(
                              fontSize: 15,
                              fontFamily: 'avenir',
                              color: ColorStyles.primaryColor,
                              // fontWeight: FontWeight.w800
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: List.generate(
                  5,
                  (index) => Icon(
                    Icons.star,
                    color: ColorStyles.ratingColor,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${detailData.description}',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'avenir',
                  color: ColorStyles.blackColor,
                  // fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Lokasi',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'avenir',
                  color: ColorStyles.blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${detailData.latitude}',
                style: const TextStyle(
                    fontSize: 16,
                    fontFamily: 'avenir',
                    color: ColorStyles.searchiconColor,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                '${detailData.longitude}',
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'avenir',
                  color: ColorStyles.searchiconColor,
                  // fontWeight: FontWeight.w800
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Ketersediaan',
                style: const TextStyle(
                  fontSize: 18,
                  fontFamily: 'avenir',
                  color: ColorStyles.blackColor,
                  fontWeight: FontWeight.w800,
                ),
              ),
              // const SizedBox(
              //   height: 5,
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Text(
              //   'Fasilitas',
              //   style: const TextStyle(
              //     fontSize: 18,
              //     fontFamily: 'avenir',
              //     color: ColorStyles.blackColor,
              //     fontWeight: FontWeight.w800,
              //   ),
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // Text(
              //   '${detailData.number}',
              //   style: const TextStyle(
              //     fontSize: 16,
              //     fontFamily: 'avenir',
              //     color: ColorStyles.searchiconColor,
              //     // fontWeight: FontWeight.w800
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Text(
              //   'Review',
              //   style: const TextStyle(
              //     fontSize: 18,
              //     fontFamily: 'avenir',
              //     color: ColorStyles.blackColor,
              //     fontWeight: FontWeight.w800,
              //   ),
              // ),
              // const SizedBox(
              //   height: 5,
              // ),
              // ReviewWidget(),
              // const SizedBox(
              //   height: 5,
              // ),
              // EndDetailWidget(detailData: detailData, providers: detailData,),
            ],
          ),
        ),
      ],
    );
  }
}