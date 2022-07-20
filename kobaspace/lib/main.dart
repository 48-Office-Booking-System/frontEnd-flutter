import 'package:flutter/material.dart';
import 'package:kobaspace/components/bottom_navigation.dart';
import 'package:kobaspace/pages/chat_page.dart';
import 'package:kobaspace/provider/detail_view_model.dart';
import 'package:kobaspace/provider/list_view_model.dart';
import 'package:kobaspace/provider/review_view_model.dart';
import 'package:kobaspace/services/remote_services.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => ListViewModel(remoteServices: RemoteServices()),
          ),
          ChangeNotifierProvider(
            create: (_) => DetailViewModel(remoteServices: RemoteServices()),
          ),
          ChangeNotifierProvider(
            create: (_) => ReviewViewModel(remoteServices: RemoteServices()),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: BottomNavigation(),
        ),
    );
  }
}

// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(
//           create: (_) => ListViewModel(remoteServices: RemoteServices()),
//         ),
//       ],
//       child: MaterialApp(
//         title: 'Office',
//         theme: ThemeData(
//           primaryColor: Colors.blue,
//           scaffoldBackgroundColor: Colors.white,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//           appBarTheme: const AppBarTheme(
//               color: Colors.blueAccent
//           ),
//         ),
//         initialRoute: ChatPage.routeName,
//         routes: {
//           ChatPage.routeName: (context) => const ChatPage(),
//         },
//       ),
//     );
//   }
// }
