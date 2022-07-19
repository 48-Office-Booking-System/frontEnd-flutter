import 'package:map_koba/components/bottom_navigation.dart';
import 'package:map_koba/pages/profile_page.dart';
import 'package:map_koba/screens/onboarding_screen.dart';
import 'package:map_koba/screens/splash_screen.dart';
import 'package:map_koba/view_model/koba_view_model.dart';
import 'package:map_koba/view_model/office_view_model.dart';
import 'package:map_koba/view_model/review_view_model.dart';
import 'package:map_koba/view_model/testimoni_view_model.dart';
import 'package:flutter/material.dart';
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
          create: (_) => OfficeViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => TestimoniViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => RiviewViewModel(),
        ),
        ChangeNotifierProvider<KobaViewModel>(
          create: (_) => KobaViewModel(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:map_koba/maps/allMaps.dart';
// import 'package:map_koba/maps/mark_buildA.dart';
// import 'package:map_koba/maps/mark_buildC.dart';
// import 'package:map_koba/maps_multimarker.dart';
// import 'package:map_koba/screens/onboarding_screen.dart';
// import 'maps/mark_buildC.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // Try running your application with "flutter run". You'll see the
//         // application has a blue toolbar. Then, without quitting the app, try
//         // changing the primarySwatch below to Colors.green and then invoke
//         // "hot reload" (press "r" in the console where you ran "flutter run",
//         // or simply save your changes to "hot reload" in a Flutter IDE).
//         // Notice that the counter didn't reset back to zero; the application
//         // is not restarted.
//         primarySwatch: Colors.deepPurple,
//       ),
//       home: OnboardingScreen(),
//     );
//   }
// }
