import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oapp/pages/digital_activitist/digital_ac.dart';
import 'package:oapp/values/values.dart';

import 'o_meetup.dart';

class OMeetUpLive extends StatefulWidget {
  @override
  _OMeetUpLiveState createState() => new _OMeetUpLiveState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _OMeetUpLiveState extends State<OMeetUpLive> {
  final String _star = 'assets/svg/star.svg';
  final String _live_bg = 'assets/svg/screen_live_meetup.svg';

  bool _show = true;
  Timer _timer;

  @override
  void initState() {
    _timer = Timer.periodic(Duration(milliseconds: 700), (_) {
      setState(() => _show = !_show);
    });
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 1.0; // 1.0 means normal animation speed.

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Container(
            decoration: new BoxDecoration(
              color: AppColors.greenNew,
              image: DecorationImage(
                image: AssetImage('assets/images/bgone.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          new Container(
            margin: EdgeInsets.only(top: 45),
            decoration: new BoxDecoration(),
            child: new FlareActor("assets/flare/live_bg.flr",
                fit: BoxFit.fitHeight),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: new GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Column(
                children: <Widget>[
                  new Container(
                    margin: EdgeInsets.only(top: 65),
                    width: 100,
                    decoration: new BoxDecoration(
                      color: Colors.transparent,
                      border: new Border.all(
                          color: AppColors.primaryText, width: 0.8),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: new Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 12, right: 12, top: 7, bottom: 7),
                        child: new Text('Go back',
                            style: TextStyle(
                                color: AppColors.primaryText,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Ubuntu',
                                fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  header() => Container(
        height: 65,
        margin: EdgeInsets.only(left: 15, right: 15, top: 7),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            GestureDetector(
                child: Stack(children: <Widget>[
                  Container(
                    alignment: Alignment.topLeft,
                    width: 50,
                    child: new FlareActor("assets/flare/logo_oapp_small.flr",
                        fit: BoxFit.contain),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: SvgPicture.asset(_star, // Bright shade at the top
                        height: 18,
                        width: 18,
                        color: _show ? Color(0xFFFFBB1F) : Colors.transparent,
                        semanticsLabel: 'star notif icon'),
                  ),
                ]),
                onTap: () {
                  Navigator.pop(context);
                }),
            Container(
              padding: EdgeInsets.only(top: 8),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 32,
                    decoration: BoxDecoration(
                      color: AppColors.primaryText,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 18.0, vertical: 4.0),
                        child: Text("Create MeetUp",
                            style: TextStyle(
                                color: AppColors.bgLowerGreen,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  title() => Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(top: 20, bottom: 15, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'O-MeetUp',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Ubuntu',
                  fontSize: 22),
            ),
          ],
        ),
      );
}
