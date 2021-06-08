import 'dart:async';

import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oapp/pages/menu_widget/menu_widget.dart';
import 'package:oapp/pages/o_meetup/o_meetup_live.dart';
import 'package:oapp/pages/settings/settings.dart';
import 'package:oapp/values/colors.dart';
import 'package:oapp/values/constants.dart';
import 'package:readmore/readmore.dart';

class Truths extends StatefulWidget {
  @override
  _TruthsState createState() => new _TruthsState();
}

class _TruthsState extends State<Truths> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.symmetric(horizontal: 0),
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                Container(
                  // color: Colors.white.withOpacity(0.2),
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    padding: EdgeInsets.only(left: 15, right: 15),
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: double.maxFinite,
                            height: 220.0,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0)),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://pbs.twimg.com/media/Eg6m__UWsAY5Ahn?format=jpg&name=large'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ReadMoreText(
                            'I am pleased that Simbo has taken the trouble to detail his thoughts and put them out for debate and analysis especially at a time when critical thinking on public affairs is narrowing.',
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
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Text(
                                'Quotes',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                              new Container(
                                width: 4,
                                height: 4,
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                decoration: new BoxDecoration(
                                  color: Colors.grey[400],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                '20 mins ago',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: double.maxFinite,
                            height: 220.0,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0)),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://pbs.twimg.com/media/Eg6m9bZX0AgN7m_?format=jpg&name=small'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ReadMoreText(
                            'Some have argued that one of the challenges we have faced as a nation is the reluctance of our best minds to get involved in politics. Simbo argues that we must approach this at retail level and not with wholesale mentality.',
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
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Text(
                                'Truths',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.pinkAccent,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                              new Container(
                                width: 4,
                                height: 4,
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                decoration: new BoxDecoration(
                                  color: Colors.grey[400],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                '1 hour ago',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: double.maxFinite,
                            height: 220.0,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0)),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://pbs.twimg.com/media/EfpgiM-WkAY0Nyc?format=jpg&name=medium'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ReadMoreText(
                            'Vision is important but so is memory. History is far too essential for us to de-prioritize. When the Federal Government decided to re-introduce history into the curriculum across schools, it was a decision to have our children understand the life that preceded them.',
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
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Text(
                                'Quotes',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                              new Container(
                                width: 4,
                                height: 4,
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                decoration: new BoxDecoration(
                                  color: Colors.grey[400],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                '3 hours ago',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: double.maxFinite,
                            height: 220.0,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0)),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://pbs.twimg.com/media/Ee-XByFXgAAyJ60?format=jpg&name=medium'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ReadMoreText(
                            'There is need for an urgent, honest and frank conversation about judicial reforms especially, the selection and appointment of judges in Nigeria, given the significant roles judges play in the polity, social justice and democracy itself.',
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
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Text(
                                'Quotes',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                              new Container(
                                width: 4,
                                height: 4,
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                decoration: new BoxDecoration(
                                  color: Colors.grey[400],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                'Aug 9, 2020',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            width: double.maxFinite,
                            height: 220.0,
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(25.0)),
                              image: DecorationImage(
                                image: NetworkImage(
                                    'https://pbs.twimg.com/media/Ec6rS90X0AEENaa?format=jpg&name=medium'),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          ReadMoreText(
                            'Our experience here in Nigeria is that that anonymous corporate ownership covers a multitude of sins including conflict of interest, corruption, tax evasion and even terrorism financing. \nNigeria is in the process of amending its law to mandate disclosure of beneficial interests.',
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
                          SizedBox(height: 5),
                          Row(
                            children: <Widget>[
                              Text(
                                'Quotes',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.lightBlueAccent,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                              new Container(
                                width: 4,
                                height: 4,
                                margin: EdgeInsets.symmetric(horizontal: 7),
                                decoration: new BoxDecoration(
                                  color: Colors.grey[400],
                                  shape: BoxShape.circle,
                                ),
                              ),
                              Text(
                                'Jul 14, 2020',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                    color: Colors.grey[300],
                                    fontWeight: FontWeight.w400,
                                    fontFamily: 'Ubuntu',
                                    letterSpacing: 0.3,
                                    height: 1.3,
                                    fontSize: 12),
                              ),
                            ],
                          )
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
}
