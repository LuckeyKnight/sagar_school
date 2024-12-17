// splash_screen.dart
import 'package:flutter/material.dart';
import 'dart:async';
import 'main.dart'; // Import for Timer

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Start a timer to navigate to the home page after a delay
    Timer(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MyHomePage()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/playstore.jpg'), // Replace with your logo image
            SizedBox(height: 20),
            CircularProgressIndicator(), // Optional loading indicator
          ],
        ),
      ),
    );
  }
}