import 'package:flutter/material.dart';
import 'package:map_koba/components/color.dart';
import 'package:map_koba/components/result_state.dart';
import 'package:map_koba/model/list_model.dart';
import 'package:map_koba/pages/detail_page.dart';
import 'package:map_koba/services/remote_services.dart';
import 'package:map_koba/view_model/list_view_model.dart';
import 'package:provider/provider.dart';

class BookingView extends StatefulWidget {
  const BookingView({ Key? key }) : super(key: key);

  @override
  State<BookingView> createState() => _BookingViewState();
}

class _BookingViewState extends State<BookingView> {
  get id => null;


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
          final List<Datum> office = state.result;
          return SizedBox(
            height: 540,
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 220,
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

  Widget buildOfficeListItem(BuildContext context, Datum data) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DetailPage.routeName, arguments: data.id);
      },
      child: Card(
        color: ColorStyles.cardbestseller,
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5)
        ),
      child: Container(
        padding: const EdgeInsets.all(0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                SizedBox(
                  child: Image.network(
                    "${data.photoUrls![0].url}",
                    // "${data.photoUrls![0].url}",
                    height: 160,
                    width: 260,
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
            const SizedBox(height: 3),
            Text(
              "${data.name}",
              maxLines: 2,
              style:
              const TextStyle(
                fontSize: 16, 
                fontFamily: 'avenir',
                color: ColorStyles.primaryColor, 
                fontWeight: FontWeight.w800),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 3),
            Text(
              'Rp ${"${data.price}"}/jam',
              style: const TextStyle(
                fontSize: 16,
                color: ColorStyles.primaryColor, 
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

