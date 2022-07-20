import 'package:flutter/material.dart';
import 'package:kobaspace/components/result_state.dart';
import 'package:kobaspace/components/style.dart';
import 'package:kobaspace/models/detail_model.dart';
import 'package:kobaspace/models/list_model.dart';
import 'package:kobaspace/provider/detail_view_model.dart';
import 'package:kobaspace/services/remote_services.dart';
import 'package:provider/provider.dart';

class DetailPage extends StatefulWidget {
  static const routeName = '/detail_page';

  final DetailModel detailModel;

  const DetailPage({Key? key, required this.detailModel}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var inputController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  var dropdownValue = 0;

  Widget buildList(BuildContext context) {
    late DetailViewModel provider;

    return ChangeNotifierProvider<DetailViewModel>(
      create: (_) => DetailViewModel(remoteServices: RemoteServices()),
      child: Consumer<DetailViewModel>(builder: (context, state, _) {
        provider = state;
        if (state.state == ResultState.loading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.blue,
            ),
          );
        } else if (state.state == ResultState.hasData) {
          final List<Datum> office = state.result;
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  ListView.builder(
                    itemCount: office.length,
                    itemBuilder: (context, index) {
                      return buildOfficeListItem(context, office[index]);
                    },
                  ),
                ],
              ),
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
                    provider.dataDetail();
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

  Widget buildOfficeListItem(BuildContext context, Datum data) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10,
        ),
        SizedBox(
          child: Image.asset('',
            // data.img,
            height: 175,
            width: 403,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          data.name,
          style: const TextStyle(
            fontSize: 20, 
            fontFamily: 'avenir',
            color: ColorStyles.textColor, 
            fontWeight: FontWeight.w800
          ),
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
              borderRadius: BorderRadius.circular(8)
            ),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 20,
                  color: ColorStyles.primaryColor,
                  onPressed: (){}, 
                  icon: const Icon(Icons.person),
                ),
                // const SizedBox(width: 2),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '',
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
          data.description,
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
          data.latitude,
          style: const TextStyle(
            fontSize: 16, 
            fontFamily: 'avenir',
            color: ColorStyles.searchiconColor, 
            fontWeight: FontWeight.w800
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          data.longitude,
          style: const TextStyle(
            fontSize: 16, 
            fontFamily: 'avenir',
            color: ColorStyles.searchiconColor, 
            // fontWeight: FontWeight.w800
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          child: Image.asset(
            "assets/images/maps.png",
            height: 150,
            width: 403,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 20,
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
        const SizedBox(
          height: 20,
        ),
        Text(
          'Fasilitas',
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
          '',
          style: const TextStyle(
            fontSize: 16, 
            fontFamily: 'avenir',
            color: ColorStyles.searchiconColor, 
            // fontWeight: FontWeight.w800
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          'Review',
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
        // ReviewWidget(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorStyles.secondaryColor,
        centerTitle: true,
        title: Text(
          'Detail',
          style: const TextStyle(
            color: ColorStyles.blackColor,
          ),
        ),
        actions: [
          IconButton(
            color: ColorStyles.textColor,
            iconSize: 27,
            onPressed: (){
            }, 
            icon: const Icon(Icons.chat)
          ),
        ],
        leading: const BackButton(color: ColorStyles.textColor)
      ),
      body: buildList(context),
    );
  }
}