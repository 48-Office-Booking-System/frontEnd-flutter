import 'package:flutter/material.dart';
import 'package:map_koba/components/color.dart';
import 'package:map_koba/components/result_state.dart';
import 'package:map_koba/model/list_model.dart';
import 'package:map_koba/services/remote_services.dart';
import 'package:map_koba/view_model/list_view_model.dart';
import 'package:provider/provider.dart';

class OfficeView extends StatefulWidget {
  static const routeName = '/office_widget';

  const OfficeView({ Key? key }) : super(key: key);

  @override
  State<OfficeView> createState() => _OfficeViewState();
}

class _OfficeViewState extends State<OfficeView> {
  
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
                  style: const TextStyle(
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
                const Center(
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
                const Center(
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
                const Text(
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
        padding: const EdgeInsets.all(12),
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
    return buildList(context);
  }
}
