
import 'package:delivery_rider_app/screens/loginPage.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';

void main() {
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
 const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light().copyWith(
        primaryColor: kBackgroundColor,
      ),
      home: const LoginPage(),
    );
  }
}

