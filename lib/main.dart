/*
*  main.dart
*  OApp
*
*  Created by Yobo Zorle .
*  Copyright © 2018 Klynox. All rights reserved.
    */

import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oapp/values/values.dart';

import 'pages/reg_widget/reg_widget.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'OApp Welcome',
      debugShowCheckedModeBanner: false,
      color: Color(0xFF012114),
      home: OnBoard(),
    );
  }
}

class SplashSscreen extends StatefulWidget {
  final Color backgroundColor = Colors.white;
  final TextStyle styleTextUnderTheLoader = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  _SplashSscreenState createState() => _SplashSscreenState();
}

class _SplashSscreenState extends State<SplashSscreen> {
  String _versionName = 'V1.0';
  final splashDelay = 6;

  @override
  void initState() {
    super.initState();

    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => new RegWidget(),
        fullscreenDialog: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          new Container(
            decoration: new BoxDecoration(),
            child: new FlareActor("assets/flare/el_bg.flr",
                fit: BoxFit.cover), // bg_oapp.flr
          ),
          Center(
            child: new Container(
              height: 250,
              width: 250,
              decoration: new BoxDecoration(),
              child:
                  // new FlareActor("assets/flare/bg_oapp.flr", fit: BoxFit.fill),
                  new FlareActor("assets/flare/oapp_splash_anim.flr",
                      animation: 'intro', fit: BoxFit.contain), // bg_oapp.flr
            ),
          ),
        ],
      ),
    );
  }
}

class OnBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'OApp Welcome',
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: new BoxDecoration(
          color: Color(0xFF012114),
          image: DecorationImage(
            image: AssetImage('assets/images/bgone.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SplashScreen.navigate(
          height: MediaQuery.of(context).size.height / 3,
          name: 'assets/flare/anim_try3.flr',
          next: (context) => RegWidget(),
          until: () => Future.delayed(Duration(seconds: 5)),
          startAnimation: 'intro',
        ),
      ),
    );
  }
}
