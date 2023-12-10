import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';
import 'package:delivery_rider_app/components/material_icon_button.dart';
import '../components/dialog_box.dart';
import '../components/drawer_component.dart';
import '../components/new_order_component.dart';
import 'incomplete_deliveries.dart';
import 'delivery_order_details.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int _selectedIndex = 0;
  late final onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerComponent(selectedIndex: _selectedIndex),
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text(
          'Rider App',
          style: kTextStyle1,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: NewOrderComponent(
                            orderID: '1',
                            name: 'Shishi Foods',
                            location: 'Tegeta',
                            orderArrivalTime: '30 minutes ago',
                          ),
                        ),
                        Expanded(
                          child: NewOrderComponent(
                            orderID: '2',
                            name: 'Shishi Foods',
                            location: 'Tegeta',
                            orderArrivalTime: '30 minutes ago',
                          ),
                        ),
                        Expanded(
                          child: NewOrderComponent(
                            orderID: '3',
                            name: 'Shishi Foods',
                            location: 'Tegeta',
                            orderArrivalTime: '30 minutes ago',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: kBackgroundColor,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
        ],
      ),
    );
  }
}

