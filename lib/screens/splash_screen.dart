import 'dart:async';

import 'package:flutter/material.dart';
import 'package:todoapp/constants/constants.dart';
import 'package:todoapp/screens/introduction_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
        Duration(seconds: 2),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => IntroDuctionPage())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColour,
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Colors.white54,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Image.asset('assets/images/splash.png',
                width: 555, height: 555),
          ),
          SizedBox(
            height: 10,
          ),
          const Text('ToDo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2)),
          SizedBox(height: 6),
          const Text(
            'Add all your tasks',
            style: TextStyle(color: Colors.white, fontSize: 20),
          )
        ],
      )),
    );
  }
}
