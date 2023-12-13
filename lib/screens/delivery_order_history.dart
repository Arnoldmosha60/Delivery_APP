import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';
import '../components/drawer_component.dart';

class DeliveryHistory extends StatefulWidget {
  const DeliveryHistory({super.key});

  @override
  State<DeliveryHistory> createState() => _DeliveryHistoryState();
}

class _DeliveryHistoryState extends State<DeliveryHistory> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerComponent(),
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text(
          'Delivery History',
          style: kTextStyle1,
        ),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OrderID: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '2',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'From: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Xxxxx Food and Restaurant',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'To: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Mosha',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '5 Items',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '10/12/2023',
                            style: kTextStyle2,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '11:08:33',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Status: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Rejected',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OrderID: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '2',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'From: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Xxxxx Food and Restaurant',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'To: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Mosha',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '5 Items',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '10/12/2023',
                            style: kTextStyle2,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '11:08:33',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Status: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Delivered',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OrderID: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '2',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'From: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Xxxxx Food and Restaurant',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'To: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Mosha',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '5 Items',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '10/12/2023',
                            style: kTextStyle2,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '11:08:33',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Status: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Rejected',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OrderID: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '2',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'From: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Xxxxx Food and Restaurant',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'To: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Mosha',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '5 Items',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '10/12/2023',
                            style: kTextStyle2,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '11:08:33',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Status: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Rejected',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OrderID: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '2',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'From: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Xxxxx Food and Restaurant',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'To: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Mosha',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '5 Items',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '10/12/2023',
                            style: kTextStyle2,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '11:08:33',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Status: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Rejected',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OrderID: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '2',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'From: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Xxxxx Food and Restaurant',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'To: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Mosha',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '5 Items',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '10/12/2023',
                            style: kTextStyle2,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '11:08:33',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Status: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Rejected',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'OrderID: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '2',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'From: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Xxxxx Food and Restaurant',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'To: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Mosha',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Quantity: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '5 Items',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.timer,
                            size: 15.0,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            '10/12/2023',
                            style: kTextStyle2,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            '11:08:33',
                            style: kTextStyle2,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Text(
                            'Status: ',
                            style: kTextStyle3,
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            'Rejected',
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
      ),
    );
  }
}
