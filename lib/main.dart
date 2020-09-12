import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/screens/screens.dart';
import 'package:flutter/services.dart';
import 'package:flutter_covid_dashboard_ui/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color(0xffffffff),
    ));

    return MaterialApp(
      title: 'COVID-19',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.cyan,
        scaffoldBackgroundColor: Color(0xFF1a1a1a),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BottomNavScreen(),
    );
  }
}
