import 'package:carousel_pro/carousel_pro.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:oapp/values/values.dart';
import 'package:readmore/readmore.dart';

class FebDetails extends StatelessWidget {
  FebDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.transparent,
//          appBar: AppBar(
//            leading: IconButton(
//              icon: Icon(Icons.arrow_back_ios,
//                  size: 22, color: AppColors.primaryText),
//              onPressed: () => Navigator.of(context).pop(),
//            ),
//            elevation: 0,
//            backgroundColor: Colors.transparent,
//            title: Text('February 2021',
//                style: TextStyle(
//                    color: AppColors.primaryText,
//                    fontWeight: FontWeight.w600,
//                    fontFamily: 'Ubuntu',
//                    fontSize: 17)),
//          ),
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
                  constraints: BoxConstraints.expand(),
                  child: SafeArea(
                    child: new SingleChildScrollView(
                      physics: BouncingScrollPhysics(),
                      child: new Column(
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width,
                            // color: Colors.yellow,
                            margin: EdgeInsets.only(
                                left: 5, right: 20, bottom: 5),
                            child: Row(children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios,
                                    size: 22, color: AppColors.primaryText),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                              Expanded(child: SizedBox()),
                              Text('February Review 2021',
                                  style: TextStyle(
                                      color: AppColors.primaryText,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Ubuntu',
                                      fontSize: 17)),
                              SizedBox(width: 30),
                              Expanded(child: SizedBox()),
                            ]),
                          ),
                          Container(
                            margin:
                            EdgeInsets.only(left: 20, right: 20, top: 5),
                            width: MediaQuery.of(context).size.width,
                            child: Column(
                              children: <Widget>[
                                // First AUG
                                new Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        height: 180.0,
                                        margin: EdgeInsets.only(bottom: 15),
                                        width:
                                        MediaQuery.of(context).size.width,
                                        child: Carousel(
                                          images: [
                                            NetworkImage(
                                                'https://www.yemiosinbajo.ng/wp-content/uploads/2020/07/Edgewood-College-Class-of-2020-graduation-on-25072020.jpeg'),
                                            NetworkImage(
                                                'https://www.yemiosinbajo.ng/wp-content/uploads/2020/07/Edgewood-College-Class-of-2020-graduation-on-25072020-2.jpeg'),
                                            // ExactAssetImage("assets/images/b.jpeg")
                                          ],
                                          dotSize: 3.0,
                                          dotSpacing: 13.0,
                                          dotColor:
                                          Colors.white.withOpacity(0.5),
                                          indicatorBgPadding: 5.0,
                                          // animationDuration: Duration(seconds: 3),
                                          autoplayDuration:
                                          Duration(seconds: 4),
                                          dotBgColor:
                                          Colors.purple.withOpacity(0.0),
                                          borderRadius: false,
                                        )),
                                    Text('Saturday, 25th February 2021.',
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
                                      'Vice-President Yemi Osinbajo delivered the keynote address for Edgewood College, Lagos\' graduation ceremony.'
                                          '\n"Every generation is gifted by God with unique circumstnaces that give them an opportunity to distinguish'
                                          ' themselves, to make history, to do something that has never been done before, to positively alter the trajectory '
                                          'of the story of mankind.\n\n'
                                          'That opportunity usually comes disguised as a challenge, a drawback, even a tragedy, it hardly ever looks like the next '
                                          'great leap of mankind that it really is. The generation that should take advantage may sometimes even miss the opportunity, because '
                                          'as humans being our inclination is to look back rather than ahead.\n\n'
                                          'But worse, we miss the moment becuase opportunity no longer knocks it sounds more like the a whisper, barely audible because there is so much noise '
                                          'in the world today. Which is why I have named your class, this class of 2021, the class of game changers"',
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

                                // Second AUG
                                new Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        height: 180.0,
                                        margin: EdgeInsets.only(bottom: 15),
                                        width:
                                        MediaQuery.of(context).size.width,
                                        child: Carousel(
                                          images: [
                                            NetworkImage(
                                                'https://1.bp.blogspot.com/-U55wuRD4L1k/XwdV4KIIvdI/AAAAAAABwOM/eHiOfAvKfkI8_owtU5ZqwFmKFnQbDQR6ACNcBGAsYHQ/s1600/2.jpg'),
                                            NetworkImage(
                                                'https://www.yemiosinbajo.ng/wp-content/uploads/2020/07/VP-meets-with-International-Agencies-in-Nigeria-and-diplomats-who-offered-support-for-NESP-on-23072020.jpeg'),
                                            // ExactAssetImage("assets/images/b.jpeg")
                                          ],
                                          dotSize: 3.0,
                                          dotSpacing: 13.0,
                                          dotColor:
                                          Colors.white.withOpacity(0.5),
                                          indicatorBgPadding: 5.0,
                                          // animationDuration: Duration(seconds: 3),
                                          autoplayDuration:
                                          Duration(seconds: 4),
                                          dotBgColor:
                                          Colors.purple.withOpacity(0.0),
                                          borderRadius: false,
                                        )),
                                    Text('Thursday, 23rd February 2021.',
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
                                      'Vice-President Yemi Osinbajo held a virtual meeting with leaders of International Agencies and Diplomats led by '
                                          'Edward Kallon, the coordinator of United Nations.\n\nThe international community made of representatives of governments'
                                          ' (US, UK and the EU) as well as representatives of agencies and organisations (UN, DFID, UNDP, World Bank and IMF) pledged'
                                          ' their support to assist with the implementation of the Economic Sustainability Plan. Together, Nigeria will prevail.\n\n'
                                          'Same day, the Vice-President Yemi Osinbajo held a virtual meeting with the Catholic Archbishops.',
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

                                // Third AUG
                                new Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Container(
                                        height: 180.0,
                                        margin: EdgeInsets.only(bottom: 15),
                                        width:
                                        MediaQuery.of(context).size.width,
                                        child: Carousel(
                                          images: [
                                       NetworkImage(
                                                'https://alexis.lindaikejisblog.com/photos/shares/5ed79eaedfdc4.jpg'),
                                            // ExactAssetImage("assets/images/b.jpeg")
                                          ],
                                          dotSize: 3.0,
                                          dotSpacing: 13.0,
                                          dotColor:
                                          Colors.white.withOpacity(0.5),
                                          indicatorBgPadding: 5.0,
                                          // animationDuration: Duration(seconds: 3),
                                          autoplayDuration:
                                          Duration(seconds: 4),
                                          dotBgColor:
                                          Colors.purple.withOpacity(0.0),
                                          borderRadius: false,
                                        )),
                                    Text('Tuesday, 22nd February 2021.',
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
                                      'Vice-President Yemi Osinbajo attened the virtual Fedral Executive Council Meeting presided by President Muhammadu Buhari. ',
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
          )),
    );
  }
}
