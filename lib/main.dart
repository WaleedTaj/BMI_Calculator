import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:bmi_calculator/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
            ),
          ),
          centerTitle: true,
          toolbarHeight: 65,
          titleTextStyle: kLargeButtonTextStyle,
        ),
        scaffoldBackgroundColor: Color(0xFFE7F1F3),
        primaryColor: kBottomContainerColor,
      ),
      home: SplashScreen(),
    );
  }
}
