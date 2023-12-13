import 'package:delivery_rider_app/components/drawer_component.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';

import '../components/material_icon_button.dart';
import 'delivery_order_details.dart';

class Deliveries extends StatefulWidget {
  const Deliveries({super.key});

  @override
  State<Deliveries> createState() => _DeliveriesState();
}

class _DeliveriesState extends State<Deliveries> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text(
          'Deliveries',
          style: kTextStyle1,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Card(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'Order Number: ',
                          style: kTextStyle3,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '3',
                          style: kTextStyle2,
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'From: ',
                          style: kTextStyle3,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          'Shishi Foods',
                          style: kTextStyle2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
                    child: Row(
                      children: [
                        const Text(
                          'Order Location: ',
                          style: kTextStyle3,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        TextButton(
                          onPressed: () {
                            if (kDebugMode) {
                              print('clicked');
                            }
                          },
                          child: const Row(
                            children: [
                              Icon(
                                Icons.location_on,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Mbezi',
                                style: kTextStyle2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Text(
                          'Time: ',
                          style: kTextStyle3,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        Text(
                          '2023/12/11'
                          '11:23:21',
                          style: kTextStyle2,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: MaterialIconButton(
                            text: 'View',
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const DeliveryOrderDetails(),
                                ),
                              );
                            },
                            icon: const Icon(Icons.view_list),
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: MaterialIconButton(
                            text: 'Deliver',
                            onPressed: () {
                              if (kDebugMode) {
                                print('Delivered');
                              }
                            },
                            icon: const Icon(Icons.arrow_circle_down),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
