/*
*  fresh_widget.dart
*  OApp
*
*  Created by Yobo Zorle .
*  Copyright © 2018 Klynox. All rights reserved.
    */

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:oapp/anims/showup.dart';
import 'package:oapp/pages/menu_widget/menu_widget.dart';
import 'package:oapp/values/borders.dart';
import 'package:oapp/values/values.dart';

import 'otp_widget.dart';
import 'try.dart';

class RegWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _RegWidgetState();
}

class _RegWidgetState extends State<RegWidget> with TickerProviderStateMixin {
  final Shader lin = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      AppColors.primaryText,
      AppColors.primaryText,
      AppColors.lightPrimary
    ],
  ).createShader(Rect.fromLTRB(0, 0, 300, 0));

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Color(0xFf012114),
        body: new Stack(
          children: <Widget>[
            new Container(
              child: new FlareActor("assets/flare/reg_bg_oapp.flr",
                  fit: BoxFit.cover),
            ),
            SafeArea(
                child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).requestFocus(new FocusNode());
                    },
                    child: _body())),
          ],
        ));
  }

  _body() => SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          // color: Colors.yellow.withOpacity(0.04),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(left: 30, right: 30, top: 30),
          child: Column(
            children: <Widget>[
              ShowUp(delay: 500, child: header()),
              ShowUp(delay: 800, child: subtitle()),
              // Expanded(child: SizedBox()),
              SizedBox(height: MediaQuery.of(context).size.height * .4),
              ShowUp(delay: 1300, child: label()),
              ShowUp(delay: 1600, child: regPanel()),
             //  ShowUp(delay: 2000, child: signupBtn()),
              // Container(height: 100, width: 100)
            ],
          ),
        ),
      );

  header() => Container(
        alignment: Alignment.topLeft,
        child: RichText(
          text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: 'WELCOME TO\nTHE',
              style: TextStyle(
                  wordSpacing: 3,
                  letterSpacing: .2,
                  fontWeight: FontWeight.w900,
                  foreground: Paint()..shader = lin,
                  fontSize: 33,
                  fontFamily: 'Ubuntu'),
            ),
            TextSpan(
              text: ' OSINBAJO\n',
              style: TextStyle(
                  height: 1.25,
                  wordSpacing: 3,
                  letterSpacing: .6,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  fontSize: 33,
                  fontFamily: 'Ubuntu'),
            ),
            TextSpan(
              text: 'APP',
              style: TextStyle(
                height: 1.25,
                wordSpacing: 3,
                fontWeight: FontWeight.w900,
                fontSize: 33,
                foreground: Paint()..shader = lin,
              ),
            )
          ]),
        ),
      );

  subtitle() => Container(
      margin: EdgeInsets.only(top: 4),
      alignment: Alignment.centerLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Join today to help in',
            style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.w500,
                fontFamily: 'Ubuntu',
                letterSpacing: 0.3,
                fontSize: 15),
          ),
          SizedBox(height: 2),
          Text(
            'Making The Nigeria Of Our Dreams.',
            style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.w700,
                fontFamily: 'Ubuntu',
                letterSpacing: 0.3,
                fontSize: 16),
          ),
        ],
      ));

  regPanel() => Column(
        children: <Widget>[
          // Container(
          //   height: 60,
          //   margin: EdgeInsets.only(bottom: 20),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     crossAxisAlignment:
          //         CrossAxisAlignment.center, // If you want align text to left
          //     children: <Widget>[
          //       TextField(
          //         textAlignVertical: TextAlignVertical.center,
          //         textAlign: TextAlign.center,
          //         maxLines: 1,
          //         keyboardType: TextInputType.number,
          //         style:
          //             TextStyle(fontSize: 15.0, color: AppColors.bgLowerGreen),
          //         decoration: InputDecoration(
          //           focusColor: Colors.white,
          //           filled: true,
          //           fillColor: AppColors.primaryText,
          //           hintText: 'Enter Phone Number',
          //           hintStyle: TextStyle(
          //             color: AppColors.bgLowerGreen,
          //             fontFamily: "Ubuntu",
          //             fontWeight: FontWeight.w500,
          //             fontSize: 15,
          //             letterSpacing: 0.2,
          //           ),
          //           labelStyle: TextStyle(
          //             color: AppColors.bgLowerGreen,
          //             fontFamily: "Ubuntu",
          //             fontWeight: FontWeight.w500,
          //             fontSize: 15,
          //             letterSpacing: 0.2,
          //           ),
          //           border: OutlineInputBorder(
          //             borderSide: BorderSide(
          //               color: Colors.white,
          //             ),
          //             borderRadius: BorderRadius.all(Radius.circular(0)),
          //           ),
          //           focusedBorder: OutlineInputBorder(
          //             borderSide: BorderSide(color: AppColors.primaryText),
          //             borderRadius: BorderRadius.circular(0),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          Container(
              height: 57,
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: AppColors.primaryText,
                border: Border.fromBorderSide(Borders.primaryBorder),
              ),
              child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    splashColor: AppColors.primaryText.withOpacity(0.8),
                    child: Container(
                      margin: EdgeInsets.symmetric(vertical: 7),
                      // color: Colors.white.withOpacity(0.2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "GET STARTED",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: "Ubuntu",
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                letterSpacing: 1,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => new MenuWidget(),
                          fullscreenDialog: true,
                        ),
                      );
                    },
                  ))),
        ],
      );

  label() => Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(bottom: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            'Let\'s Go!',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.w800,
                fontFamily: 'Ubuntu',
                letterSpacing: 0.3,
                fontSize: 15),
          ),
          SizedBox(height: 4),
          Text(
            'Check in to events, share with\nfriends, earn points and redeem rewards.',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: AppColors.primaryText,
                fontWeight: FontWeight.w500,
                fontFamily: 'Ubuntu',
                letterSpacing: 0.1,
                fontSize: 14.5),
          ),
        ],
      ));

  signupBtn() => Column(
        children: <Widget>[
          FlatButton(
            child: Text('SIGN UP',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.primaryText,
                  fontFamily: "Ubuntu",
                  fontWeight: FontWeight.w500,
                  fontSize: 14.5,
                  letterSpacing: 0.8,
                )),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => new Try(),
                  fullscreenDialog: true,
                ),
              );
            },
          ),
          SizedBox(height: 25),
        ],
      );
}
