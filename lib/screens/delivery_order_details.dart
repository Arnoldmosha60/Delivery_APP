import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';
import '../components/drawer_component.dart';

class DeliveryOrderDetails extends StatefulWidget {
  const DeliveryOrderDetails({super.key});

  @override
  State<DeliveryOrderDetails> createState() => _DeliveryOrderDetailsState();
}

class _DeliveryOrderDetailsState extends State<DeliveryOrderDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text(
          'Delivery Order Details',
          style: kTextStyle1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Table(
                    defaultColumnWidth: const FlexColumnWidth(),
                    children: const [
                      TableRow(
                        children: [
                          Text(
                            'Name: ',
                            style: kTextStyle3,
                          ),
                          Text(
                            'Mosha',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text(
                            'Mobile: ',
                            style: kTextStyle3,
                          ),
                          Text(
                            '07356443',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text(
                            'Location: ',
                            style: kTextStyle3,
                          ),
                          Text(
                            'kimara dar es salaam',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text(
                            'Order ID: ',
                            style: kTextStyle3,
                          ),
                          Text(
                            '#25GSF',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text(
                            'Items: ',
                            style: kTextStyle3,
                          ),
                          Text(
                            'Food and Beverages',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text(
                            'Date: ',
                            style: kTextStyle3,
                          ),
                          Text(
                            '2023-12-05 09:30am',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
              child: SizedBox(
                height: 10.0,
                width: 50.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 15.0, top: 5.0, right: 15.0),
                child: Table(
                  defaultColumnWidth: const FlexColumnWidth(),
                  children: const [
                    TableRow(
                      children: [
                        Text(
                          'id',
                          style: kTextStyle3,
                        ),
                        Text(
                          'Items',
                          style: kTextStyle3,
                        ),
                        Text(
                          'Price',
                          style: kTextStyle3,
                        ),
                        Text(
                          'Quantity',
                          style: kTextStyle3,
                        ),
                        Text(
                          'Total',
                          style: kTextStyle3,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '1',
                          style: kTextStyle2,
                        ),
                        Text(
                          'Food & Beverages',
                          style: kTextStyle2,
                        ),
                        Text(
                          '50,000',
                          style: kTextStyle2,
                        ),
                        Text(
                          '3',
                          style: kTextStyle2,
                        ),
                        Text(
                          '150,000',
                          style: kTextStyle2,
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text(
                          '1',
                          style: kTextStyle2,
                        ),
                        Text(
                          'Food & Beverages',
                          style: kTextStyle2,
                        ),
                        Text(
                          '50,000',
                          style: kTextStyle2,
                        ),
                        Text(
                          '3',
                          style: kTextStyle2,
                        ),
                        Text(
                          '150,000',
                          style: kTextStyle2,
                        ),
                      ],
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