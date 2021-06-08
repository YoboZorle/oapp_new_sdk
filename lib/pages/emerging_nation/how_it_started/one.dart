import 'package:expandable/expandable.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oapp/pages/settings/settings.dart';
import 'package:oapp/values/values.dart';
import 'package:timeline_list/timeline.dart';
import 'package:timeline_list/timeline_model.dart';

class One extends StatefulWidget {
  One({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  final PageController pageController =
      PageController(initialPage: 1, keepPage: true);
  int pageIx = 1;

  final String _search = 'assets/svg/search.svg';
  final String _settings = 'assets/svg/settings.svg';
  final String _star = 'assets/svg/star.svg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              decoration: new BoxDecoration(
                color: AppColors.greenNew,
                image: DecorationImage(
                  image: AssetImage('assets/images/bgone.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  children: [
                    header(),
                    title(),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 170, left: 10, right: 0, bottom: 50),
              child: Timeline.builder(
                  itemBuilder: centerTimelineBuilder,
                  itemCount: doodles.length,
                  physics: BouncingScrollPhysics(),
                  position: TimelinePosition.Left),
            ),
          ],
        ));
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
        margin: EdgeInsets.only(top: 20, bottom: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
              'How Osinbajo Task Team sorted Apapa gridlock\nfrom 2017 - 2021.',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Ubuntu',
                  fontSize: 13),
            ),
          ],
        ),
      );

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
    final doodle = doodles[i];
    return TimelineModel(
        Card(
          margin: EdgeInsets.symmetric(vertical: 15.0),
          elevation: 0,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          clipBehavior: Clip.antiAlias,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Image.network(doodle.doodle),
                const SizedBox(
                  height: 10.0,
                ),
                Text(doodle.time,
                    style: TextStyle(
                        fontFamily: "Ubuntu",
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey)),
                const SizedBox(
                  height: 8.0,
                ),
                ExpandablePanel(
                  header: Text(doodle.name,
                      style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Colors.black)),
                  collapsed: Text(doodle.content,
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                  expanded: Text(doodle.collapsed,
                      softWrap: true,
                      style: TextStyle(
                          fontFamily: "Ubuntu",
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.black)),
                ),
                const SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
        ),
        position:
            i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
        isFirst: i == 0,
        isLast: i == doodles.length,
        iconBackground: doodle.iconBackground,
        icon: doodle.icon);
  }
}

class Doodle {
  final String name;
  final String time;
  final String collapsed;
  final String content;
  final String doodle;
  final Color iconBackground;
  final Icon icon;

  const Doodle(
      {this.name,
      this.time,
      this.collapsed,
      this.content,
      this.doodle,
      this.icon,
      this.iconBackground});
}

const List<Doodle> doodles = [
  Doodle(
      name:
          "Osinbajo Taking An Aerial View Of Apapa-Oshodi From An Helicopter.",
      time: "Nov 14, 2017",
      collapsed:
          '"Today, I presided over a Govt/Private sector meeting on how to resolve the Apapa traffic gridlock.\n\n'
          'Last week, I flew over the Apapa for an aerial assessment of the situation".',
      content:
          'The road is known to witness huge traffic everyday due to large trucks and tankers plying the route.',
      doodle:
          "https://www.nairaland.com/attachments/6257290_fbimg1510693035555_jpegee1de284953ea7e2a87b2e56ddfe2c21",
      icon: Icon(Icons.keyboard_arrow_down, color: Colors.white),
      iconBackground: Colors.cyan),
  Doodle(
      name:
          "VP, Gov Meet Stakeholders, Resolve To Find Permanent Solution To Gridlock.",
      time: "Jul 26, 2018",
      collapsed:
          'Nigeria\'s Vice President Yemi Osinbajo on Thursday assured that the anticipated reconstruction of the Apapa-Oshodi Express would commence within the next two weeks as part of the Federal Government\'s resolve to finding lasting solution to the chaos in the Apapa axis.',
      content: "",
      doodle:
          "https://www.nairaland.com/attachments/6257288_fbimg1510693017886_jpegeab738ac5d74530eb1ab8194e7254711",
      icon: Icon(
        Icons.keyboard_arrow_down,
        color: Colors.white,
      ),
      iconBackground: Colors.redAccent),
  Doodle(
      name: "Osinbajo Task Team Sorted Apapa Gridlock",
      time: "Jan 24th, 2021",
      collapsed:
          'Tackles transport challenges with e-call up system, road rehabilitation projects.',
      content:
          'Tackles transport challenges with e-call up system, road rehabilitation projects.',
      doodle:
          "https://thenationonlineng.net/wp-content/uploads/2020/03/Osinbajo-696x456-1.png",
      icon: Icon(
        Icons.circle,
        color: Colors.black87,
      ),
      iconBackground: Colors.lightGreenAccent),
];
