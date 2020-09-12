import 'package:flutter/material.dart';
import 'package:flutter_covid_dashboard_ui/config/palette.dart';

class Exposure extends StatefulWidget {
  @override
  _ExposureState createState() => _ExposureState();
}

class _ExposureState extends State<Exposure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.primaryColor,
      appBar: AppBar(
          elevation: 0.0,
          title: Center(
              child: Text('Exposures',
                  style: TextStyle(color: Color(0xffffffff)))),
          backgroundColor: Palette.primaryColor),
      body: CustomScrollView(
        physics: ClampingScrollPhysics(),
        slivers: <Widget>[
          _buildHeader(),
          _buildHeader2(),
          _box(),
        ],
      ),
    );
  }

  SliverPadding _buildHeader() {
    return SliverPadding(
        padding: const EdgeInsets.all(20.0),
        sliver: SliverToBoxAdapter(
          child: Container(
            width: 600.0,
            height: 350.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF003366), Color(0xFF003366)],
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/images/notactive.png',
                    width: 100.0,
                    height: 90.0,
                    color: Colors.red[900],
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'The application is not active',
                          style: const TextStyle(
                            color: Colors.pink,
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ]),
                  Divider(
                    height: 40.0,
                    color: Colors.white,
                    indent: 20,
                    endIndent: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    child: Text(
                        'Sorry.Your phone is inactive to detect COVID-19 cases you maybe exposed to',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                  Container(
                    child: Opacity(
                        opacity: 0.7,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.grey,
                          child: Text('ENABLE',
                              style: const TextStyle(
                                color: Color(0xFF00FFFF),
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              )),
                          onPressed: () {
                            //enter
                          },
                        )),
                  )
                ]),
          ),
        ));
  }

  SliverPadding _box() {
    return SliverPadding(
        padding: const EdgeInsets.only(
          left: 18,
          top: 5,
          right: 18,
          bottom: 5,
        ),
        sliver: SliverToBoxAdapter(
            child: Container(
                height: 75.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Color(0xFF272727), Color(0xFF272727)],
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: 20.0,
                      ),
                      Text(
                        'No recent exposures',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ]))));
  }

  SliverPadding _buildHeader2() {
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
                width: 15,
              ),
              Text(
                'Exposures in the last 14 days',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ])));
  }
}
