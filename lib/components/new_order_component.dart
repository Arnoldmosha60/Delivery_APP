import 'package:delivery_rider_app/components/dialog_box.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../screens/delivery_order_details.dart';
import 'material_icon_button.dart';

class NewOrderComponent extends StatelessWidget {
  const NewOrderComponent({
    super.key,
    required this.orderID,
    required this.name,
    required this.location,
    required this.orderArrivalTime,
  });

  final String orderID;
  final String name;
  final String location;
  final String orderArrivalTime;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
            child: Row(
              children: [
                const Text(
                  'Order Number: ',
                  style: kTextStyle3,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  orderID,
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
                  'From: ',
                  style: kTextStyle3,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  name,
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
                  child: Row(
                    children: [
                      const Icon(
                        Icons.location_on,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        location,
                        style: kTextStyle2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
            child: Row(
              children: [
                const Text(
                  'Time: ',
                  style: kTextStyle3,
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  orderArrivalTime,
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
                    text: 'Accept',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DeliveryOrderDetails(),
                        ),
                      );
                    },
                    icon: const Icon(Icons.done),
                  ),
                ),
                const SizedBox(
                  width: 20.0,
                ),
                Expanded(
                  child: MaterialIconButton(
                    text: 'Reject',
                    onPressed: () {
                      _showDialog(context);
                    },
                    icon: const Icon(Icons.close),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert!!'),
          content: const Text('Are you sure you want to cancel the order?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: const Text('Yes'),
            ),
            TextButton(
              onPressed: () {
                // Close the dialog
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
          ],
        );
      },
    );
  }
}
