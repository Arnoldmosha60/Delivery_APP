// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:delivery_rider_app/components/dialog_box.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../screens/delivery_order_details.dart';
import 'material_icon_button.dart';

// class NewOrderComponent extends StatefulWidget {
//   const NewOrderComponent({
//     super.key,
//     required this.orderID,
//     required this.name,
//     required this.location,
//     required this.orderArrivalTime,
//   });

//   final String orderID;
//   final String name;
//   final String location;
//   final String orderArrivalTime;

//   @override
//   State<NewOrderComponent> createState() => _NewOrderComponentState();
// }

// class _NewOrderComponentState extends State<NewOrderComponent> {
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
//             child: Row(
//               children: [
//                 const Text(
//                   'Order Number: ',
//                   style: kTextStyle3,
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   widget.orderID,
//                   style: kTextStyle2,
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
//             child: Row(
//               children: [
//                 const Text(
//                   'From: ',
//                   style: kTextStyle3,
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   widget.name,
//                   style: kTextStyle2,
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
//             child: Row(
//               children: [
//                 const Text(
//                   'Order Location: ',
//                   style: kTextStyle3,
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     if (kDebugMode) {
//                       print('clicked');
//                     }
//                   },
//                   child: Row(
//                     children: [
//                       const Icon(
//                         Icons.location_on,
//                       ),
//                       const SizedBox(
//                         width: 10.0,
//                       ),
//                       Text(
//                         widget.location,
//                         style: kTextStyle2,
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 15.0, bottom: 5.0),
//             child: Row(
//               children: [
//                 const Text(
//                   'Time: ',
//                   style: kTextStyle3,
//                 ),
//                 const SizedBox(
//                   width: 10.0,
//                 ),
//                 Text(
//                   widget.orderArrivalTime,
//                   style: kTextStyle2,
//                 ),
//               ],
//             ),
//           ),
//           Padding(
//             padding:
//                 const EdgeInsets.only(left: 15.0, right: 15.0, bottom: 5.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Expanded(
//                   child: MaterialIconButton(
//                     text: 'Accept',
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => const DeliveryOrderDetails(),
//                         ),
//                       );
//                     },
//                     icon: const Icon(Icons.done),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 20.0,
//                 ),
//                 Expanded(
//                   child: MaterialIconButton(
//                     text: 'Reject',
//                     onPressed: () {
//                       _showDialog(context);
//                     },
//                     icon: const Icon(Icons.close),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   void _showDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: const Text('Alert!!'),
//           content: const Text('Are you sure you want to cancel the order?'),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 // Close the dialog
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Yes'),
//             ),
//             TextButton(
//               onPressed: () {
//                 // Close the dialog
//                 Navigator.of(context).pop();
//               },
//               child: const Text('No'),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class NewOrderComponent extends StatefulWidget {
  const NewOrderComponent({
    Key? key,
    // required this.orderID,
    // required this.name,
    // required this.location,
    // required this.orderArrivalTime,
  }) : super(key: key);

  // final String orderID;
  // final String name;
  // final String location;
  // final String orderArrivalTime;

  @override
  State<NewOrderComponent> createState() => _NewOrderComponentState();
}

class _NewOrderComponentState extends State<NewOrderComponent> {
  Future<List<OrderModel>> allOrders() async {
    final snapshot =
        await FirebaseFirestore.instance.collection("orders").get();
    final orderData =
        snapshot.docs.map((e) => OrderModel.fromSnapshot(e)).toList();
    return orderData;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<OrderModel>>(
        future: allOrders(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              // OrderModel orderData = snapshot.data as OrderModel;
              return ListView.builder(
                shrinkWrap: true,
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 5.0),
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
                                snapshot.data![index].orderID.toString(),
                                style: kTextStyle2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 5.0),
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
                                // "name",
                                snapshot.data![index].name.toString(),

                                style: kTextStyle2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 5.0),
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
                                      snapshot.data![index].location,
                                      // "location",
                                      style: kTextStyle2,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 15.0, bottom: 5.0),
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
                                snapshot.data![index].orderID,

                                // "order arrival time",
                                style: kTextStyle2,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 15.0, right: 15.0, bottom: 5.0),
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
                                        builder: (context) =>
                                            const DeliveryOrderDetails(),
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
                                    // _showDialog(context);
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
                },
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          return CircularProgressIndicator();
        });
  }
  // void _showDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: const Text('Alert!!'),
  //         content: const Text('Are you sure you want to cancel the order?'),
  //         actions: <Widget>[
  //           TextButton(
  //             onPressed: () {
  //               // Close the dialog
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('Yes'),
  //           ),
  //           TextButton(
  //             onPressed: () {
  //               // Close the dialog
  //               Navigator.of(context).pop();
  //             },
  //             child: const Text('No'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}

class OrderModel {
  // final String
  final String orderID;
  final String name;
  final String location;
  final String orderArrivalTime;
  OrderModel({
    required this.orderID,
    required this.name,
    required this.location,
    required this.orderArrivalTime,
  });
  factory OrderModel.fromSnapshot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return OrderModel(
        orderID: data["orderID"],
        name: data["name"],
        location: data["location"],
        orderArrivalTime: data["orderArrivalTime"].toString());
  }
}
