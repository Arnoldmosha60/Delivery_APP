import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';

class DeliveryIDComponent extends StatelessWidget {
  const DeliveryIDComponent({
    super.key,
    required this.orderID,
    required this.deliveryStatus,
  });
  final String orderID;
  final String deliveryStatus;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'OrderID: ',
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: kBackgroundColor,
          ),
        ),
        const SizedBox(
          width: 5.0,
        ),
        Text(
          orderID,
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
            color: kBackgroundColor,
          ),
        ),
        const SizedBox(
          width: 25.0,
        ),
        Text(
          deliveryStatus,
          textAlign: TextAlign.right,
          style: const TextStyle(
            color: kBackgroundColor,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
