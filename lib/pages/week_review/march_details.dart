import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:oapp/values/values.dart';
import 'package:readmore/readmore.dart';

class MarchDetails extends StatelessWidget {
  MarchDetails({Key key}) : super(key: key);

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
                                Text('March Review 2021',
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
                              margin: EdgeInsets.only(
                                  left: 20, right: 20, top: 5, bottom: 40),
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
                                          color: Colors.yellow,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          child: Carousel(
                                            images: [
                                              NetworkImage(
                                                  'https://www.yemiosinbajo.ng/wp-content/uploads/2021/03/19th-Session-of-the-National-Council-on-Development-Planning-NCDP-on-26032021-1.jpeg'),

                                              NetworkImage(
                                                  'https://pbs.twimg.com/media/EGqeUKTWoAAQCMi.jpg'),
                                            ],
                                            dotSize: 3.0,
                                            dotSpacing: 13.0,
                                            dotColor: Colors.transparent,
                                            indicatorBgPadding: 5.0,
                                            // animationDuration: Duration(seconds: 3),
                                            autoplayDuration:
                                                Duration(seconds: 5),
                                            dotBgColor:
                                                Colors.purple.withOpacity(0.0),
                                            borderRadius: false,
                                          )),
                                      Text('Thursday, 26th March 2021',
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
                                        'Vice-President  Yemi Osinbajo declared open the 19th session of the National Council on Development Planning (NCDP) themed National Development Planning in Nigeria:\nIssues and Challenges.\n\n'
                                        'It is generally agreed that the primary purpose of planning in our economy is to accelerate growth and development outcomes that will improve the lives of our people.',
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

                                  new Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: 190.0,
                                          margin: EdgeInsets.only(bottom: 15),
                                          color: Colors.yellow,
                                          width:
                                          MediaQuery.of(context).size.width,
                                          child: Carousel(
                                            images: [
                                              NetworkImage(
                                                  'https://persecondnews.com/wp-content/uploads/2021/04/Screenshot_20210414140943.jpg'),

                                              NetworkImage(
                                                  'https://www.withinnigeria.com/wp-content/uploads/2020/05/13/FEC-3.jpg'),
                                            ],
                                            dotSize: 3.0,
                                            dotSpacing: 13.0,
                                            dotColor: Colors.transparent,
                                            indicatorBgPadding: 5.0,
                                            // animationDuration: Duration(seconds: 3),
                                            autoplayDuration:
                                            Duration(seconds: 5),
                                            dotBgColor:
                                            Colors.purple.withOpacity(0.0),
                                            borderRadius: false,
                                          )),
                                      Text('Wednesday, 25th March 2021',
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
                                        'Vice-President  Yemi Osinbajo was in attendance at the virtual Federal Executive Council meeting presided over by the President Muhammadu Buhari.\n\n'
                                            'Vice-President Yemi Osinbajo also presided over a virtual Economic Sustainability meeting',
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

                                  new Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: 190.0,
                                          margin: EdgeInsets.only(bottom: 15),
                                          color: Colors.yellow,
                                          width:
                                          MediaQuery.of(context).size.width,
                                          child: Carousel(
                                            images: [
                                              NetworkImage(
                                                  'https://www.yemiosinbajo.ng/wp-content/uploads/2021/03/Chatham-House-Africa-Programme-on-23032021.jpeg'),
                                            ],
                                            dotSize: 3.0,
                                            dotSpacing: 13.0,
                                            dotColor: Colors.transparent,
                                            indicatorBgPadding: 5.0,
                                            // animationDuration: Duration(seconds: 3),
                                            autoplayDuration:
                                            Duration(seconds: 5),
                                            dotBgColor:
                                            Colors.purple.withOpacity(0.0),
                                            borderRadius: false,
                                          )),
                                      Text('Tuesday, 23rd March 2021',
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
                                        'Vice-President  Yemi Osinbajo virtually declared open the 2021 Sessions of National Labour Advisory Council.\n\n'
                                        'I also strongly believe that the composition of the council presents a unique opportunity to build trust and to find a common cause in labour and ancillary matters for the good of the Nation.\n'
                                        '\nVice Pesident Yemi Osinbajo also attended the Chatham House Event themed: Priorities for Nigeria\'s Post-COVID Recovery Africa Programmes.'
                                        '',
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

                                  new Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                          height: 190.0,
                                          margin: EdgeInsets.only(bottom: 15),
                                          color: Colors.yellow,
                                          width:
                                          MediaQuery.of(context).size.width,
                                          child: Carousel(
                                            images: [
                                              NetworkImage(
                                                  'https://www.channelstv.com/wp-content/uploads/2020/08/Yemi-Osinbajo.jpg'),
                                              NetworkImage(
                                                  'https://pbs.twimg.com/media/EsHegdBXEAEy3i5.jpg'),
                                            ],
                                            dotSize: 3.0,
                                            dotSpacing: 13.0,
                                            dotColor: Colors.transparent,
                                            indicatorBgPadding: 5.0,
                                            // animationDuration: Duration(seconds: 3),
                                            autoplayDuration:
                                            Duration(seconds: 5),
                                            dotBgColor:
                                            Colors.purple.withOpacity(0.0),
                                            borderRadius: false,
                                          )),
                                      Text('Monday, 22nd March 2021',
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
                                        'Vice-President  Yemi Osinbajo held a virtual meeting with beneficiaries of the Transport and Education payroll categories of the MSME Survival Fund; a component of the Economic Sustainability Plan.\n'

                                            'It was encouraging and enlightening to hear their very positive feedback and listen to how we can better serve them.',
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
}
