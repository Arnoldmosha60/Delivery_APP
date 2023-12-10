import 'package:delivery_rider_app/constants/constants.dart';
import 'package:flutter/material.dart';

class RiderProfile extends StatelessWidget {
  const RiderProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text(
          'Profile',
          style: kTextStyle1,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(
                  Icons.email,
                  size: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'driver****@gmail.com',
                  style: kTextStyle3,
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  size: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  '08746323',
                  style: kTextStyle3,
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(
                  Icons.home,
                  size: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'xxxxxx Food',
                  style: kTextStyle3,
                ),
              ],
            ),
            SizedBox(height: 20.0,),
            Row(
              children: [
                Icon(
                  Icons.mode,
                  size: 20.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  'Edit Profile',
                  style: kTextStyle3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
