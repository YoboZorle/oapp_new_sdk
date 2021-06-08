import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:oapp/values/colors.dart';
import 'package:readmore/readmore.dart';

class ToKnow extends StatefulWidget {
  @override
  _ToKnowState createState() => new _ToKnowState();
}

class _ToKnowState extends State<ToKnow> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(top: 10),
          child: Container(
            // color: Colors.red.withOpacity(0.2),
            child: new ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  SizedBox(height: 8),
                  newsA01(),
                  newsA1(),
                  newsA(),
                  newsTwo(),
                  newsThree(),
                ]),
          ),
        ),
      ),
    );
  }

  newsOne() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxHeight: 190.0, // changed to 400
              minHeight: 100.0, // changed to 200
              maxWidth: double.infinity,
              minWidth: double.infinity,
            ),
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(),
            child: Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRUr_fDBPze71epy8TVoNjLD9pBreMOjXnWEQ&usqp=CAU',
              fit: BoxFit.cover,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 15),
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://pbs.twimg.com/profile_images/835558527347355648/5Om8__a3_400x400.jpg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "daily_post_ng",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          WidgetSpan(
                            child: Container(
                              margin: EdgeInsets.only(left: 4, bottom: 1),
                              child: Icon(Icons.check_circle,
                                  size: 16, color: AppColors.primaryText),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Published 25th August, 2020 ',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 33,
                  child: IconButton(
                      icon:
                          Icon(Icons.more_horiz, size: 22, color: Colors.grey),
                      onPressed: null)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Text(
              "Nigerian Newspapers: 10 things you need to know this Tuesday morning.",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w700,
                fontSize: 16,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 8),
            child: ReadMoreText(
              'Good morning! Here is today’s summary from Nigerian Newspapers.\n\n'
              '1. The Senate of the University of Lagos has elected Prof. Folasade Ogunsola as Acting Vice-Chancellor. Ogunsola polled 135 votes to defeat Prof. Ben Oghojafor, who got 31 votes.\n\n'
              '2. The Lagos State Commissioner for Health, Professor Akin Abayomi, has tested positive for the deadly coronavirus disease. The state’s Commissioner for Information and Strategy Gbenga Omotoso, who announced this via his Twitter account on Monday, said the health commissioner is doing well with no symptoms.\n\n'
              '3. The Inspector-General of Police, Mohammed Adamu, has suspended entry requirements for applicants who wished to join the Nigeria Police Force as constables. The IG in a signal dated August 24 directed that no candidate should be disqualified irrespective of their physical appearance, age and qualification.',
              trimLines: 4,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w400,
                fontSize: 14.5,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            // height: 20,
            margin: EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.repeat, size: 20, color: Colors.grey),
                            SizedBox(width: 3),
                            Text(
                              '13',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: EdgeInsets.only(left: 8),
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 2),
                                child: Icon(Icons.remove_red_eye,
                                    size: 18, color: Colors.grey)),
                            SizedBox(width: 3),
                            Text(
                              '6',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    LikeButton(
                      size: 20,
                      circleColor: CircleColor(
                          start: Colors.pinkAccent, end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.orangeAccent,
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.insert_emoticon,
                          color: isLiked ? AppColors.primaryText : Colors.grey,
                          size: 18,
                        );
                      },
                      likeCount: 0,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color =
                            isLiked ? AppColors.primaryText : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "React",
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        return result;
                      },
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Text(
                              '22 comments',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      );

  newsA01() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxHeight: 190.0, // changed to 400
              minHeight: 100.0, // changed to 200
              maxWidth: double.infinity,
              minWidth: double.infinity,
            ),
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://prumetrics.com/wp-content/uploads/2021/05/E1MqqffXEAAXJr9.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 15),
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTCmlwNXqYI_gHCFiYQUeC_RZBzbGu2gSJ7VvdrNb85J3pSBUyE5JnBEa70Kanoxi4dVFA&usqp=CAU'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "the_guardian",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          WidgetSpan(
                            child: Container(
                              margin: EdgeInsets.only(left: 4, bottom: 1),
                              child: Icon(Icons.check_circle,
                                  size: 16, color: AppColors.primaryText),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Published May 12, 2021',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 33,
                  child: IconButton(
                      icon:
                          Icon(Icons.more_horiz, size: 22, color: Colors.grey),
                      onPressed: null)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Text(
              "Osinbajo graces Museveni’s inauguration in Kampala.",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w700,
                fontSize: 16,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 8),
            child: ReadMoreText(
              'Vice President Yemi Osinbajo, alongside presidents of 11 countries on Wednesday in Kampala, attended the inauguration of re-elected Ugandan President, Yoweri Museveni.\n'
              'The event, held at the Independence Grounds in Kampala, will be Museveni’s sixth inauguration as a democratically elected leader.\n\n'
              'Museveni was declared winner of the Jan.14 election after defeating opposition candidates.\n'
              'The event featured parades, inspection of guards, flypast, Ugandan Special Forces display, cultural display, among others.\n\n'
              'Presidents who attended the ceremony were those of the Democratic Republic of Congo, Kenya, Guinea, Conakry, South Sudan, Namibia, Ghana, Somalia, Zimbabwe, Burundi, Tanzania and Ethiopia.\n'
              'Other countries represented in an official capacity were Sudan, Gabon, South Africa, Equatorial Guinea, Angola, Mozambique, Saharawi Republic, Algeria, Russia, United Arab Emirates, Saudi Arabia, Rwanda, China, Egypt, Zambia, Sri Lanka and Malawi.',
              trimLines: 4,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w400,
                fontSize: 14.5,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            // height: 20,
            margin: EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.repeat, size: 20, color: Colors.grey),
                            SizedBox(width: 3),
                            Text(
                              '34.1k',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      width: 70,
                      margin: EdgeInsets.only(left: 8),
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 2),
                                child: Icon(Icons.remove_red_eye,
                                    size: 18, color: Colors.grey)),
                            SizedBox(width: 3),
                            Text(
                              '12.4k',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    LikeButton(
                      size: 20,
                      circleColor: CircleColor(
                          start: Colors.pinkAccent, end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.orangeAccent,
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.insert_emoticon,
                          color: isLiked ? AppColors.primaryText : Colors.grey,
                          size: 18,
                        );
                      },
                      likeCount: 932,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color =
                            isLiked ? AppColors.primaryText : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "React",
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        return result;
                      },
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Text(
                              '32.9k comments',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      );

  newsA1() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxHeight: 190.0, // changed to 400
              minHeight: 100.0, // changed to 200
              maxWidth: double.infinity,
              minWidth: double.infinity,
            ),
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      'https://cdn03.allafrica.com/download/pic/main/main/csiid/00471990:e1e573b2f129ab7aeba4a1027b20e9d5:arc614x376:w614:us1.jpg')),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 15),
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://image.winudf.com/v2/image/Y29tLnJpbmdpZXIucHVsc2UubmdfaWNvbl8wX2JkZTQyOWM3/icon.png?w=170&fakeurl=1'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "pulse_ng",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          WidgetSpan(
                            child: Container(
                              margin: EdgeInsets.only(left: 4, bottom: 1),
                              child: Icon(Icons.check_circle,
                                  size: 16, color: AppColors.primaryText),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Published May 11, 2021',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 33,
                  child: IconButton(
                      icon:
                          Icon(Icons.more_horiz, size: 22, color: Colors.grey),
                      onPressed: null)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Text(
              "Boko Haram: Military Repels Attempted Invasion Of Maiduguri",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w700,
                fontSize: 16,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 8),
            child: ReadMoreText(
              'The military has repelled an attempt by the Boko Haram terrorists to infiltrate Maiduguri, the Borno State capital.\n'
              'The insurgents made their way through Adawari, a community behind Jiddari-Polo – a highly-populated area in the capital city, at about dusk.\n\n'
              'Civilian sources say they arrived in four gun trucks and motorbikes after sand filling trenches dug by security forces, for easy passage.'
              'They met stiff resistance by the military who prevented them from gaining access to the town. ',
              trimLines: 4,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w400,
                fontSize: 14.5,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            // height: 20,
            margin: EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.repeat, size: 20, color: Colors.grey),
                            SizedBox(width: 3),
                            Text(
                              '2.1k',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: EdgeInsets.only(left: 8),
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 2),
                                child: Icon(Icons.remove_red_eye,
                                    size: 18, color: Colors.grey)),
                            SizedBox(width: 3),
                            Text(
                              '8.4k',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    LikeButton(
                      size: 20,
                      circleColor: CircleColor(
                          start: Colors.pinkAccent, end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.orangeAccent,
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.insert_emoticon,
                          color: isLiked ? AppColors.primaryText : Colors.grey,
                          size: 18,
                        );
                      },
                      likeCount: 892,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color =
                            isLiked ? AppColors.primaryText : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "React",
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        return result;
                      },
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Text(
                              '32.9k comments',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      );

  newsA() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxHeight: 190.0, // changed to 400
              minHeight: 100.0, // changed to 200
              maxWidth: double.infinity,
              minWidth: double.infinity,
            ),
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://ichef.bbci.co.uk/news/800/cpsprodpb/13182/production/_118501287_howmuchbepurewater-sachetwater.jpg',
                  )),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 15),
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://news.files.bbci.co.uk/ws/img/logos/og/pidgin.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "bbc_news_pidgin",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          WidgetSpan(
                            child: Container(
                              margin: EdgeInsets.only(left: 4, bottom: 1),
                              child: Icon(Icons.check_circle,
                                  size: 16, color: AppColors.primaryText),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Published 14 May 2021',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 33,
                  child: IconButton(
                      icon:
                          Icon(Icons.more_horiz, size: 22, color: Colors.grey),
                      onPressed: null)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Text(
              "Health is Wealth",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w700,
                fontSize: 16,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 8),
            child: ReadMoreText(
              'Nigerians dey lament sake of di rise in cost of sachet water AKA pure water.\n'
              'Plenty tok full town say di average amount don increase for a sachet or bag of water.\n\n'
              'Di sachet water dey very common in many household across Nigeria.'
              ' Di packaged 50cl water inside small nylon bag dey serve as source of portable drinking water for many homes. '
              'Many Nigerians sample opinion for BBC Pidgin Facebook page on how di price don rise across di west African kontri.\n\n'
              'Leke Ajala tok say one bag na N150 from di depot wen retailers dey sell for N170 & N200.\n'
              'And dis don affect di unit cost for Delta State, southern Nigeria. '
              'Julius Sunset tell us say one bag na N200 and N20 per one in di state capital for Asaba.\n'
              'Edogiawere Kinsley inside Imo State [eastern Nigeria] us say those wey wan buy pure water for east dey pay 250 per bag in Owerri.',
              trimLines: 4,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w400,
                fontSize: 14.5,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            // height: 20,
            margin: EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.repeat, size: 20, color: Colors.grey),
                            SizedBox(width: 3),
                            Text(
                              '2.1k',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: EdgeInsets.only(left: 8),
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 2),
                                child: Icon(Icons.remove_red_eye,
                                    size: 18, color: Colors.grey)),
                            SizedBox(width: 3),
                            Text(
                              '8.4k',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    LikeButton(
                      size: 20,
                      circleColor: CircleColor(
                          start: Colors.pinkAccent, end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.orangeAccent,
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.insert_emoticon,
                          color: isLiked ? AppColors.primaryText : Colors.grey,
                          size: 18,
                        );
                      },
                      likeCount: 892,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color =
                            isLiked ? AppColors.primaryText : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "React",
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        return result;
                      },
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Text(
                              '32.9k comments',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      );

  newsTwo() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxHeight: 190.0, // changed to 400
              minHeight: 100.0, // changed to 200
              maxWidth: double.infinity,
              minWidth: double.infinity,
            ),
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://pbs.twimg.com/media/EwR_UVpWEAIOz54?format=jpg&name=medium',
                  )),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 15),
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://as01.epimg.net/img/amp/as-logo.png'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "diario_online",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          WidgetSpan(
                            child: Container(
                              margin: EdgeInsets.only(left: 4, bottom: 1),
                              child: Icon(Icons.check_circle,
                                  size: 16, color: AppColors.primaryText),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Published 12 March, 2021 ',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 33,
                  child: IconButton(
                      icon:
                          Icon(Icons.more_horiz, size: 22, color: Colors.grey),
                      onPressed: null)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Text(
              'KDSG Security Update: Friday 12th March 2021',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w700,
                fontSize: 16,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 8),
            child: ReadMoreText(
              '180 rescued by troops of the Nigeria Army early today Friday, March 12. Several male+female students still missing following bandit attack at Federal College of Forestry Mechanization, Afaka-Igabi LG. Search & rescue efforts continue',
              trimLines: 4,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
              style: TextStyle(
                color: Colors.white,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w400,
                fontSize: 14.5,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            // height: 20,
            margin: EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.repeat, size: 20, color: Colors.grey),
                            SizedBox(width: 3),
                            Text(
                              '10',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: EdgeInsets.only(left: 8),
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 2),
                                child: Icon(Icons.remove_red_eye,
                                    size: 18, color: Colors.grey)),
                            SizedBox(width: 3),
                            Text(
                              '500',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    LikeButton(
                      size: 20,
                      circleColor: CircleColor(
                          start: Colors.pinkAccent, end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.orangeAccent,
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.insert_emoticon,
                          color: isLiked ? AppColors.primaryText : Colors.grey,
                          size: 18,
                        );
                      },
                      likeCount: 100,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color =
                            isLiked ? AppColors.primaryText : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "React",
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        return result;
                      },
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Text(
                              '308 comments',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      );

  newsThree() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            constraints: BoxConstraints(
              maxHeight: 190.0, // changed to 400
              minHeight: 100.0, // changed to 200
              maxWidth: double.infinity,
              minWidth: double.infinity,
            ),
            margin: EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    'https://pbs.twimg.com/media/EwO0JLvWYAEOJzx?format=jpg&name=medium',
                  )),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 15),
              Container(
                height: 33,
                width: 33,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://pbs.twimg.com/profile_images/1083976198609350656/CJzypjqN.jpg'),
                    fit: BoxFit.cover,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    RichText(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "the_guardian_ng",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          WidgetSpan(
                            child: Container(
                              margin: EdgeInsets.only(left: 4, bottom: 1),
                              child: Icon(Icons.check_circle,
                                  size: 16, color: AppColors.primaryText),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Published 11 March, 2021 ',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                  height: 33,
                  child: IconButton(
                      icon:
                          Icon(Icons.more_horiz, size: 22, color: Colors.grey),
                      onPressed: null)),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Text(
              'Afterward, Fellows appreciated Mr. Abdullahi and his team for the well-rounded discussion and wished them well in their endeavors.',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: AppColors.primaryText,
                fontFamily: "Ubuntu",
                fontWeight: FontWeight.w700,
                fontSize: 16,
                letterSpacing: -0.28,
              ),
            ),
          ),
          Container(
            // height: 20,
            margin: EdgeInsets.only(bottom: 30, left: 15, right: 15, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      width: 55,
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.repeat, size: 20, color: Colors.grey),
                            SizedBox(width: 3),
                            Text(
                              '33',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    Container(
                      width: 55,
                      margin: EdgeInsets.only(left: 8),
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Container(
                                margin: EdgeInsets.only(bottom: 2),
                                child: Icon(Icons.remove_red_eye,
                                    size: 18, color: Colors.grey)),
                            SizedBox(width: 3),
                            Text(
                              '206',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                    LikeButton(
                      size: 20,
                      circleColor: CircleColor(
                          start: Colors.pinkAccent, end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Colors.red,
                        dotSecondaryColor: Colors.orangeAccent,
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          Icons.insert_emoticon,
                          color: isLiked ? AppColors.primaryText : Colors.grey,
                          size: 18,
                        );
                      },
                      likeCount: 902,
                      countBuilder: (int count, bool isLiked, String text) {
                        var color =
                            isLiked ? AppColors.primaryText : Colors.grey;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "902",
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(
                                color: color,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Ubuntu',
                                fontSize: 14),
                          );
                        return result;
                      },
                    ),
                    Expanded(child: SizedBox()),
                    Container(
                      child: InkWell(
                        child: Row(
                          children: <Widget>[
                            Text(
                              '299 comments',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Ubuntu',
                                  fontSize: 14),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(height: 130),
        ],
      );
}
