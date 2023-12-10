import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';
import 'package:delivery_rider_app/components/complete_delivery_component.dart';
import 'package:url_launcher/url_launcher.dart';
import '../components/raw_material_button.dart';
import 'delivery_order_details.dart';

class CompleteDeliveries extends StatefulWidget {
  const CompleteDeliveries({super.key});

  @override
  State<CompleteDeliveries> createState() => _CompleteDeliveriesState();
}

class _CompleteDeliveriesState extends State<CompleteDeliveries> {

  void openPhone(String phone) async {
    Uri phoneno = Uri.parse('tel:$phone');
    if(await canLaunchUrl(phoneno)){
      await launchUrl(phoneno);
    }else {
      if (kDebugMode) {
        print('Cannot make call');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBackgroundColor,
        title: const Text(
          'Complete Deliveries',
          style: kTextStyle1,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Expanded(
              child: CompleteDeliveryComponent(
                orderID: '3',
                deliveryStatus: 'Complete',
                nameOfPersonToBeDelivered: 'Mosha',
                city: 'Dar es salaam',
                phoneNumber: '0987654321',
                area: 'Kigamboni',
                payType: 'COD',
                address: 'MN096',
                total: '10,000',
                deliveryTime: '2023-12-05'
                    '11:23:45',
                deliveryCode: '#674',
                deliveryMan: 'Michael',
                child: [
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'View',
                      icon: Icons.remove_red_eye_outlined,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeliveryOrderDetails(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'Call',
                      icon: Icons.call,
                      onPressed:() async {
                        openPhone('075342436');
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'Map',
                      icon: Icons.my_location,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeliveryOrderDetails(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
              child: SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
            ),
            Expanded(
              child: CompleteDeliveryComponent(
                orderID: '4',
                deliveryStatus: 'Complete',
                nameOfPersonToBeDelivered: 'Mosha',
                city: 'Dar es salaam',
                phoneNumber: '0987654321',
                area: 'Kimara',
                payType: 'COD',
                address: 'MN096',
                total: '20,000',
                deliveryTime: '2023-12-05'
                    '11:23:45',
                deliveryCode: '#674',
                deliveryMan: 'Michael',
                child: [
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'View',
                      icon: Icons.remove_red_eye_outlined,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeliveryOrderDetails(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'Call',
                      icon: Icons.call,
                      onPressed: () async {
                        openPhone('075342436');
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'Map',
                      icon: Icons.my_location,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeliveryOrderDetails(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, bottom: 10.0),
              child: SizedBox(
                height: 10.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
            ),
            Expanded(
              child: CompleteDeliveryComponent(
                orderID: '5',
                deliveryStatus: 'Complete',
                nameOfPersonToBeDelivered: 'Mosha',
                city: 'Dar es salaam',
                phoneNumber: '0987654321',
                area: 'Mbezi',
                payType: 'COD',
                address: 'MN096',
                total: '50,000',
                deliveryTime: '2023-12-05'
                    '11:23:45',
                deliveryCode: '#674',
                deliveryMan: 'Michael',
                child: [
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'View',
                      icon: Icons.remove_red_eye_outlined,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeliveryOrderDetails(),
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'Call',
                      icon: Icons.call,
                      onPressed: () async {
                        openPhone('075342436');
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: MyRawMaterialButton(
                      text: 'Map',
                      icon: Icons.my_location,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DeliveryOrderDetails(),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
