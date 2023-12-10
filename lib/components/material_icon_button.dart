import 'package:flutter/material.dart';
import 'package:delivery_rider_app/constants/constants.dart';

class MaterialIconButton extends StatelessWidget {
  const MaterialIconButton(
      {
        super.key,
        required this.text,
        required this.onPressed,
        required this.icon
      }
      );

  final String text;
  final Icon icon;
  final onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed:() { Navigator.push(
          context,
        MaterialPageRoute(builder: (context) => onPressed ),
      ); },
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 110.0,
        height: 50.0,
      ),
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
          icon,
          Text(
            text,
            style: kTextStyle2,
          ),
        ],
      ),
    );
  }
}
