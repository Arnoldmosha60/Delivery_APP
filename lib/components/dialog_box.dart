import 'package:delivery_rider_app/constants/constants.dart';
import 'package:delivery_rider_app/screens/incomplete_deliveries.dart';
import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  const DialogBox({super.key});

  @override
  State<DialogBox> createState() => _DialogBoxState();
}

class _DialogBoxState extends State<DialogBox> {
  void _showcontent() {
    showDialog(
      context: context, barrierDismissible: false, // user must tap button!

      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(
            'Reject Order Delivery',
            style: kTextStyle3,
          ),
          content: const SingleChildScrollView(
            child: ListBody(
              children: [
                Text(
                  'Are you sure you want to cancel the order?',
                  style: kTextStyle2,
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Yes'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const IncompleteDeliveries(),
                  ),
                );
              },
            ),
            TextButton(
              child: const Text('No'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
    @override
    void build(BuildContext context) {
      return _showcontent();
    }
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
