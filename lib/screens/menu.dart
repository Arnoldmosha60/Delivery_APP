import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';
import '../components/drawer_component.dart';
import '../components/new_order_component.dart';
import 'delivery_order_details.dart';
import 'delivery_order_history.dart';
import 'home_page.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  late final onPressed;
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomePage(),
    const DeliveryOrderDetails(),
    const DeliveryHistory(),
  ];

  void onTap(int index) {
    setState(() {
      _selectedIndex = index;
      // Navigator.push(
      //   context,
      //   MaterialPageRoute(
      //     builder: (context) => _screens[_selectedIndex],
      //   ),
      // );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 15.0,
        ),
        child: GNav(
          gap: 8,
          activeColor: kBackgroundColor,
          padding: const EdgeInsets.all(8.0),
          color: Colors.black,
          selectedIndex: _selectedIndex,
          onTabChange: onTap,
          tabs: const [
            GButton(
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              icon: Icons.delivery_dining,
              text: 'Deliveries',
            ),
            GButton(
              icon: Icons.history,
              text: 'History',
            ),
          ],
        ),
      ),
    );
  }
}

