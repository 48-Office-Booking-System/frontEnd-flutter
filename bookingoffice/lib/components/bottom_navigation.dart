import 'package:map_koba/components/color.dart';
import 'package:map_koba/pages/booking_page.dart';
import 'package:map_koba/pages/chat_page.dart';
import 'package:map_koba/pages/favorite_page.dart';
import 'package:map_koba/pages/home_page.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  final List<Widget> _container = [
    HomePage(),
    BookingPage(),
    ChatPage(),
    FavoritePage()
  ];

  @override
  void initState() {
    super.initState();
  }

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _container.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: ColorStyles.secondaryColor,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.date_range), label: 'Booking'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Favorite'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: ColorStyles.primaryColor,
        unselectedItemColor: Colors.black54,
        onTap: _onItemSelected,
      ),
    );
  }
}
