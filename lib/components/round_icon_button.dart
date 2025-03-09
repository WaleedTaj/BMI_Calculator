import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({required this.icon, required this.onPressed});
  final Function() onPressed;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      fillColor: kFloatingActionButtonColor,
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
      child: Icon(
        icon,
        color: Color(0xFFE7F1F3),
      ),
    );
  }
}
