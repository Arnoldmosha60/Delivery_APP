import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';
import 'delivery_ID_component.dart';

class CompleteDeliveryComponent extends StatelessWidget {
  const CompleteDeliveryComponent({
    super.key,
    required this.nameOfPersonToBeDelivered,
    required this.city,
    required this.phoneNumber,
    required this.area,
    required this.payType,
    required this.address,
    required this.total,
    required this.deliveryCode,
    required this.deliveryMan,
    required this.deliveryTime,
    required this.child,
    required this.deliveryStatus,
    required this.orderID,
  });

  final String nameOfPersonToBeDelivered;
  final String city;
  final String phoneNumber;
  final String area;
  final String payType;
  final String address;
  final String total;
  final String deliveryTime;
  final String deliveryCode;
  final String deliveryMan;
  final List<Widget> child;
  final String deliveryStatus;
  final String orderID;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
        child: DeliveryIDComponent(
          deliveryStatus: deliveryStatus,
          orderID: orderID,
        ),
      ),
      Expanded(
        child: Table(
          children: [
            TableRow(children: [
              const Text(
                'Name: ',
                style: kTextStyle3,
              ),
              Text(
                nameOfPersonToBeDelivered,
                style: kTextStyle2,
              ),
              const Text(
                'City: ',
                style: kTextStyle3,
              ),
              Text(
                city,
                style: kTextStyle2,
              ),
            ]),
            TableRow(
              children: [
                const Text(
                  'Mobile: ',
                  style: kTextStyle3,
                ),
                Text(
                  phoneNumber,
                  style: kTextStyle2,
                ),
                const Text(
                  'Area: ',
                  style: kTextStyle3,
                ),
                Text(
                  area,
                  style: kTextStyle2,
                ),
              ],
            ),
            TableRow(
              children: [
                const Text(
                  'PayType: ',
                  style: kTextStyle3,
                ),
                Text(
                  payType,
                  style: kTextStyle2,
                ),
                const Text(
                  'Address: ',
                  style: kTextStyle3,
                ),
                Text(
                  address,
                  style: kTextStyle2,
                ),
              ],
            ),
            TableRow(
              children: [
                const Text(
                  'Total: ',
                  style: kTextStyle3,
                ),
                Text(
                  total,
                  style: kTextStyle2,
                ),
                const Text(
                  'Delivery Time: ',
                  style: kTextStyle3,
                ),
                Text(
                  deliveryTime,
                  style: kTextStyle2,
                ),
              ],
            ),
            TableRow(
              children: [
                const Text(
                  'Delivery Code: ',
                  style: kTextStyle3,
                ),
                Text(
                  deliveryCode,
                  style: kTextStyle2,
                ),
                const Text(
                  'Delivery Man: ',
                  style: kTextStyle3,
                ),
                Text(
                  deliveryMan,
                  style: kTextStyle2,
                ),
              ],
            ),
          ],
        ),
      ),
      Expanded(
        child: Row(
          children: child,
          // [
          //     Expanded(
          //       child: MyRawMaterialButton(
          //         text: 'View',
          //         icon: Icons.remove_red_eye_outlined,
          //         pageTo: DeliveryOrderDetails(),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10.0,
          //     ),
          //     Expanded(
          //       child: MyRawMaterialButton(
          //         text: 'Call',
          //         icon: Icons.call,
          //         pageTo: DeliveryOrderDetails(),
          //       ),
          //     ),
          //     SizedBox(
          //       width: 10.0,
          //     ),
          //     Expanded(
          //       child: MyRawMaterialButton(
          //         text: 'Map',
          //         icon: Icons.arrow_circle_right_outlined,
          //         pageTo: DeliveryOrderDetails(),
          //       ),
          //     ),
          //   ],
          // ),
        ),
        //
      ),
    ]);
  }
}
