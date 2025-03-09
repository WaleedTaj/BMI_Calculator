import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTap, required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 15.0),
          child: Container(
            decoration: BoxDecoration(
              color: kBottomContainerColor,
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(top: 10.0),
            height: kBottomContainerHeight,
            width: double.infinity,
            child: Center(
              child: Text(
                buttonTitle,
                style: kLargeButtonTextStyle,
              ),
            ),
          ),
        ));
  }
}
