import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:oapp/values/values.dart';
import 'package:readmore/readmore.dart';

class AprilDetails extends StatelessWidget {
  AprilDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
                            margin:
                                EdgeInsets.only(left: 5, right: 20, bottom: 5),
                            child: Row(children: <Widget>[
                              IconButton(
                                icon: Icon(Icons.arrow_back_ios,
                                    size: 22, color: AppColors.primaryText),
                                onPressed: () => Navigator.of(context).pop(),
                              ),
                              Expanded(child: SizedBox()),
                              Text('April Review 2021',
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
                                // LATEST

                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                'https://i1.wp.com/dailynigerian.com/wp-content/uploads/2021/04/FEC-Meeting-Buhari--1068x712.jpg'),
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
                                    Text('Friday, 30th April 2021',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Ubuntu',
                                            fontSize: 14)),
                                    Container(
                                        height: 3,
                                        width: 80,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        color: AppColors.primaryText),
                                    ReadMoreText(
                                      'Vice-President Yemi Osinbajo attended a National Security meeting presided over by President Muhammadu Buhari.',
                                      style: TextStyle(
                                          height: 1.3,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 14),
                                      trimLines: 3,
                                      colorClickableText: AppColors.primaryText,
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: '...read more',
                                      trimExpandedText: ' show less',
                                    ),
                                    SizedBox(height: 25),
                                  ],
                                ),

                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                'https://www.yemiosinbajo.ng/wp-content/uploads/2021/04/AFDB-Heads-of-State-High-Level-Dialogue-themed-A-Shared-Commitment-to-Transforming-Agriculture-in-Africa-on-29042021-1.jpeg'),
                                            NetworkImage(
                                                'https://i.vimeocdn.com/video/1124769542.webp?mw=1000&mh=563&q=70'),
                                            NetworkImage(
                                                'https://pbs.twimg.com/media/E0HjiIeWYAA4e4g.jpg'),
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
                                    Text('Thursday, 29th April 2021',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Ubuntu',
                                            fontSize: 14)),
                                    Container(
                                        height: 3,
                                        width: 80,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        color: AppColors.primaryText),
                                    ReadMoreText(
                                      'Vice-President Yemi Osinbajo delivered a remark at the AfDB Heads of State High-Level Dialogue themed "A Shared Commitment to Transforming Agriculture in Africa".'
                                      '\n\nTo ensure agricultural transformation in Nigeria, we have developed the following initiatives: \n'
                                      'The Economic Sustainability Plan, The National Livestock Transformation Plan, and The Green Imperative Project among others.',
                                      style: TextStyle(
                                          height: 1.3,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 14),
                                      trimLines: 3,
                                      colorClickableText: AppColors.primaryText,
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: '...read more',
                                      trimExpandedText: ' show less',
                                    ),
                                    SizedBox(height: 25),
                                  ],
                                ),

                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                'https://lh3.googleusercontent.com/proxy/62XweG_n1z1VHr259aLnWyR2yZfBWAw6WAAMtOjd3SFFMuSNKXJRDu_WYyeczs8hOO413zPHAdk_K3wpxsSiMIJj7suWWSbh1rrKZXubfp-w0as'),
                                            NetworkImage(
                                                'https://i1.wp.com/dailynigerian.com/wp-content/uploads/2021/04/FEC-Meeting-Buhari--1068x712.jpg'),
                                            NetworkImage(
                                                'https://i2.wp.com/von.gov.ng/wp-content/uploads/2021/04/FEC-6-2.jpg?fit=1500%2C1000&ssl=1'),
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
                                    Text('Wednesday, 28th April 2021',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Ubuntu',
                                            fontSize: 14)),
                                    Container(
                                        height: 3,
                                        width: 80,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        color: AppColors.primaryText),
                                    ReadMoreText(
                                      'Vice-President Yemi Osinbajo attended the Federal Executive Council Meeting presided over by President Muhammadu Buhari.',
                                      style: TextStyle(
                                          height: 1.3,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 14),
                                      trimLines: 3,
                                      colorClickableText: AppColors.primaryText,
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: '...read more',
                                      trimExpandedText: ' show less',
                                    ),
                                    SizedBox(height: 25),
                                  ],
                                ),

                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                'https://guardian.ng/wp-content/uploads/2021/04/Osinbajo-1-1062x598.jpg'),
                                            NetworkImage(
                                                'https://i2.wp.com/www.naijachoice.com.ng/wp-content/uploads/2021/04/sierra-leone-thankful-to-nigeria-others-at-60th-independence-anniversaryNAIJACHOICEcomng.jpg?fit=1080%2C720&ssl=1'),
                                            NetworkImage(
                                                'https://www.channelstv.com/wp-content/uploads/2021/04/Yemi-Osinbajo.jpg'),
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
                                    Text('Tuesday, 27th April 2021',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Ubuntu',
                                            fontSize: 14)),
                                    Container(
                                        height: 3,
                                        width: 80,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        color: AppColors.primaryText),
                                    ReadMoreText(
                                      'Vice-President Yemi Osinbajo represented President Muhammadu Buhari at the 60th Independence Anniversary of the Republic of Sierra Leone celebrations in Freetown.\n\n'
                                      'Vice-President Yemi Osinbajo also held a meeting with the Southeastern APC leaders and chieftains from Anambra state. ',
                                      style: TextStyle(
                                          height: 1.3,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 14),
                                      trimLines: 3,
                                      colorClickableText: AppColors.primaryText,
                                      trimMode: TrimMode.Line,
                                      trimCollapsedText: '...read more',
                                      trimExpandedText: ' show less',
                                    ),
                                    SizedBox(height: 25),
                                  ],
                                ),

                                new Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                                'https://www.yemiosinbajo.ng/wp-content/uploads/2021/04/Emir-of-Uke-25042021.jpeg'),
                                            NetworkImage(
                                                'https://www.yemiosinbajo.ng/wp-content/uploads/2021/04/Emir-of-Uke-Visit-on-25042021.jpeg'),
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
                                    Text('Monday, 26th April 2021',
                                        style: TextStyle(
                                            color: AppColors.primaryText,
                                            fontWeight: FontWeight.w600,
                                            fontFamily: 'Ubuntu',
                                            fontSize: 14)),
                                    Container(
                                        height: 3,
                                        width: 80,
                                        margin:
                                            EdgeInsets.symmetric(vertical: 10),
                                        color: AppColors.primaryText),
                                    ReadMoreText(
                                      'The Emir of Uke, Alhaji Dr Abdullahi Hassan paid a courtesy visit to Vice-President Yemi Osinbajo.',
                                      style: TextStyle(
                                          height: 1.3,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Ubuntu',
                                          fontSize: 14),
                                      trimLines: 3,
                                      colorClickableText: AppColors.primaryText,
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
