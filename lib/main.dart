import 'package:delivery_rider_app/screens/menu.dart';
import 'package:flutter/material.dart';
import 'screens/home_page.dart';
import 'constants/constants.dart';

void main() {
  runApp(const DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kBackgroundColor,
      ),
      home: const MenuPage(),
    );
  }
}
