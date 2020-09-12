import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_covid_dashboard_ui/screens/notify.dart';
import 'package:flutter_covid_dashboard_ui/screens/exposure.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    _mockCheckForSession().then((status) {
      if (status) {
        _navigateToNotify();
      } else {
        _navigateToExposure();
      }
    });
  }

  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToNotify() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Notify()));
  }

  void _navigateToExposure() {
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => Exposure()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Opacity(
                opacity: 0.5, child: Image.asset('assets/img/ic_launcher.png')),
          ],
        ),
      ),
    );
  }
}
