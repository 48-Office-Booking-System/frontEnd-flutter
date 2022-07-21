import 'package:map_koba/model/list_model.dart';
import 'package:map_koba/pages/booking_page.dart';
import 'package:map_koba/pages/chat_page.dart';
import 'package:map_koba/pages/detail_page.dart';
import 'package:map_koba/pages/edit_profile.dart';
import 'package:map_koba/pages/favorite_page.dart';
import 'package:map_koba/pages/home_page.dart';
import 'package:map_koba/pages/profile_page.dart';
import 'package:map_koba/screens/login_screen.dart';
import 'package:map_koba/screens/onboarding_screen.dart';
import 'package:map_koba/screens/signup_screen.dart';
import 'package:map_koba/screens/splash_screen.dart';
import 'package:map_koba/services/remote_services.dart';
import 'package:map_koba/view_model/koba_view_model.dart';
import 'package:map_koba/view_model/list_view_model.dart';
import 'package:map_koba/view_model/review_view_model.dart';
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
          create: (_) => ListViewModel(remoteServices: RemoteServices()),
        ),
        ChangeNotifierProvider(
          create: (_) => ReviewViewModel(remoteServices: RemoteServices()),
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
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case HomePage.routeName:
              return MaterialPageRoute(builder: (_) => HomePage());
            case BookingPage.routeName:
              return MaterialPageRoute(builder: (_) => const BookingPage());
            case ChatPage.routeName:
              return MaterialPageRoute(builder: (_) => const ChatPage());
            case EditProfilePage.routeName:
              return MaterialPageRoute(builder: (_) => const EditProfilePage());
            case ProfilePage.routeName:
              return MaterialPageRoute(builder: (_) => const ProfilePage());
            case FavoritePage.routeName:
              return MaterialPageRoute(builder: (_) => const FavoritePage());
            case LoginScreen.routeName:
              return MaterialPageRoute(builder: (_) => LoginScreen());
            case OnboardingScreen.routeName:
              return MaterialPageRoute(builder: (_) => OnboardingScreen());
            case SignUpScreen.routeName:
              return MaterialPageRoute(builder: (_) => SignUpScreen());
            case DetailPage.routeName:
              final id = settings.arguments as int;
              return MaterialPageRoute(
                builder: (_) => DetailPage(id: id, listData: ModalRoute.of(context)?.settings.arguments as Datum,),
                settings: settings,
              );
            default:
              return MaterialPageRoute(builder: (_) {
                return Scaffold(
                  body: Center(
                    child: Text('Page not found :('),
                  ),
                );
              });
          }
        },
        // initialRoute: SplashScreen.routeName,
        // routes: {
        //   HomePage.routeName: (context) => HomePage(),
        //   BookingPage.routeName: (context) => const BookingPage(),
        //   ChatPage.routeName: (context) => const ChatPage(),
        //   DetailPage.routeName: (context) => DetailPage(
        //       listData: ModalRoute.of(context)?.settings.arguments as Datum
        //   ),
        //   EditProfilePage.routeName: (context) => const EditProfilePage(),
        //   ProfilePage.routeName: (context) => const ProfilePage(),
        //   FavoritePage.routeName: (context) => const FavoritePage(),
        //   LoginScreen.routeName: (context) => LoginScreen(),
        //   OnboardingScreen.routeName: (context) => OnboardingScreen(),
        //   SignUpScreen.routeName: (context) => SignUpScreen(),
        // },
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
