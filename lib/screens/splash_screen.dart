import 'dart:async';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() {
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => InputPage(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Center content
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Logo
                    Image.asset(
                      'images/BMI Calculator.jpeg',
                      width: 180.0, // Fixed size
                      height: 180.0,
                    ),

                    Text(
                      'BMI Calculator',
                      textAlign: TextAlign.center,
                      style: kResultTextStyle,
                    ),

                    // Spacing
                    SizedBox(height: 50.0),

                    // Loading indicator
                    SizedBox(
                      height: 50.0, // Fixed size
                      child: LoadingIndicator(
                        indicatorType: Indicator.ballGridBeat,
                        colors: [
                          Color(0xFF13BFC3),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Footer
              Padding(
                padding: EdgeInsets.all(16.0), // Fixed padding
                child: Text(
                  'Developed by: Waleed Taj',
                  textAlign: TextAlign.center,
                  style: kDevelopedByTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
