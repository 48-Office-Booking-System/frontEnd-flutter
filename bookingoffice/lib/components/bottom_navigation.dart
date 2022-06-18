import 'package:bookingoffice/components/style.dart';
import 'package:bookingoffice/pages/booking_page.dart';
import 'package:bookingoffice/pages/chat_page.dart';
import 'package:bookingoffice/pages/favorite_page.dart';
import 'package:bookingoffice/pages/home_page.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({ Key? key }) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _getPage(currentPage),
      ),
      bottomNavigationBar: FancyBottomNavigation(
        tabs: [
          TabData(
              iconData: Icons.home,
              title: "Home",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => HomePage()))
          ),
          TabData(
              iconData: Icons.date_range,
              title: "Booking",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => BookingPage()))
          ),
          TabData(
              iconData: Icons.chat,
              title: "Chat",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => ChatPage()))
          ),
          TabData(
              iconData: Icons.favorite,
              title: "Favorite",
              onclick: () => Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => FavoritePage()))
          ),
        ],
        initialSelection: 0,
        key: bottomNavigationKey,
        activeIconColor: ColorStyles.primaryColor,
        inactiveIconColor: ColorStyles.secondaryColor,
        circleColor: ColorStyles.secondaryColor,
        onTabChangedListener: (position) {
          setState(() {
            currentPage = position;
          });
        },
      ),
    );
  }

  _getPage(int page) {
    switch (page) {
      case 0:
        return HomePage();
      case 1:
        return BookingPage();
      case 2:
        return ChatPage();
      case 3:
        return FavoritePage();
      // case 4:
      //   return AccountPage();
    }
  }
}
