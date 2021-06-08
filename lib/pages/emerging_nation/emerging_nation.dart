import 'package:carousel_pro/carousel_pro.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oapp/pages/settings/settings.dart';
import 'package:oapp/values/values.dart';
import 'package:readmore/readmore.dart';

import 'how_it_started/one.dart';

class EmergingNation extends StatefulWidget {
  EmergingNation({Key key}) : super(key: key);

  @override
  _EmergingNationState createState() => _EmergingNationState();
}

class _EmergingNationState extends State<EmergingNation>
    with SingleTickerProviderStateMixin {
  final String _search = 'assets/svg/search.svg';
  final String _settings = 'assets/svg/settings.svg';
  final String _star = 'assets/svg/star.svg';

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.transparent,
          body: Material(
            child: Stack(
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
                    constraints: BoxConstraints.expand(),
                    margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: SafeArea(
                      child: new SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        child: new Column(
                          children: <Widget>[
                            header(),



                            Container(
                              width:
                              MediaQuery.of(context).size.width,
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                  top: 15, bottom: 18),
                              child: Column(
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'How It Started Vs How It\'s Going',
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontWeight: FontWeight.w800,
                                        fontFamily: 'Ubuntu',
                                        fontSize: 23),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Keep track of government projects and allocations.',
                                    style: TextStyle(
                                        color: AppColors.primaryText,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Ubuntu',
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                            how(),




                            title(),
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 40),
                              width: MediaQuery.of(context).size.width,
                              child: Column(
                                children: <Widget>[
                                  new Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: 190.0,
                                          margin: EdgeInsets.only(bottom: 15),
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Carousel(
                                            images: [
                                              NetworkImage(
                                                  'https://1.bp.blogspot.com/-MSRHppFV14Y/X00jKuKrxyI/AAAAAAACVZI/N4T_w3pdQQ4fmeBYGnPs1FsAIfm-DOq8gCNcBGAsYHQ/s720/FB_IMG_1598890442448.jpg'),
                                              NetworkImage(
                                                  'https://gcfrng.com/wp-content/uploads/2020/08/Pastor-Adeboye-3.jpg'),
                                              NetworkImage(
                                                  'https://dailypost.ng/wp-content/uploads/2020/08/IMG-20200831-WA0016.jpg'),
                                              NetworkImage(
                                                  'https://i0.wp.com/media.premiumtimesng.com/wp-content/files/2020/08/ADEBO-e1598895965932.jpg?resize=1018%2C570&ssl=1'),
                                              NetworkImage(
                                                  'https://newsdirect.ng/wp-content/uploads/2020/08/4a122162-7cf2-4c14-b6ce-6e8af58dffd2-1000x600.jpg'),
                                            ],
                                            dotSize: 3.0,
                                            dotSpacing: 13.0,
                                            dotColor:
                                                Colors.white.withOpacity(0.5),
                                            indicatorBgPadding: 5.0,
                                            // animationDuration: Duration(seconds: 3),
                                            autoplayDuration:
                                                Duration(seconds: 6),
                                            dotBgColor:
                                                Colors.purple.withOpacity(0.0),
                                            borderRadius: false,
                                          )),
                                      Text('Monday, 31st August 2021.',
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w600,
                                              fontFamily: 'Ubuntu',
                                              fontSize: 14)),
                                      Container(
                                          height: 3,
                                          width: 80,
                                          margin: EdgeInsets.symmetric(
                                              vertical: 10),
                                          color: AppColors.primaryText),
                                      ReadMoreText(
                                        'President Muhammadu Buhari inaugurated the Executive, Legislative Party Consultative'
                                        ' Committee to be chaired by Vice-President Yemi Osinbajo.\n'
                                        'President Muhammadu Buhari received in audience the General Overseer of the Redeemed Christian Church of God, Pastor E.A Adeboye.',
                                        style: TextStyle(
                                            height: 1.3,
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontFamily: 'Ubuntu',
                                            fontSize: 14),
                                        trimLines: 3,
                                        colorClickableText:
                                            AppColors.primaryText,
                                        trimMode: TrimMode.Line,
                                        trimCollapsedText: '...read more',
                                        trimExpandedText: ' show less',
                                      ),
                                      SizedBox(height: 25),

                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
              ],
            ),
          )),
    );
  }

  header() => Container(
        height: 65,
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
                        color: Color(0xFFFFBB1F),
                        semanticsLabel: 'star notif icon'),
                  ),
                ]),
                onTap: () {
                  Navigator.pop(context);
                }),
            Container(
              padding: EdgeInsets.only(top: 5),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                      child: Container(
                        height: 25,
                        width: 35,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 10),
                        child:
                            SvgPicture.asset(_search, // Bright shade at the top
                                height: 22,
                                width: 22,
                                semanticsLabel: 'bg bottom image'),
                      ),
                      onTap: () {}),
                  GestureDetector(
                    child: Container(
                      height: 25,
                      width: 30,
                      alignment: Alignment.centerRight,
                      child:
                          SvgPicture.asset(_settings, // Bright shade at the top
                              height: 22,
                              width: 22,
                              color: AppColors.primaryText,
                              semanticsLabel: 'bg bottom image'),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Settings(),
                            fullscreenDialog: true),
                      );
                    },
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
        margin: EdgeInsets.only(top: 30, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'An Emerging Nation',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Ubuntu',
                  fontSize: 23),
            ),
          ],
        ),
      );

  how() => Container(
      height: 240,
      width: MediaQuery.of(context).size.width,
      // color: Colors.amber.withOpacity(0.2),
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          GestureDetector(
            child: Container(
              width: 200,
              child: Column(
                children: [
                  Container(
                    height: 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://storage.googleapis.com/thisday-846548948316-wp-data/wp-media/2019/05/813546ab-apapa-gridlock-traffic.jpg')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'How Osinbajo Task Team sorted Apapa gridlock.',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Ubuntu',
                        letterSpacing: 0.3,
                        fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  new Container(
                    margin: EdgeInsets.only(top: 3),
                    decoration: new BoxDecoration(
                      color: Colors.transparent,
                      border: new Border.all(
                          color: Colors.lightBlueAccent, width: 0.8),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: new Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 12, right: 12, top: 7, bottom: 7),
                        child: new Text('See How It\'s Going',
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 13.5)),
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
                    builder: (context) => One(), fullscreenDialog: true),
              );
            },
          ),
          SizedBox(width: 25),
          GestureDetector(
            child: Container(
              width: 200,
              child: Column(
                children: [
                  Container(
                    height: 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://rea.gov.ng/wp-content/uploads/2021/04/Babamanu-technical-project-lead-for-Solar-Power-Naija-at-the-Rural-Electrification-Agency-of-NigeriaPhotographer-KC-Nwakalor-Bloomberg-768x480.jpg')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'REA Projects Critical to Reducing Carbon Effects – Osinbajo',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Ubuntu',
                        letterSpacing: 0.3,
                        fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  new Container(
                    margin: EdgeInsets.only(top: 3),
                    decoration: new BoxDecoration(
                      color: Colors.transparent,
                      border: new Border.all(
                          color: Colors.lightBlueAccent, width: 0.8),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: new Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 12, right: 12, top: 7, bottom: 7),
                        child: new Text('See How It\'s Going',
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 13.5)),
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
                    builder: (context) => One(), fullscreenDialog: true),
              );
            },
          ),
          SizedBox(width: 25),
          GestureDetector(
            child: Container(
              width: 200,
              child: Column(
                children: [
                  Container(
                    height: 130.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://compatriotmag.com/wp-content/uploads/2018/12/unnamed.jpg')),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Vice President Osinbajo launches African Development Bank-funded US\$258 million landmark northeast recovery Programme',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Ubuntu',
                        letterSpacing: 0.3,
                        fontSize: 15),
                  ),
                  SizedBox(height: 10),
                  new Container(
                    margin: EdgeInsets.only(top: 3),
                    decoration: new BoxDecoration(
                      color: Colors.transparent,
                      border: new Border.all(
                          color: Colors.lightBlueAccent, width: 0.8),
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    child: new Center(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: 12, right: 12, top: 7, bottom: 7),
                        child: new Text('See How It\'s Going',
                            style: TextStyle(
                                color: Colors.lightBlueAccent,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 13.5)),
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
                    builder: (context) => One(), fullscreenDialog: true),
              );
            },
          ),
        ],
      ));
}
