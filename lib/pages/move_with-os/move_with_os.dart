import 'dart:async';

import 'package:flutter/material.dart';
import 'package:oapp/pages/move_with-os/thumbs_up.dart';
import 'package:oapp/pages/move_with-os/truths.dart';
import 'package:oapp/pages/settings/settings.dart';
import 'package:oapp/pages/the_podcast/podcast.dart';
import 'package:oapp/values/values.dart';
import 'package:flutter_svg/svg.dart';
import 'package:video_player/video_player.dart';

class MoveWithOs extends StatefulWidget {
  @override
  _MoveWithOsState createState() => _MoveWithOsState();
}

class _MoveWithOsState extends State<MoveWithOs> with SingleTickerProviderStateMixin {
  final String _star = 'assets/svg/star.svg';
  final String _settings = 'assets/svg/settings.svg';
  final String _search = 'assets/svg/search.svg';

  bool _show = true;
  Timer _timer;

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: new BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bgone.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                brightness: Brightness.light,
                elevation: 0,
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, color: Colors.grey[500])),
                actions: [
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
                  SizedBox(width: 20)
                ],
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(50.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.1,
                      child: TabBar(
                        isScrollable: true,
                        indicatorSize: TabBarIndicatorSize.tab,
                        physics: BouncingScrollPhysics(),
                        // indicator: CircleTabIndicator(
                        //     color: Colors.white, radius: 3.5),
                        indicatorPadding: EdgeInsets.only(left: 110, right: 110),
                        indicatorWeight: 0.5,
                        unselectedLabelStyle: TextStyle(
                            color: Colors.grey[500],
                            fontFamily: 'Ubuntu',
                            fontWeight: FontWeight.w700,
                            fontSize: 13),
                        unselectedLabelColor: Colors.grey[500],
                        labelStyle: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Ubuntu',
                            fontSize: 22),
                        labelColor: AppColors.primaryText,
                        tabs: [
                          Tab(text: 'THUMBS UP'),
                          Tab(text: 'THE PODCAST'),
                          Tab(text: 'THE TRUTHS'),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              body: TabBarView(
                children: [
                  ThumbsUp(),
                  Podcast(),
                  Truths()
                  // ReferralHome()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
