import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:oapp/pages/settings/settings.dart';
import 'package:oapp/pages/the_podcast/podcast.dart';
import 'package:oapp/values/colors.dart';

import '../truths.dart';

class MoveWithOsi extends StatefulWidget {
  @override
  _MoveWithOsiState createState() => _MoveWithOsiState();
}

class _MoveWithOsiState extends State<MoveWithOsi>
    with SingleTickerProviderStateMixin {
  final String _settings = 'assets/svg/settings.svg';
  final String _search = 'assets/svg/search.svg';

  TabController _controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(text: 'THE PODCAST'),
    Tab(text: 'THE TRUTHS'),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    _controller = TabController(length: list.length, vsync: this);

    _controller.addListener(() {
      setState(() {
        _selectedIndex = _controller.index;
      });
      print("Selected Index: " + _controller.index.toString());
    });
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
          home: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
                backgroundColor: Colors.transparent,
                brightness: Brightness.light,
                elevation: 0,
                leading: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.close, color: Colors.white)),
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
                bottom: TabBar(
                  // indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.blueGrey,
                  indicatorPadding: EdgeInsets.only(left: 15.0, right: 15.0),
                  indicatorWeight: 0.0,
                  labelStyle: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Ubuntu',
                      fontWeight: FontWeight.w800),
                  labelPadding: EdgeInsets.only(left: 0.0, right: 0.0),
                  indicator: BoxDecoration(
                      borderRadius: BorderRadius.circular(50), // Creates border
                      color: AppColors.primaryText.withOpacity(0.3)),
                  onTap: (index) {},
                  controller: _controller,
                  tabs: list,
                ),
              ),

            body: TabBarView(
              controller: _controller,
              children: [Podcast(), Truths()],
            ),
          ),
        ),
      ],
    );
  }
}
