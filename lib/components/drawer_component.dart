import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';

import '../screens/complete_deliveries.dart';
import '../screens/delivery_order_history.dart';
import '../screens/incomplete_deliveries.dart';
import '../screens/rider_account_page.dart';

class DrawerComponent extends StatelessWidget {
  const DrawerComponent({
    super.key,
    required int selectedIndex,
  }) : _selectedIndex = selectedIndex;

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: kBackgroundColor,
            ),
            child: Text(
              'Rider App',
              style: kTextStyle1,
            ),
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.dashboard,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Dashboard',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            selected: _selectedIndex == 0,
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.done,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Complete Deliveries',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            selected: _selectedIndex == 1,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CompleteDeliveries(),
                ),
              );
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.pending_outlined,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Pending Deliveries',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            selected: _selectedIndex == 2,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const IncompleteDeliveries(),
                ),
              );
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.history,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'History',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            selected: _selectedIndex == 2,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DeliveryHistory(),
                ),
              );
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.account_circle,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Account',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            selected: _selectedIndex == 2,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RiderProfile(),
                ),
              );
            },
          ),
          ListTile(
            title: const Row(
              children: [
                Icon(
                  Icons.logout,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ],
            ),
            selected: _selectedIndex == 2,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const RiderProfile(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
