import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oapp/pages/menu_widget/menu_widget.dart';
import 'package:oapp/values/values.dart';
import 'package:readmore/readmore.dart';

import 'o_meetup_live.dart';

class OMeetUp extends StatefulWidget {
  @override
  _OMeetUpState createState() => new _OMeetUpState();
}

var cardAspectRatio = 12.0 / 16.0;
var widgetAspectRatio = cardAspectRatio * 1.2;

class _OMeetUpState extends State<OMeetUp> {
  final String _star = 'assets/svg/star.svg';

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
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Container(
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      // First MeetUp
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OMeetUpLive()),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://cdn2.hubspot.net/hubfs/3873528/Women%20in%20Tech%20Africa%20Workers.png')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 0.0),
                                          child: Text(
                                            'African Women Developers MeetUp Kaduna.',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Ubuntu',
                                                letterSpacing: 0.3,
                                                fontSize: 15),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.timer,
                                                      size: 15,
                                                      color: Colors
                                                          .lightGreenAccent),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '04:30 PM',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .lightGreenAccent,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.calendar_today,
                                                      size: 14,
                                                      color: Colors
                                                          .lightGreenAccent),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Fri 19th, MAR 2021',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .lightGreenAccent,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.people,
                                                      size: 14,
                                                      color: Colors.white),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '1.23k people attending',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

//                                      SmoothStarRating(
//                                          allowHalfRating: false,
//                                          starCount: 5,
//                                          size: 40.0,
//                                          color: Colors.green,
//                                          borderColor: Colors.green,
//                                          spacing:0.0
//                                      )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ReadMoreText(
                              'The initiative fulfills the commitment expressed in 2017 by Google CEO Sundar Pichai to strengthen capacity of African entrepreneurs and developers through a Google Launchpad Accelerator Africa program and a space to serve as a hub where Venture Capitalists (VCs) and investors can connect easily with African entrepreneurs and developers.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  letterSpacing: 0.3,
                                  height: 1.3,
                                  fontSize: 14),
                              trimLines: 3,
                              colorClickableText: AppColors.primaryText,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: '...show more',
                              trimExpandedText: ' show less',
                            ),
                          ),
                          Container(
                              height: 0.6,
                              margin: EdgeInsets.symmetric(vertical: 15),
                              width: MediaQuery.of(context).size.width,
                              color: AppColors.primaryText),
                          Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new InkWell(
                                  onTap: () => print('hello'),
                                  child: new Container(
                                    margin: EdgeInsets.only(top: 3),
                                    decoration: new BoxDecoration(
                                      color: Colors.transparent,
                                      border: new Border.all(
                                          color: AppColors.primaryText,
                                          width: 0.8),
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    child: new Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 12,
                                            right: 12,
                                            top: 7,
                                            bottom: 7),
                                        child: new Text('Join meeting',
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Ubuntu',
                                                fontSize: 13.5)),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.reply,
                                    color: AppColors.primaryText, size: 20),
                                SizedBox(width: 15),
                                Icon(Icons.content_copy,
                                    color: AppColors.primaryText, size: 20),
                                SizedBox(width: 15),
                                Icon(Icons.more_horiz,
                                    color: AppColors.primaryText, size: 20),
                              ]),
                          SizedBox(height: 40),
                        ],
                      ),

                      //Second MeetUp
                      Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OMeetUpLive()),
                              );
                            },
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 150.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: NetworkImage(
                                            'https://make-it-initiative.org/africa/wp-content/uploads/sites/2/2019/04/Ecosystem-Meetup-flyer.png')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 0.0),
                                          child: Text(
                                            'Building a Maker Community in Nigeria.',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                color: AppColors.primaryText,
                                                fontWeight: FontWeight.w700,
                                                fontFamily: 'Ubuntu',
                                                letterSpacing: 0.3,
                                                fontSize: 15),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.timer,
                                                      size: 15,
                                                      color: Colors
                                                          .lightGreenAccent),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '03:00 PM',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .lightGreenAccent,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.calendar_today,
                                                      size: 14,
                                                      color: Colors
                                                          .lightGreenAccent),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Sat 27th, MAR 2021',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .lightGreenAccent,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.people,
                                                      size: 14,
                                                      color: Colors.white),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '537 people attending',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ReadMoreText(
                              'Come and join the conversation as we explore who a maker is, share ideas, discuss key challenegs and explore collaboration opportunities.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  letterSpacing: 0.3,
                                  height: 1.3,
                                  fontSize: 14),
                              trimLines: 3,
                              colorClickableText: AppColors.primaryText,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: '...show more',
                              trimExpandedText: ' show less',
                            ),
                          ),
                          Container(
                              height: 0.6,
                              margin: EdgeInsets.symmetric(vertical: 15),
                              width: MediaQuery.of(context).size.width,
                              color: AppColors.primaryText),
                          Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new InkWell(
                                  onTap: () => print('hello'),
                                  child: new Container(
                                    margin: EdgeInsets.only(top: 3),
                                    decoration: new BoxDecoration(
                                      color: Colors.transparent,
                                      border: new Border.all(
                                          color: Color(0xFFFA4B4B), width: 0.8),
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    child: new Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 12,
                                            right: 12,
                                            top: 7,
                                            bottom: 7),
                                        child: new Text('Request an invite',
                                            style: TextStyle(
                                                color: Color(0xFFFA4B4B),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Ubuntu',
                                                fontSize: 13.5)),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.reply,
                                    color: AppColors.primaryText, size: 20),
                                SizedBox(width: 15),
                                Icon(Icons.content_copy,
                                    color: AppColors.primaryText, size: 20),
                                SizedBox(width: 15),
                                Icon(Icons.more_horiz,
                                    color: AppColors.primaryText, size: 20),
                              ]),
                          SizedBox(height: 35),
                        ],
                      ),

                      // Third MeetUp
                      Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://community.wacom.com/eu/wp-content/uploads/2019/09/Click-On-Kaduna-Blogpost-Header.png')),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 0.0),
                                        child: Text(
                                          'Click-On Kaduna by Alice Lindenau',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Ubuntu',
                                              letterSpacing: 0.3,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.timer,
                                                    size: 15,
                                                    color: Colors
                                                        .lightGreenAccent),
                                                SizedBox(width: 3),
                                                Text(
                                                  '07:00 PM',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors
                                                          .lightGreenAccent,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Ubuntu',
                                                      letterSpacing: 0.3,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 7),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.calendar_today,
                                                    size: 14,
                                                    color: Colors
                                                        .lightGreenAccent),
                                                SizedBox(width: 3),
                                                Text(
                                                  'Tue 1st, APR 2021',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors
                                                          .lightGreenAccent,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Ubuntu',
                                                      letterSpacing: 0.3,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 7),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.people,
                                                    size: 14,
                                                    color: Colors.white),
                                                SizedBox(width: 3),
                                                Text(
                                                  '3.4m people attending',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Ubuntu',
                                                      letterSpacing: 0.3,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ReadMoreText(
                              'Don’t you just love to show your skills and bring creativity to the world? We sure do. We believe the way in which artists create and share their work with the rest of the world is breathtaking, and we encourage everyone to discover and explore their creative streak. Which is why we cherish organizations that support creatives around the world who have limited access to tools and programs that would help them unleash their creativity. And today, we are happy to talk about our partner, Click-On Kaduna.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  letterSpacing: 0.3,
                                  height: 1.3,
                                  fontSize: 14),
                              trimLines: 3,
                              colorClickableText: AppColors.primaryText,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: '...show more',
                              trimExpandedText: ' show less',
                            ),
                          ),
                          Container(
                              height: 0.6,
                              margin: EdgeInsets.symmetric(vertical: 15),
                              width: MediaQuery.of(context).size.width,
                              color: AppColors.primaryText),
                          Row(children: <Widget>[
                            new InkWell(
                              onTap: () => print('hello'),
                              child: new Container(
                                margin: EdgeInsets.only(top: 3),
                                decoration: new BoxDecoration(
                                  color: Colors.transparent,
                                  border: new Border.all(
                                      color: Color(0xFFFA4B4B), width: 0.8),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: new Center(
                                  child: Container(
                                    margin: EdgeInsets.only(
                                        left: 12, right: 12, top: 7, bottom: 7),
                                    child: new Text('Request an invite',
                                        style: TextStyle(
                                            color: Color(0xFFFA4B4B),
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Ubuntu',
                                            fontSize: 13.5)),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(child: SizedBox()),
                            Icon(Icons.reply,
                                color: AppColors.primaryText, size: 20),
                            SizedBox(width: 15),
                            Icon(Icons.content_copy,
                                color: AppColors.primaryText, size: 20),
                            SizedBox(width: 15),
                            Icon(Icons.more_horiz,
                                color: AppColors.primaryText, size: 20),
                          ]),
                          SizedBox(height: 35),
                        ],
                      ),

                      // Fourth MeetUp
                      Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                width: 150.0,
                                height: 100.0,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: NetworkImage(
                                          'https://www.cio.co.ke/wp-content/uploads/2017/09/Developers.jpg')),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0)),
                                  color: Colors.grey.withOpacity(0.3),
                                ),
                              ),
                              Flexible(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 0.0),
                                        child: Text(
                                          'KADUNA MEET on El-Rufai App.',
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Ubuntu',
                                              letterSpacing: 0.3,
                                              fontSize: 15),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.timer,
                                                    size: 15,
                                                    color: Colors
                                                        .lightGreenAccent),
                                                SizedBox(width: 3),
                                                Text(
                                                  '08:30 PM',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors
                                                          .lightGreenAccent,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Ubuntu',
                                                      letterSpacing: 0.3,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 7),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.calendar_today,
                                                    size: 14,
                                                    color: Colors
                                                        .lightGreenAccent),
                                                SizedBox(width: 3),
                                                Text(
                                                  'Fri 21st, AUG 2021',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors
                                                          .lightGreenAccent,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Ubuntu',
                                                      letterSpacing: 0.3,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 7),
                                            Row(
                                              children: <Widget>[
                                                Icon(Icons.people,
                                                    size: 14,
                                                    color: Colors.white),
                                                SizedBox(width: 3),
                                                Text(
                                                  '3.7k people attending',
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontFamily: 'Ubuntu',
                                                      letterSpacing: 0.3,
                                                      fontSize: 13),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: ReadMoreText(
                              'Join designers in Lagos, Nigeria on October 14th for another fantastic Dribbble Meetup hosted by Rewrite Interaction Agency at Workstation. This community-building meetup is a self-described “unconference;” no speakers, just the community interacting and engaging.',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  letterSpacing: 0.3,
                                  height: 1.3,
                                  fontSize: 14),
                              trimLines: 3,
                              colorClickableText: AppColors.primaryText,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: '...show more',
                              trimExpandedText: ' show less',
                            ),
                          ),
                          Container(
                              height: 0.6,
                              margin: EdgeInsets.symmetric(vertical: 15),
                              width: MediaQuery.of(context).size.width,
                              color: AppColors.primaryText),
                          Row(
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new InkWell(
                                  onTap: () => print('hello'),
                                  child: new Container(
                                    margin: EdgeInsets.only(top: 3),
                                    decoration: new BoxDecoration(
                                      color: Colors.transparent,
                                      border: new Border.all(
                                          color: Color(0xFFFA4B4B), width: 0.8),
                                      borderRadius:
                                          new BorderRadius.circular(10.0),
                                    ),
                                    child: new Center(
                                      child: Container(
                                        margin: EdgeInsets.only(
                                            left: 12,
                                            right: 12,
                                            top: 7,
                                            bottom: 7),
                                        child: new Text('Request an invite',
                                            style: TextStyle(
                                                color: Color(0xFFFA4B4B),
                                                fontWeight: FontWeight.w400,
                                                fontFamily: 'Ubuntu',
                                                fontSize: 13.5)),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(child: SizedBox()),
                                Icon(Icons.reply,
                                    color: AppColors.primaryText, size: 20),
                                SizedBox(width: 15),
                                Icon(Icons.content_copy,
                                    color: AppColors.primaryText, size: 20),
                                SizedBox(width: 15),
                                Icon(Icons.more_horiz,
                                    color: AppColors.primaryText, size: 20),
                              ]),
                          SizedBox(height: 35),
                        ],
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(bottom: 50),
                ),
              ],
            ),
          ),
        ),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MenuWidget(),
                        fullscreenDialog: true),
                  );
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
              'El-MeetUp',
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
