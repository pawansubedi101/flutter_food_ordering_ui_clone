import 'package:flutter/material.dart';
import 'package:food_ordering_ui_clone/constants.dart';
import 'package:food_ordering_ui_clone/font_style.dart';
import 'package:food_ordering_ui_clone/pages/home_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Widget> _pages = const [
    HomePage(),
    Text("orders page"),
    Text("Cart page"),
    Text("Profile Page")
  ];

  final List<BottomNavigationBarItem> _items = [
    BottomNavigationBarItem(
        icon: Image.asset(
          'assets/images/location-icon.png',
        ),
        label: "Near me"),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/orders-icon.png'), label: "Orders"),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/cart-icon.png'), label: "Cart"),
    BottomNavigationBarItem(
        icon: Image.asset('assets/images/profile-icon.png'), label: "Profile"),
  ];

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kPrimaryColor,
        selectedLabelStyle: xsTExt,
        unselectedLabelStyle: xsTExt,
        unselectedItemColor: Colors.black54,
        items: _items,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    ));
  }
}
