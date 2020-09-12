import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/config/palette.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  final String title = "About COVID-19";
  final String title2 = "App";
  final String title3 = "Contact Us";
  final String title4 = "More";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: AppBar(
          elevation: 0.0,
          title: Center(
              child:
                  Text('Settings', style: TextStyle(color: Color(0xffffffff)))),
          backgroundColor: Palette.primaryColor),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(title),
          _gesturebox1(),
          _gesturebox2(),
          _buildHeader(title2),
          _gesturebox3(),
          _gesturebox4(),
          _buildHeader(title3),
          _gesturebox5(),
          _buildHeader(title4),
          _gesturebox6(),
          _gesturebox7(),
        ],
      ),
    );
  }

  SliverPadding _buildHeader(title) {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 10,
          right: 20,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ])));
  }

  SliverPadding _gesturebox1() {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 5,
          right: 20,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: GestureDetector(
                onTap: () {
                  print("tapped on container");
                },
                child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF272727), Color(0xFF272727)],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.dashboard,
                            color: Colors.green,
                            size: 50.0,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'COVID-19 Dashboard',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // SizedBox(
                                //   width: 70.0,
                                // ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 50.0,
                                ),
                              ]),
                        ])))));
  }

  SliverPadding _gesturebox2() {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 5,
          right: 20,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: GestureDetector(
                onTap: () {
                  print("tapped on container");
                },
                child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF272727), Color(0xFF272727)],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.healing,
                            color: Colors.red,
                            size: 50.0,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'Protect against COVID-19',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // SizedBox(
                                //   width: 40.0,
                                // ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 50.0,
                                ),
                              ]),
                        ])))));
  }

  SliverPadding _gesturebox3() {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 5,
          right: 20,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: GestureDetector(
                onTap: () {
                  print("tapped on container");
                },
                child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF272727), Color(0xFF272727)],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.update,
                            color: Colors.green,
                            size: 50.0,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'App Version\n1.2.0',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // SizedBox(
                                //   width: 150.0,
                                // ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 50.0,
                                ),
                              ]),
                        ])))));
  }

  SliverPadding _gesturebox4() {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 5,
          right: 20,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: GestureDetector(
                onTap: () {
                  print("tapped on container");
                },
                child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF272727), Color(0xFF272727)],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.warning,
                            color: Colors.yellow,
                            size: 50.0,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'Terms of Use and Privacy \nPoilicy',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // SizedBox(
                                //   width: 35.0,
                                // ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 50.0,
                                ),
                              ]),
                        ])))));
  }

  SliverPadding _gesturebox5() {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 5,
          right: 20,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: GestureDetector(
                onTap: () {
                  print("tapped on container");
                },
                child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF272727), Color(0xFF272727)],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.web,
                            color: Colors.cyanAccent,
                            size: 50.0,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'Website\ntabaud.saudia.gov',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // SizedBox(
                                //   width: 90.0,
                                // ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 50.0,
                                ),
                              ]),
                        ])))));
  }

  SliverPadding _gesturebox6() {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 5,
          right: 20,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: GestureDetector(
                onTap: () {
                  print("tapped on container");
                },
                child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF272727), Color(0xFF272727)],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 10.0,
                          ),
                          Icon(
                            Icons.language,
                            color: Colors.orange,
                            size: 50.0,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 20.0,
                                ),
                                Text(
                                  'Language\nEnglish',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // SizedBox(
                                //   width: 155.0,
                                // ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 50.0,
                                ),
                              ]),
                        ])))));
  }

  SliverPadding _gesturebox7() {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 20,
          top: 5,
          right: 20,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: GestureDetector(
                onTap: () {
                  print("tapped on container");
                },
                child: Container(
                    height: 75.0,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xFF272727), Color(0xFF272727)],
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 20.0,
                          ),
                          Icon(
                            Icons.question_answer,
                            color: Colors.green,
                            size: 50.0,
                          ),
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  'How does this app work',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ]),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // SizedBox(
                                //   width: 40.0,
                                // ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.grey,
                                  size: 50.0,
                                ),
                              ]),
                        ])))));
  }
}
