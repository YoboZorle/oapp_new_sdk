import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';
import 'package:oapp/values/colors.dart';
import 'package:readmore/readmore.dart';

class FeedsCommunity extends StatefulWidget {
  @override
  _FeedsCommunityState createState() => new _FeedsCommunityState();
}

class _FeedsCommunityState extends State<FeedsCommunity> {
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
                  postA(),
                  postOne(),
                  post1(),
                  postB(),
                  postC(),
                  postThree(),
                  postFour(),
                ]),
          ),
        ),
      ),
    );
  }

  postA() => Column(
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
                    'https://pbs.twimg.com/media/E1NVy5AXEAUA16y?format=jpg&name=medium',
                  )),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          SizedBox(height: 10),
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
                        'https://pbs.twimg.com/profile_images/1346859764492476416/NM896bX6_400x400.jpg'),
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
                            text: "sulai_odus",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          // WidgetSpan(
                          //   child: Container(
                          //     margin: EdgeInsets.only(left: 4, bottom: 1),
                          //     child: Icon(Icons.check_circle,
                          //         size: 16, color: AppColors.primaryText),
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Lagos, Nigeria',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Container(
                            height: 10,
                            width: 1,
                            color: Colors.grey,
                            margin: EdgeInsets.symmetric(horizontal: 7)),
                        Text(
                          '33 mins ago ',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
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
            padding: new EdgeInsets.only(left: 15.0, right: 15, top: 5.0),
            child: ReadMoreText(
              'This is Art ! Perfecto Ok hand\n\n'
              'My brilliant @tolanialli\n'
              '#TheHat made it.',
              style: TextStyle(
                  wordSpacing: 1.3,
                  color: Colors.white,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.8,
                  height: 1.33),
              trimLines: 3,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
            ),
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 35, left: 15, right: 15, top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 55,
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.repeat, size: 20, color: Colors.grey),
                        SizedBox(width: 3),
                        Text(
                          '378',
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
                            child: Icon(Icons.reply,
                                size: 19, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(
                          '18',
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
                      Icons.favorite,
                      color: isLiked ? AppColors.primaryText : Colors.grey,
                      size: 18,
                    );
                  },
                  likeCount: 734,
                  countBuilder: (int count, bool isLiked, String text) {
                    var color = isLiked ? AppColors.primaryText : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "love",
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
                          '65 comments',
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
          ),
          // yobo_z(),
          SizedBox(height: 15),
        ],
      );

  postOne() => Column(
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
                    'https://pbs.twimg.com/media/E09HaTAXEAUAAtw?format=jpg&name=medium',
                  )),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),

          SizedBox(height: 10),
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
                        'https://pbs.twimg.com/profile_images/952286150693179392/vU_DYWcx_400x400.jpg'),
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
                            text: "akandeoj",
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
                          'Abuja, Nigeria',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Container(
                            height: 10,
                            width: 1,
                            color: Colors.grey,
                            margin: EdgeInsets.symmetric(horizontal: 7)),
                        Text(
                          '46 mins ago ',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
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
            padding: new EdgeInsets.only(left: 15.0, right: 15, top: 5.0),
            child: ReadMoreText(
              'VP Osinbajo attends Sunday worship at the Villa Chapel where Chaplain Malomo, ahead of sermon titled \'Faith in God\'s way of escape,\' pays tribute to our late beloved Pastor Dare recalling his amiable personality. \nWith VP at today\'s service were SGF, & several Presidential aides.',
              style: TextStyle(
                  wordSpacing: 1.3,
                  color: Colors.white,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.8,
                  height: 1.33),
              trimLines: 3,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
            ),
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 35, left: 15, right: 15, top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 55,
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.repeat, size: 20, color: Colors.grey),
                        SizedBox(width: 3),
                        Text(
                          '203',
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
                            child: Icon(Icons.reply,
                                size: 19, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(
                          '26',
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
                      Icons.favorite,
                      color: isLiked ? AppColors.primaryText : Colors.grey,
                      size: 18,
                    );
                  },
                  likeCount: 896,
                  countBuilder: (int count, bool isLiked, String text) {
                    var color = isLiked ? AppColors.primaryText : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "love",
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
          ),
          // yobo_z(),
          SizedBox(height: 15),
        ],
      );

  // Quote
  post1() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: new EdgeInsets.only(left: 15.0, right: 15, top: 5.0),
            child: ReadMoreText(
              'Osinbajo is a great with empathy, he has the ability to understand and share the feelings of another.\nAm sure today\'s meeting will also help bring solutions to the N-Power challenge on ground.',
              style: TextStyle(
                  wordSpacing: 1.3,
                  color: AppColors.primaryText,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w600,
                  fontSize: 15.5,
                  height: 1.33),
              trimLines: 5,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
            ),
          ),

          SizedBox(height: 10),
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
                        'https://pbs.twimg.com/profile_images/1340088136878223360/zS27TL7e_400x400.jpg'),
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
                            text: "onyedikachi_kalu",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
//                      WidgetSpan(
//                        child: Container(
//                          margin: EdgeInsets.only(left: 4, bottom: 1),
//                          child: Icon(Icons.check_circle,
//                              size: 16, color: AppColors.primaryText),
//                        ),
//                      ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Lagos, Nigeria',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Container(
                            height: 10,
                            width: 1,
                            color: Colors.grey,
                            margin: EdgeInsets.symmetric(horizontal: 7)),
                        Text(
                          '1 hour ago ',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
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
            height: 20,
            margin: EdgeInsets.only(bottom: 35, left: 15, right: 15, top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 55,
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.repeat, size: 20, color: Colors.grey),
                        SizedBox(width: 3),
                        Text(
                          '1.5k',
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
                            child: Icon(Icons.reply,
                                size: 19, color: Colors.grey)),
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
                      Icons.favorite,
                      color: isLiked ? AppColors.primaryText : Colors.grey,
                      size: 18,
                    );
                  },
                  likeCount: 392,
                  countBuilder: (int count, bool isLiked, String text) {
                    var color = isLiked ? AppColors.primaryText : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "love",
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
                          '686 comments',
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
          ),
          // yobo_z(),
          SizedBox(height: 15),
        ],
      );

  postB() => Column(
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
                    'https://pbs.twimg.com/media/EJa_nXXXsAAYA2k?format=jpg&name=medium',
                  )),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          SizedBox(height: 10),
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
                        'https://pbs.twimg.com/profile_images/530434347325603840/zYPOg9XK_400x400.jpeg'),
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
                            text: "mobrimah",
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
                          'Abuja, Nigeria',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Container(
                            height: 10,
                            width: 1,
                            color: Colors.grey,
                            margin: EdgeInsets.symmetric(horizontal: 7)),
                        Text(
                          '2 hours ago ',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
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
            padding: new EdgeInsets.only(left: 15.0, right: 15, top: 5.0),
            child: ReadMoreText(
              'The future of Tech in Nigeria is definitely bright with d deliberate steps this Administration is taking. Tech heavyweights r pouring in with intent to invest,most recent of which was Jack Ma of Alibaba. Also gives hope to a reduction in unemployment. Get digitally trained TODAY!',
              style: TextStyle(
                  wordSpacing: 1.3,
                  color: Colors.white,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.8,
                  height: 1.33),
              trimLines: 3,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
            ),
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 35, left: 15, right: 15, top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 55,
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.repeat, size: 20, color: Colors.grey),
                        SizedBox(width: 3),
                        Text(
                          '48',
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
                            child: Icon(Icons.reply,
                                size: 19, color: Colors.grey)),
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
                      Icons.favorite,
                      color: isLiked ? AppColors.primaryText : Colors.grey,
                      size: 18,
                    );
                  },
                  likeCount: 112,
                  countBuilder: (int count, bool isLiked, String text) {
                    var color = isLiked ? AppColors.primaryText : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "love",
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
                          '173 comments',
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
          ),
          // yobo_z(),
          SizedBox(height: 15),
        ],
      );



  postC() => Column(
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
                    'https://pbs.twimg.com/media/EgrTzByXcAAZ6w-?format=jpg&name=medium',
                  )),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          SizedBox(height: 10),
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
                        'https://pbs.twimg.com/profile_images/529179557459685376/xIaOuyQh_400x400.jpeg'),
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
                            text: "bisuclef",
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
                          'Lagos, Nigeria',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Container(
                            height: 10,
                            width: 1,
                            color: Colors.grey,
                            margin: EdgeInsets.symmetric(horizontal: 7)),
                        Text(
                          '5th Aug 2020',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
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
            padding: new EdgeInsets.only(left: 15.0, right: 15, top: 5.0),
            child: ReadMoreText(
              '2023 yesterday, 2023 today and 2023 tomorrow but Asiwaju Bola Tinubu and Vice President Yemi Osinbajo remain tight.\n'
              'That should tell you a thing or two, politics has got NOTHING on friendship.',
              style: TextStyle(
                  wordSpacing: 1.3,
                  color: Colors.white,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.8,
                  height: 1.33),
              trimLines: 3,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
            ),
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 35, left: 15, right: 15, top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 55,
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.repeat, size: 20, color: Colors.grey),
                        SizedBox(width: 3),
                        Text(
                          '35',
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
                            child: Icon(Icons.reply,
                                size: 19, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(
                          '12',
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
                      Icons.favorite,
                      color: isLiked ? AppColors.primaryText : Colors.grey,
                      size: 18,
                    );
                  },
                  likeCount: 465,
                  countBuilder: (int count, bool isLiked, String text) {
                    var color = isLiked ? AppColors.primaryText : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "love",
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
                          '9 comments',
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
          ),
          // yobo_z(),
          SizedBox(height: 15),
        ],
      );

  postThree() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: new EdgeInsets.only(left: 15.0, right: 15, top: 5.0),
            child: ReadMoreText(
              '"Promote hardwork.\nTalk about it repeatedly. Stop giving the impression that what you do is easy or how you amassed your wealth was easy."',
              style: TextStyle(
                  wordSpacing: 1.3,
                  color: AppColors.primaryText,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w600,
                  fontSize: 15.5,
                  height: 1.33),
              trimLines: 5,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
            ),
          ),
          SizedBox(height: 10),
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
                        'https://pbs.twimg.com/profile_images/1188379257799622656/7Go8UDfA_400x400.jpg'),
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
                            text: "Ilsa_essien",
                            style: TextStyle(
                              fontSize: 14,
                              color: AppColors.primaryText,
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
//                      WidgetSpan(
//                        child: Container(
//                          margin: EdgeInsets.only(left: 4, bottom: 1),
//                          child: Icon(Icons.check_circle,
//                              size: 16, color: AppColors.primaryText),
//                        ),
//                      ),
                        ],
                      ),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: <Widget>[
                        Text(
                          'Abuja, Nigeria.',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Container(
                            height: 10,
                            width: 1,
                            color: Colors.grey,
                            margin: EdgeInsets.symmetric(horizontal: 7)),
                        Text(
                          '5th Aug 2020',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
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
            height: 20,
            margin: EdgeInsets.only(bottom: 35, left: 15, right: 15, top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 55,
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.repeat, size: 20, color: Colors.grey),
                        SizedBox(width: 3),
                        Text(
                          '17',
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
                            child: Icon(Icons.reply,
                                size: 19, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(
                          '110',
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
                      Icons.favorite,
                      color: isLiked ? AppColors.primaryText : Colors.grey,
                      size: 18,
                    );
                  },
                  likeCount: 794,
                  countBuilder: (int count, bool isLiked, String text) {
                    var color = isLiked ? AppColors.primaryText : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "love",
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
                          '218 comments',
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
          ),
          // yobo_z(),
          SizedBox(height: 15),
        ],
      );

  postFour() => Column(
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
                    'https://pbs.twimg.com/media/EeZvdCcXYAAJgrw?format=jpg&name=medium',
                  )),
              borderRadius: BorderRadius.all(Radius.circular(15.0)),
            ),
          ),
          SizedBox(height: 10),
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
                        'https://pbs.twimg.com/profile_images/1077163046739562496/xgChktaF_400x400.jpg'),
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
                            text: "TPLeagueng",
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
                          'Lagos, Nigeria.',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
                        Container(
                            height: 10,
                            width: 1,
                            color: Colors.grey,
                            margin: EdgeInsets.symmetric(horizontal: 7)),
                        Text(
                          '4th Aug 2020',
                          style: TextStyle(
                              fontFamily: 'Ubuntu',
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                              fontSize: 12),
                        ),
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
            padding: new EdgeInsets.only(left: 15.0, right: 15, top: 5.0),
            child: ReadMoreText(
              '"And yet, nation-building is hard work and bringing together the multiplicity of ethnicities under one banner is an onerous but necessary task" Professor Yemi Osinbajo\n\n'
              '@ileowokikiowo\n@mobrimah\n@ProfOsinbajo\n@WahidSaka\n@akandeoj\n@ifeadebayo\n@MrRefor',
              style: TextStyle(
                  wordSpacing: 1.3,
                  color: Colors.white,
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.w400,
                  fontSize: 13.8,
                  height: 1.33),
              trimLines: 3,
              colorClickableText: AppColors.primaryText,
              trimMode: TrimMode.Line,
              trimCollapsedText: '...read more',
              trimExpandedText: ' show less',
            ),
          ),
          Container(
            height: 20,
            margin: EdgeInsets.only(bottom: 35, left: 15, right: 15, top: 15),
            child: Row(
              children: <Widget>[
                Container(
                  width: 55,
                  child: InkWell(
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.repeat, size: 20, color: Colors.grey),
                        SizedBox(width: 3),
                        Text(
                          '284',
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
                            child: Icon(Icons.reply,
                                size: 19, color: Colors.grey)),
                        SizedBox(width: 3),
                        Text(
                          '146',
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
                      Icons.favorite,
                      color: isLiked ? AppColors.primaryText : Colors.grey,
                      size: 18,
                    );
                  },
                  likeCount: 606,
                  countBuilder: (int count, bool isLiked, String text) {
                    var color = isLiked ? AppColors.primaryText : Colors.grey;
                    Widget result;
                    if (count == 0) {
                      result = Text(
                        "love",
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
                          '304 comments',
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
          ),
          Container(height: 150),
        ],
      );
}
