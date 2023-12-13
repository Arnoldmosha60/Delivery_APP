import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';

String imagePath = 'images/img.png';

class DrawerComponent extends StatefulWidget {
  const DrawerComponent({super.key});


  @override
  State<DrawerComponent> createState() => _DrawerComponentState();
}

class _DrawerComponentState extends State<DrawerComponent> {
  
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          padding: const EdgeInsets.only(top: 90.0, left: 10.0),
          children: [
            ListTile(
              title: SizedBox(
                height: 80,
                width: 80,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    const CircleAvatar(
                      child: Center(
                        child: Image(
                          image: AssetImage(
                            'images/img.png',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: 0,
                        child: RawMaterialButton(
                          onPressed: () {
                            if (kDebugMode) {
                              print('Camera clicked',);
                            }
                          },
                          elevation: 1.0,
                          fillColor: const Color(0xFFF5F6F9),
                          shape: const CircleBorder(),
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            color: kBackgroundColor,
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
              child: SizedBox(
                height: 10.0,
                width: 5.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
            ),
            ListTile(
              title: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('object');
                  }
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.person,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Username',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            ListTile(
              title: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('logout');
                  }
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.email,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '****@gmail.com',
                      style: TextStyle(
                          fontSize: 25.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            ListTile(
              title: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('logout');
                  }
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.phone,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      '+255 **** *****',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            ListTile(
              title: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('logout');
                  }
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Kimara',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 5.0,
            ),
            ListTile(
              title: TextButton(
                onPressed: () {
                  if (kDebugMode) {
                    print('logout');
                  }
                },
                child: const Row(
                  children: [
                    Icon(
                      Icons.logout,
                      size: 25.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



