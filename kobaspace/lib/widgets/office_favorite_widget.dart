// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:kobaspace/components/style.dart';
// import 'package:kobaspace/services/remote_services.dart';

// import '../models/list_model.dart';

// class OfficeFavoriteWidget extends StatelessWidget {
//   final Data data;

//   const OfficeFavoriteWidget({Key? key, required this.data}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 83,
//       child: Column(
//         children: [
//           Card(
//             margin: const EdgeInsets.all(0),
//             child: ListTile(
//               contentPadding:
//               const EdgeInsets.all(8),
//               leading: Hero(
//                 tag: "${data.photoUrls}",
//                 child: Container(
//                   width: 100,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(4),
//                     image: DecorationImage(
//                       fit: BoxFit.cover,
//                       image: NetworkImage(RemoteServices.imgUrl + data.pictureId),
//                     ),
//                   ),
//                 ),
//               ),
//               title: Text(
//                 data.name,
//                 style: GoogleFonts.roboto(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                   color: ColorStyles.blackColor,
//                 ),
//               ),
//               subtitle: Column(
//                 children: <Widget>[
//                   const SizedBox(height: 3),
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.place,
//                         size: 13,
//                         color: ColorStyles.searchColor,
//                       ),
//                       const SizedBox(width: 2),
//                       Text(
//                         data.city,
//                         style: GoogleFonts.roboto(
//                           fontSize: 13,
//                           fontWeight: FontWeight.w300,
//                           color: ColorStyles.blackColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 5),
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.star,
//                         size: 16,
//                         color: ColorStyles.ratingColor,
//                       ),
//                       const SizedBox(width: 3),
//                       Text(
//                         data.star.toString(),
//                         style: GoogleFonts.roboto(
//                           fontSize: 14,
//                           fontWeight: FontWeight.bold,
//                           color: ColorStyles.ratingColor,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//               onTap: () {
//                 // Navigator.pushNamed(context, RestaurantDetailPage.routeName, arguments: restaurant);
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }