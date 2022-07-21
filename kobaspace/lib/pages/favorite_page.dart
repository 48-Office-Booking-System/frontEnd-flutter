import 'package:flutter/material.dart';
import 'package:kobaspace/components/result_state.dart';
import 'package:kobaspace/components/style.dart';
import 'package:kobaspace/models/list_model.dart';
import 'package:kobaspace/provider/database_provider.dart';
import 'package:kobaspace/provider/list_view_model.dart';
import 'package:kobaspace/services/remote_services.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatelessWidget {
  static const routeName = '/favorite_page';

  const FavoritePage({Key? key}) : super(key: key);

  // Widget buildList(BuildContext context) {
  //   return Consumer<DatabaseProvider>(
  //     builder: (context, provider, child) {
  //       if (provider.state == ResultState.loading) {
  //         return Center(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               SizedBox(
  //                 height: MediaQuery.of(context).size.height / 2,
  //               ),
  //               const CircularProgressIndicator(
  //                 color: ColorStyles.secondaryColor,
  //               ),
  //             ],
  //           ),
  //         );
  //       } else if (provider.state == ResultState.hasData) {
  //         return CustomScrollView(
  //           semanticChildCount: provider.favorites.length,
  //           slivers: [
  //             SliverSafeArea(
  //               sliver: SliverList(
  //                 delegate: SliverChildBuilderDelegate(
  //                   (context, index) {
  //                     if (index < provider.favorites.length) {
  //                       return RestaurantFavoriteItem(
  //                         restaurant: provider.favorites[index],
  //                       );
  //                     }
  //                     return null;
  //                   }
  //                 ),
  //               ),
  //             ),
  //           ],
  //         );
  //       } else if (provider.state == ResultState.noData) {
  //         return Center(
  //           child: Text(
  //             provider.message,
  //             style: GoogleFonts.roboto(
  //               fontSize: 16,
  //               fontWeight: FontWeight.w500,
  //               color: ColorStyles.tertiaryTextColor,
  //               decoration: TextDecoration.none,
  //             ),
  //           ),
  //         );
  //       } else if (provider.state == ResultState.error) {
  //         return Center(
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 height: MediaQuery.of(context).size.height / 2.5,
  //               ),
  //               Text(
  //                 "Error",
  //                 style: GoogleFonts.roboto(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w500,
  //                   color: ColorStyles.tertiaryTextColor,
  //                   decoration: TextDecoration.none,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       } else {
  //         return Center(
  //           child: Column(
  //             children: [
  //               SizedBox(
  //                 height: MediaQuery.of(context).size.height / 2.5,
  //               ),
  //               Text(
  //                 "Error",
  //                 style: GoogleFonts.roboto(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w500,
  //                   color: ColorStyles.tertiaryTextColor,
  //                   decoration: TextDecoration.none,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       }
  //     },
  //   );
  // }

  Widget buildList(BuildContext context) {
    late ListViewModel provider;

    return ChangeNotifierProvider<ListViewModel>(
      create: (_) => ListViewModel(remoteServices: RemoteServices()),
      child: Consumer<ListViewModel>(builder: (context, state, _) {
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
            height: 235,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                mainAxisExtent: 340,
              ),
              itemCount: office.length,
              itemBuilder: (context, index) {
                return buildOfficeListItem(context, office[index]);
              },
              padding: const EdgeInsets.all(0),
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
                  child: const Text("Retry"),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white
                  ),
                  onPressed: () {
                    provider.dataList();
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
        color: ColorStyles.cardbestseller,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
      child: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    SizedBox(
                      child: Image.network(
                        "${data.photoUrls![0].url}",
                        // "${data.photoUrls}",
                        height: 200,
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      child: IconButton(
                        alignment: Alignment.bottomRight,
                        iconSize: 25,
                        color: ColorStyles.primaryColor,
                        onPressed: (){}, 
                        icon: Icon(Icons.favorite),
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 20),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Text(
                        "${data.name}",
                        maxLines: 2,
                        style:
                        TextStyle(
                          fontSize: 16, 
                          fontFamily: 'avenir',
                          color: ColorStyles.primaryColor, 
                          fontWeight: FontWeight.w800),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 3),
                      Row(
                        children: List.generate(
                          5, 
                          (index) => Icon(
                            Icons.star,
                            color: ColorStyles.ratingColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        "${data.chairMax} orang",
                        maxLines: 2,
                        style:
                        TextStyle(
                          fontFamily: 'avenir',
                          color: ColorStyles.primaryColor, 
                          fontWeight: FontWeight.w800),
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Rp ${"${data.price}"}/jam',
                        style: TextStyle(
                          fontSize: 16,
                          color: ColorStyles.primaryColor, 
                          fontFamily: 'avenir')
                      ),
                      SizedBox(height: 3),
                      Center(
                        child: ElevatedButton(
                          onPressed: (){}, 
                          child: const Text("Pesan",
                          style: TextStyle(
                            fontSize: 16,
                            color: ColorStyles.textColor, 
                            fontFamily: 'avenir')
                          ),
                          style: ElevatedButton.styleFrom(
                            fixedSize: const Size(80, 35), primary: ColorStyles.buttonPesanColor),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),  
          ],
        ),
      ),
    ),
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Page'),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      body: buildList(context),
    );
  }
}

// class FavoritePage extends StatefulWidget {
//   const FavoritePage({ Key? key }) : super(key: key);

//   @override
//   State<FavoritePage> createState() => _FavoritePageState();
// }

// class _FavoritePageState extends State<FavoritePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Favorite Page'),
//         centerTitle: true,
//         backgroundColor: ColorStyles.secondaryColor,
//       ),
//       // body: OfficeView,
//     );
//   }
// }