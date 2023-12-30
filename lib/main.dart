import 'package:delivery_rider_app/components/new_order_component.dart';
import 'package:delivery_rider_app/firebase_options.dart';
import 'package:delivery_rider_app/screens/loginPage.dart';
import 'package:delivery_rider_app/screens/menu.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'constants/constants.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(DeliveryApp());
}

class DeliveryApp extends StatelessWidget {
  const DeliveryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(
        primaryColor: kBackgroundColor,
      ),
      // home: const LoginPage(),
      home: MenuPage(),
      // home: NewOrderComponent(),
    );
  }
}
