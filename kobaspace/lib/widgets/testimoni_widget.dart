import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:kobaspace/components/result_state.dart';
import 'package:kobaspace/components/style.dart';
import 'package:kobaspace/models/review_model.dart';
import 'package:kobaspace/provider/review_view_model.dart';
import 'package:kobaspace/services/remote_services.dart';
import 'package:provider/provider.dart';

class TestimoniView extends StatefulWidget {
  const TestimoniView({ Key? key }) : super(key: key);

  @override
  State<TestimoniView> createState() => _TestimoniViewState();
}

class _TestimoniViewState extends State<TestimoniView> {
  Widget buildList(BuildContext context) {
    late ReviewViewModel provider;

    return ChangeNotifierProvider<ReviewViewModel>(
      create: (_) => ReviewViewModel(remoteServices: RemoteServices()),
      child: Consumer<ReviewViewModel>(builder: (context, state, _) {
        provider = state;
        if (state.state == ResultState.loading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          );
        } else if (state.state == ResultState.hasData) {
          final List<Data> office = state.result;
          return SizedBox(
            height: 265,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 230,
              ),
              itemCount: office.length,
              itemBuilder: (context, index) {
                return buildOfficeListItem(context, office[index]);
              },
              padding: const EdgeInsets.all(10),
            ),
          );
        } else if (state.state == ResultState.noData) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                ),
                Text(
                  state.message,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
        } else if (state.state == ResultState.error) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    "No Connection!",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 5),
                Center(
                  child: Text(
                    "Please check your connection or try again later.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.none,
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  child: const Text(
                    "Retry", 
                    style: TextStyle(
                      color: ColorStyles.blackColor,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                  ),
                  onPressed: () {
                    provider.dataReview();
                  },
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height / 2.5,
                ),
                Text(
                  "Error",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          );
        }
      }),
    );
  }

  Widget buildOfficeListItem(BuildContext context, Data data) {
    return InkWell(
      onTap: () {
      // Navigator.of(context).push(
      // MaterialPageRoute(builder: (_) => DetailPage(buildingModel: building,)));
      },
      child: Card(
        // color: ColorStyles.cardbestseller,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
      child: Container(
        padding: EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.network(
                "${data.office?.photoUrls}",
                // "${data.photoUrls}",
                height: 140,
                width: 240,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 3),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RatingBarIndicator(
                  rating: data.star! / 1,
                  itemCount: data.star!,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: ColorStyles.ratingColor,
                  ),
                  itemSize: 24,
                ),
                // Text('${data.star}')
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     const Icon(
            //       Icons.star,
            //       size: 16,
            //       color: ColorStyles.ratingColor,
            //     ),
            //     const SizedBox(width: 3),
            //     Text(
            //       data.star.toString(),
            //       style: GoogleFonts.roboto(
            //         fontSize: 14,
            //         fontWeight: FontWeight.bold,
            //         color: ColorStyles.blackColor,
            //       ),
            //     ),
            //   ],
            // ),
            const SizedBox(height: 3),
            Text(
              "${data.text}",
              maxLines: 2,
              style:
              TextStyle(
                fontSize: 14, 
                fontFamily: 'avenir',
                color: ColorStyles.textColor, 
                fontWeight: FontWeight.w800),
              // overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 3),
            Text(
              '\-${"${data.user?.name}"}-',
              style: TextStyle(
                fontSize: 14,
                color: ColorStyles.textColor, 
                fontFamily: 'avenir')
            ),
          ],
        ),
      ),
    ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return buildList(context);
  }
}