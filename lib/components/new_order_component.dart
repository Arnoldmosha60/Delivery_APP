import 'package:delivery_rider_app/components/dialog_box.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../screens/incomplete_deliveries.dart';
import 'material_icon_button.dart';

class NewOrderComponent extends StatelessWidget {
  const NewOrderComponent({
    super.key, required this.orderID, required this.name, required this.location, required this.orderArrivalTime,
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
          Expanded(
            child: Padding(
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
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 15.0, bottom: 5.0),
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
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, bottom: 5.0),
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
          ),
          Expanded(
            child: Padding(
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
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 15.0, right: 15.0, bottom: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: MaterialIconButton(
                      text: 'Accept',
                      onPressed: IncompleteDeliveries(),
                      icon: Icon(Icons.done),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: MaterialIconButton(
                      text: 'Reject',
                      onPressed: DialogBox(),
                      icon: Icon(Icons.close),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

