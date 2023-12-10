import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';

class MyRawMaterialButton extends StatelessWidget {
  const MyRawMaterialButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
  });

  final onPressed;
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(
        width: 100.0,
        height: 40.0,
      ),
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: const BorderSide(
          width: 1,
        ),
      ),
      fillColor: kBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            // Icons.remove_red_eye_outlined,
            size: 20.0,
          ),
          Text(
            text,
            style: kTextStyle2,
          ),
        ],
      ),
    );
  }
}

