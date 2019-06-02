import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:async';

import 'home_view.dart';
class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
  }

  class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 10);
      return Timer(duration, () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) {
            return HomePage();
          }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xff329cef),
        body: Center(
         child: Image.asset(
          "assets/dart.png",
            width: 200.0,
            height: 100.0,
          ),
        ),
      );
    }
  }


