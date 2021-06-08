import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:oapp/pages/digital_activitist/to_know.dart';
import 'package:oapp/pages/o_meetup/o_meetup.dart';
import 'package:oapp/values/values.dart';
import 'package:readmore/readmore.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

import 'create_post.dart';
import 'feeds_community.dart';

class DigitalAc extends StatefulWidget {
  @override
  _DigitalAcState createState() => _DigitalAcState();
}

class _DigitalAcState extends State<DigitalAc>
    with SingleTickerProviderStateMixin {
  var _controller = SnappingSheetController();
  AnimationController _arrowIconAnimationController;
  Animation<double> _arrowIconAnimation;

  double _moveAmount = 0.0;

  @override
  void initState() {
    super.initState();
    _arrowIconAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    _arrowIconAnimation = Tween(begin: 0.0, end: 0.5).animate(CurvedAnimation(
        curve: Curves.elasticOut,
        reverseCurve: Curves.elasticIn,
        parent: _arrowIconAnimationController));
  }

  @override
  Widget build(BuildContext context) {
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
          SnappingSheet(
            sheetAbove: new Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: Align(
                alignment: Alignment(0.90, 1.0),
                child: FloatingActionButton(
                  backgroundColor: AppColors.bgUpperGreen,
                  onPressed: () {
                    if (_controller.snapPositions.last !=
                        _controller.currentSnapPosition) {
                      _controller
                          .snapToPosition(_controller.snapPositions.last);
                    } else {
                      _controller
                          .snapToPosition(_controller.snapPositions.first);
                    }
                  },
                  child: RotationTransition(
                    child: Icon(
                      Icons.arrow_upward,
                      color: AppColors.primaryText,
                    ),
                    turns: _arrowIconAnimation,
                  ),
                ),
              ),
            ),
            onSnapEnd: () {
              if (_controller.snapPositions.last !=
                  _controller.currentSnapPosition) {
                _arrowIconAnimationController.reverse();
              } else {
                _arrowIconAnimationController.forward();
              }
            },
            onMove: (moveAmount) {
              setState(() {
                _moveAmount = moveAmount;
              });
            },
            snappingSheetController: _controller,
            snapPositions: const [
              SnapPosition(
                  positionPixel: 0.0,
                  snappingCurve: Curves.elasticOut,
                  snappingDuration: Duration(milliseconds: 800)),
              SnapPosition(positionFactor: 0.4),
              SnapPosition(positionFactor: 0.5),
            ],
            child: SafeArea(
              child: DefaultTabController(
                length: 3,
                child: GestureDetector(
                  onTap: () {
                    FocusScope.of(context).requestFocus(new FocusNode());
                  },
                  child: NestedScrollView(
                    physics: BouncingScrollPhysics(),
                    headerSliverBuilder:
                        (BuildContext context, bool innerBoxIsScrolled) {
                      return <Widget>[
                        SliverOverlapAbsorber(
                          handle:
                          NestedScrollView.sliverOverlapAbsorberHandleFor(
                              context),
                          sliver: SliverSafeArea(
                            top: false,
                            sliver: SliverAppBar(
                              floating: true,
                              pinned: false,
                              snap: false,
                              primary: true,
                              forceElevated: innerBoxIsScrolled,
                              elevation: 12,
                              centerTitle: true,
                              backgroundColor: Colors.transparent,
                              expandedHeight: 110.0,
                              title: title(),
                              leading: leading(),
                              actions: actions(),
                              bottom: TabBar(
                                // labelPadding: EdgeInsets.only(
                                //     left: 15, right: 15, top: 0),
                                // indicatorPadding:
                                //     EdgeInsets.only(left: 15, right: 15),
                                labelStyle: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 13,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 0.4,
                                    color: AppColors.primaryText),
                                unselectedLabelStyle: TextStyle(
                                    fontFamily: 'Ubuntu',
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.4,
                                    color: Colors.grey[500]),
                                unselectedLabelColor: Colors.grey[500],
                                indicatorSize: TabBarIndicatorSize.label,
                                isScrollable: true,
                                tabs: [
                                  Tab(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        // border: Border.all(color: Colors.redAccent, width: 1),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text("What to Know Today"),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        // border: Border.all(color: Colors.redAccent, width: 1),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text("Community Feeds"),
                                      ),
                                    ),
                                  ),
                                  Tab(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        // border: Border.all(color: Colors.redAccent, width: 1),
                                      ),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text("O-Meet up"),
                                      ),
                                    ),
                                  ),
                                  // Tab(text: "Community Feeds"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ];
                    },
                    body: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: <Widget>[ToKnow(), FeedsCommunity(), OMeetUp()],
                    ),
                  ),
                ),
              ),
            ),
            grabbingHeight: MediaQuery.of(context).padding.bottom + 45,
            grabbing: GrabSection(),
            sheetBelow: new SheetContent(),
          ),
        ],
      ),
    );
  }

  Widget title() => new Container(
    alignment: Alignment.center,
    padding: EdgeInsets.all(3),
    width: 50,
    height: 55,
    child: new FlareActor("assets/flare/logo_oapp_small.flr",
        fit: BoxFit.contain),
  );

  Widget leading() => IconButton(
    icon: Icon(
      Icons.arrow_back_ios,
      size: 24,
      color: AppColors.primaryText,
    ),
    onPressed: () {
      Navigator.pop(context);
    },
  );

  List<Widget> actions() => <Widget>[
    Row(
      children: <Widget>[
        Icon(Icons.notifications_none, color: AppColors.primaryText),
        SizedBox(width: 18),
      ],
    ),
  ];
}

class SheetContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.bgUpperGreen,
      child: CreatePost(),
    );
  }
}

class GrabSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.bgUpperGreen,
        boxShadow: [
          BoxShadow(
            blurRadius: 20.0,
            color: Colors.black.withOpacity(0.2),
          )
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35.0),
          topRight: Radius.circular(35.0),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 9.0,
            margin: EdgeInsets.only(top: 18.0),
            decoration: BoxDecoration(
                color: AppColors.bgLowerGreen.withOpacity(0.4),
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
          ),
//          Container(
//            height: 1.0,
//            margin: EdgeInsets.only(left: 20, right: 20),
//            color: AppColors.bgLowerGreen.withOpacity(0.4),
//          ),
        ],
      ),
    );
  }
}
