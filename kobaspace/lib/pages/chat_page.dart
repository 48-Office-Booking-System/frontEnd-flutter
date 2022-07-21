import 'package:flutter/material.dart';
// import 'package:kobaspace/components/result_state.dart';
import 'package:kobaspace/components/style.dart';
// import 'package:kobaspace/models/list_model.dart';
// import 'package:kobaspace/provider/list_view_model.dart';
// import 'package:kobaspace/services/remote_services.dart';
// import 'package:provider/provider.dart';

class ChatPage extends StatelessWidget {
  static const routeName = '/chat_page';

  const ChatPage({Key? key}) : super(key: key);

  // Widget buildList(BuildContext context) {
  //   late ListViewModel provider;

  //   return ChangeNotifierProvider<ListViewModel>(
  //     create: (_) => ListViewModel(remoteServices: RemoteServices()),
  //     child: Consumer<ListViewModel>(builder: (context, state, _) {
  //       provider = state;
  //       if (state.state == ResultState.loading) {
  //         return const Center(
  //           child: CircularProgressIndicator(
  //             color: Colors.blue,
  //           ),
  //         );
  //       } else if (state.state == ResultState.hasData) {
  //         final List<Datum> restaurant = state.result;
  //         return ListView.builder(
  //           itemCount: restaurant.length,
  //           itemBuilder: (context, index) {
  //             return buildRestaurantListItem(context, restaurant[index]);
  //           },
  //         );
  //       } else if (state.state == ResultState.noData) {
  //         return Center(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               SizedBox(
  //                 height: MediaQuery.of(context).size.height / 2.5,
  //               ),
  //               Text(
  //                 state.message,
  //                 style: TextStyle(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w500,
  //                   color: Colors.grey,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       } else if (state.state == ResultState.error) {
  //         return Center(
  //           child: Column(
  //             mainAxisAlignment: MainAxisAlignment.center,
  //             children: [
  //               Center(
  //                 child: Text(
  //                   "No Connection!",
  //                   style: TextStyle(
  //                     fontSize: 14,
  //                     fontWeight: FontWeight.w500,
  //                     decoration: TextDecoration.none,
  //                     color: Colors.grey,
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(height: 5),
  //               Center(
  //                 child: Text(
  //                   "Please check your connection or try again later.",
  //                   style: TextStyle(
  //                     fontSize: 14,
  //                     fontWeight: FontWeight.w500,
  //                     decoration: TextDecoration.none,
  //                     color: Colors.grey,
  //                   ),
  //                 ),
  //               ),
  //               const SizedBox(height: 10),
  //               ElevatedButton(
  //                 child: const Text("Retry"),
  //                 style: ElevatedButton.styleFrom(
  //                   primary: Colors.white
  //                 ),
  //                 onPressed: () {
  //                   provider.dataList();
  //                 },
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
  //                 style: TextStyle(
  //                   fontSize: 16,
  //                   fontWeight: FontWeight.w500,
  //                   color: Colors.grey,
  //                 ),
  //               ),
  //             ],
  //           ),
  //         );
  //       }
  //     }),
  //   );
  // }

  // Widget buildRestaurantListItem(BuildContext context, Datum data) {
  //   return SizedBox(
  //     height: 83,
  //     child: Column(
  //       children: [
  //         Card(
  //           child: ListTile(
  //             title: Text(
  //               data.name,
  //               style: TextStyle(
  //                 fontSize: 16,
  //                 fontWeight: FontWeight.bold,
  //                 color: Colors.black54,
  //               ),
  //             ),
  //             subtitle: Text(
  //               data.description,
  //               style: TextStyle(
  //                 fontSize: 14,
  //                 color: Colors.black54,
  //               ),
  //             ),
  //             onTap: () {},
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat Page'),
        centerTitle: true,
        backgroundColor: ColorStyles.secondaryColor,
      ),
      // body: buildList(context),
    );
  }
}
