import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';
import '../components/drawer_component.dart';
import '../components/new_order_component.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final onPressed;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text(
          'Orders',
          style: kTextStyle1,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            children: [
              NewOrderComponent(
                orderID: '1',
                name: 'Shishi Foods',
                location: 'Tegeta',
                orderArrivalTime: '30 minutes ago',
              ),
              NewOrderComponent(
                orderID: '2',
                name: 'Shishi Foods',
                location: 'Tegeta',
                orderArrivalTime: '30 minutes ago',
              ),
              NewOrderComponent(
                orderID: '3',
                name: 'Shishi Foods',
                location: 'Tegeta',
                orderArrivalTime: '30 minutes ago',
              ),
              NewOrderComponent(
                orderID: '3',
                name: 'Shishi Foods',
                location: 'Tegeta',
                orderArrivalTime: '30 minutes ago',
              ),
              NewOrderComponent(
                orderID: '3',
                name: 'Shishi Foods',
                location: 'Tegeta',
                orderArrivalTime: '30 minutes ago',
              ),
              NewOrderComponent(
                orderID: '3',
                name: 'Shishi Foods',
                location: 'Tegeta',
                orderArrivalTime: '30 minutes ago',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

