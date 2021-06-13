import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oapp/pages/o_meetup/o_meetup_live.dart';
import 'package:oapp/values/colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:readmore/readmore.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ThumbsUpNew extends StatefulWidget {
  @override
  _ThumbsUpNewState createState() => _ThumbsUpNewState();
}

class _ThumbsUpNewState extends State<ThumbsUpNew> {
  YoutubePlayerController _controller;
  TextEditingController _idController;
  TextEditingController _seekToController;

  PlayerState _playerState;
  YoutubeMetaData _videoMetaData;

  double _volume = 100;
  bool _muted = false;
  bool _isPlayerReady = false;

  final List<String> _ids = [
    'TxE4X59T4QU',
    // 'gQDByCdjUXw',
    // 'iLnmTe5Q2Qw',
    // '_WoCV4c6XOE',
    // 'KmzdUe0RSJo',
    // '6jZDSSZZxjQ',
    // 'p2lYr3vM_1w',
    // '7QUtEmBT_-w',
    // '34_PXCzGw1M',
  ];

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: _ids.first,
      flags: const YoutubePlayerFlags(
        mute: false,
        autoPlay: true,
        disableDragSeek: false,
        loop: false,
        isLive: false,
        forceHD: false,
        enableCaption: true,
      ),
    )..addListener(listener);
    _idController = TextEditingController();
    _seekToController = TextEditingController();
    _videoMetaData = const YoutubeMetaData();
    _playerState = PlayerState.unknown;
  }

  void listener() {
    if (_isPlayerReady && mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  void dispose() {
    _controller.dispose();
    _idController.dispose();
    _seekToController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          YoutubePlayerBuilder(
            onExitFullScreen: () {
              // The player forces portraitUp after exiting fullscreen. This overrides the behaviour.
              SystemChrome.setPreferredOrientations(DeviceOrientation.values);
            },
            player: YoutubePlayer(
              controller: _controller,
              showVideoProgressIndicator: true,
              progressIndicatorColor: AppColors.primaryText,
              topActions: <Widget>[
                const SizedBox(width: 8.0),
                Expanded(
                  child: Text(
                    _controller.metadata.title,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 25.0,
                  ),
                  onPressed: () {
                    print('Settings Tapped!');
                  },
                ),
              ],
              onReady: () {
                _isPlayerReady = true;
              },
              onEnded: (data) {
                _controller
                    .load(_ids[(_ids.indexOf(data.videoId) + 1) % _ids.length]);
                // _showSnackBar('Next Video Started!');
              },
            ),
            builder: (context, player) => Scaffold(
              backgroundColor: Colors.transparent,
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(70.0),
                child: AppBar(
                  backgroundColor: Colors.transparent,
                  leading: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  title: const Text(
                    'ThumbsUp Thursday',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Ubuntu',
                        fontSize: 20),
                  ),
                  // actions: [
                  //   IconButton(
                  //     icon: const Icon(Icons.video_library),
                  //     onPressed: () => Navigator.push(
                  //       context,
                  //       CupertinoPageRoute(
                  //         builder: (context) => VideoList(),
                  //       ),
                  //     ),
                  //   ),
                  // ],
                ),
              ),
              body: ListView(
                children: [
                  player,
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: '',
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Ubuntu',
                                fontSize: 13.5),
                            children: [
                              TextSpan(
                                text: '#ThumbsUpThursday @ikorodu_bois 👍',
                                style: TextStyle(
                                    color: AppColors.primaryText,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Ubuntu',
                                    height: 2.3,
                                    fontSize: 14),
                              ),
                              // WidgetSpan(
                              //   child: SvgPicture.asset('assets/svg/smile.svg',
                              //       height: 17, semanticsLabel: 'bg bottom image'),
                              // ),
                            ],
                          ),
                        ),
                        ReadMoreText(
                          'The exploits of the @Ikorodu_Bois are impressive, especially for two reasons. The first, is the joy of watching them achieve such global acclaim with consistent effort from their humble corner in Ikorodu.  The second however, is the urgency, an urgency that stems from the immediate need to keep up with our efforts to efficiently secure our kids, and ensure the opportunities for them not only to thrive tapping their talents, but to have the basic chance to get educated for starters, without risk nor distraction.'
                          '\nI celebrate them.',
                          trimLines: 2,
                          colorClickableText: AppColors.primaryText,
                          trimMode: TrimMode.Line,
                          trimCollapsedText: '...read more',
                          trimExpandedText: ' show less',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Ubuntu",
                            fontWeight: FontWeight.w400,
                            fontSize: 15,
                            height: 1.3,
                            letterSpacing: -0.28,
                          ),
                        ),
                        // _space,
                        // _text('Title', _videoMetaData.title),
                        // _space,
                        // _text('Channel', _videoMetaData.author),
                        // _space,
                        // _text('Video Id', _videoMetaData.videoId),
                        // _space,
                        // Row(
                        //   children: [
                        //     _text(
                        //       'Playback Quality',
                        //       _controller.value.playbackQuality ?? '',
                        //     ),
                        //     const Spacer(),
                        //     _text(
                        //       'Playback Rate',
                        //       '${_controller.value.playbackRate}x  ',
                        //     ),
                        //   ],
                        // ),
                        // _space,
                        // TextField(
                        //   enabled: _isPlayerReady,
                        //   controller: _idController,
                        //   decoration: InputDecoration(
                        //     border: InputBorder.none,
                        //     hintText: 'Enter youtube \<video id\> or \<link\>',
                        //     fillColor: Colors.blueAccent.withAlpha(20),
                        //     filled: true,
                        //     hintStyle: const TextStyle(
                        //       fontWeight: FontWeight.w300,
                        //       color: Colors.blueAccent,
                        //     ),
                        //     suffixIcon: IconButton(
                        //       icon: const Icon(Icons.clear),
                        //       onPressed: () => _idController.clear(),
                        //     ),
                        //   ),
                        // ),
                        // _space,
                        // Row(
                        //   children: [
                        //     _loadCueButton('LOAD'),
                        //     const SizedBox(width: 10.0),
                        //     _loadCueButton('CUE'),
                        //   ],
                        // ),
                        _space,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.skip_previous,
                                color: Colors.white,
                              ),
                              onPressed: _isPlayerReady
                                  ? () => _controller.load(_ids[(_ids.indexOf(
                                              _controller.metadata.videoId) -
                                          1) %
                                      _ids.length])
                                  : null,
                            ),
                            IconButton(
                              icon: Icon(
                                _controller.value.isPlaying
                                    ? Icons.pause
                                    : Icons.play_arrow,
                                color: Colors.white,
                              ),
                              onPressed: _isPlayerReady
                                  ? () {
                                      _controller.value.isPlaying
                                          ? _controller.pause()
                                          : _controller.play();
                                      setState(() {});
                                    }
                                  : null,
                            ),
                            IconButton(
                              icon: Icon(
                                  _muted ? Icons.volume_off : Icons.volume_up,
                                  color: Colors.white),
                              onPressed: _isPlayerReady
                                  ? () {
                                      _muted
                                          ? _controller.unMute()
                                          : _controller.mute();
                                      setState(() {
                                        _muted = !_muted;
                                      });
                                    }
                                  : null,
                            ),
                            FullScreenButton(
                              controller: _controller,
                              color: AppColors.primaryText,
                            ),
                            IconButton(
                              icon: const Icon(Icons.skip_next,
                                  color: Colors.white),
                              onPressed: _isPlayerReady
                                  ? () => _controller.load(_ids[(_ids.indexOf(
                                              _controller.metadata.videoId) +
                                          1) %
                                      _ids.length])
                                  : null,
                            ),
                          ],
                        ),

                        title(),
                        // _space,
                        // Row(
                        //   children: <Widget>[
                        //     const Text(
                        //       "Volume",
                        //       style: TextStyle(
                        //           fontWeight: FontWeight.w300,
                        //           fontSize: 11,
                        //           color: Colors.white,
                        //           fontFamily: 'Ubuntu'),
                        //     ),
                        //     Expanded(
                        //       child: Slider(
                        //         inactiveColor: Colors.transparent,
                        //         value: _volume,
                        //         min: 0.0,
                        //         max: 100.0,
                        //         divisions: 10,
                        //         label: '${(_volume).round()}',
                        //         onChanged: _isPlayerReady
                        //             ? (value) {
                        //                 setState(() {
                        //                   _volume = value;
                        //                 });
                        //                 _controller.setVolume(_volume.round());
                        //               }
                        //             : null,
                        //       ),
                        //     ),
                        //   ],
                        // ),
                        // _space,
                        // AnimatedContainer(
                        //   duration: const Duration(milliseconds: 800),
                        //   decoration: BoxDecoration(
                        //     borderRadius: BorderRadius.circular(20.0),
                        //     color: _getStateColor(_playerState),
                        //   ),
                        //   padding: const EdgeInsets.all(8.0),
                        //   child: Text(
                        //     _playerState.toString(),
                        //     style: const TextStyle(
                        //       fontWeight: FontWeight.w300,
                        //       color: Colors.white,
                        //     ),
                        //     textAlign: TextAlign.center,
                        //   ),
                        // ),

                        Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 170.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/hen.png')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Thumbs Up 👍🏾 @henryanumudu 👏🏾👏🏾\n\n'
                                          '#ThumbsUpThursday #TUT',
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Ubuntu',
                                              letterSpacing: 0.3,
                                              fontSize: 15),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.calendar_today,
                                                      size: 14,
                                                      color: Colors
                                                          .lightBlueAccent),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Thr 22nd, APR 2021',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .lightBlueAccent,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.people,
                                                      size: 14,
                                                      color: Colors.white),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '19.23k watched',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

//                                      SmoothStarRating(
//                                          allowHalfRating: false,
//                                          starCount: 5,
//                                          size: 40.0,
//                                          color: Colors.green,
//                                          borderColor: Colors.green,
//                                          spacing:0.0
//                                      )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 170.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/faith.png')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Thumbs Up Thursday Faith Odunsi 👍🏾',
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Ubuntu',
                                              letterSpacing: 0.3,
                                              fontSize: 15),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.calendar_today,
                                                      size: 14,
                                                      color: Colors
                                                          .lightBlueAccent),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Thr 15th, APR 2021',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .lightBlueAccent,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.people,
                                                      size: 14,
                                                      color: Colors.white),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '15.26k watched',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

//                                      SmoothStarRating(
//                                          allowHalfRating: false,
//                                          starCount: 5,
//                                          size: 40.0,
//                                          color: Colors.green,
//                                          borderColor: Colors.green,
//                                          spacing:0.0
//                                      )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 170.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/kem.png')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Thumbs Up Thursday 👍🏾 @kemiadetiba',
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Ubuntu',
                                              letterSpacing: 0.3,
                                              fontSize: 15),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.calendar_today,
                                                      size: 14,
                                                      color: Colors
                                                          .lightBlueAccent),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Thr 1st, APR 2021',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .lightBlueAccent,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.people,
                                                      size: 14,
                                                      color: Colors.white),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '8.16k watched',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

//                                      SmoothStarRating(
//                                          allowHalfRating: false,
//                                          starCount: 5,
//                                          size: 40.0,
//                                          color: Colors.green,
//                                          borderColor: Colors.green,
//                                          spacing:0.0
//                                      )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                          ],
                        ),

                        Column(
                          children: <Widget>[
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 170.0,
                                  height: 120.0,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            'assets/images/ngozi.png')),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(8.0)),
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Thumbs Up Thursday 👍🏾 Dr @ngoziokonnjoiweala'
                                          '#TUT #ThumbsUpThursday',
                                          maxLines: 4,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: AppColors.primaryText,
                                              fontWeight: FontWeight.w700,
                                              fontFamily: 'Ubuntu',
                                              letterSpacing: 0.3,
                                              fontSize: 15),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.calendar_today,
                                                      size: 14,
                                                      color: Colors
                                                          .lightBlueAccent),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    'Thr 4th, MAR 2021',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .lightBlueAccent,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 7),
                                              Row(
                                                children: <Widget>[
                                                  Icon(Icons.people,
                                                      size: 14,
                                                      color: Colors.white),
                                                  SizedBox(width: 3),
                                                  Text(
                                                    '34.77k watched',
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontFamily: 'Ubuntu',
                                                        letterSpacing: 0.3,
                                                        fontSize: 13),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),

//                                      SmoothStarRating(
//                                          allowHalfRating: false,
//                                          starCount: 5,
//                                          size: 40.0,
//                                          color: Colors.green,
//                                          borderColor: Colors.green,
//                                          spacing:0.0
//                                      )
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 40),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _text(String title, String value) {
    return RichText(
      text: TextSpan(
        text: '$title : ',
        style: const TextStyle(
          color: Colors.blueAccent,
          fontWeight: FontWeight.bold,
        ),
        children: [
          TextSpan(
            text: value,
            style: const TextStyle(
              color: Colors.blueAccent,
              fontWeight: FontWeight.w300,
            ),
          ),
        ],
      ),
    );
  }

  Color _getStateColor(PlayerState state) {
    switch (state) {
      case PlayerState.unknown:
        return Colors.grey[700];
      case PlayerState.unStarted:
        return Colors.pink;
      case PlayerState.ended:
        return Colors.red;
      case PlayerState.playing:
        return Colors.blueAccent;
      case PlayerState.paused:
        return Colors.orange;
      case PlayerState.buffering:
        return Colors.yellow;
      case PlayerState.cued:
        return Colors.blue[900];
      default:
        return Colors.blue;
    }
  }

  Widget get _space => const SizedBox(height: 10);

  Widget _loadCueButton(String action) {
    return Expanded(
      child: MaterialButton(
        color: Colors.blueAccent,
        onPressed: _isPlayerReady
            ? () {
                if (_idController.text.isNotEmpty) {
                  var id = YoutubePlayer.convertUrlToId(
                        _idController.text,
                      ) ??
                      '';
                  if (action == 'LOAD') _controller.load(id);
                  if (action == 'CUE') _controller.cue(id);
                  FocusScope.of(context).requestFocus(FocusNode());
                } else {
                  // _showSnackBar('Source can\'t be empty!');
                }
              }
            : null,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 14.0),
          child: Text(
            action,
            style: const TextStyle(
              fontSize: 18.0,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }

  title() => Container(
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(top: 35, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Watch Now',
              style: TextStyle(
                  color: AppColors.primaryText,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Ubuntu',
                  fontSize: 26),
            ),
          ],
        ),
      );
}

class VideoList extends StatefulWidget {
  @override
  _VideoListState createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  final List<YoutubePlayerController> _controllers = [
    'gQDByCdjUXw',
    // 'iLnmTe5Q2Qw',
    // '_WoCV4c6XOE',
    // 'KmzdUe0RSJo',
    // '6jZDSSZZxjQ',
    // 'p2lYr3vM_1w',
    // '7QUtEmBT_-w',
    // '34_PXCzGw1M',
  ]
      .map<YoutubePlayerController>(
        (videoId) => YoutubePlayerController(
          initialVideoId: videoId,
          flags: const YoutubePlayerFlags(
            autoPlay: false,
          ),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video List Demo'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return YoutubePlayer(
            key: ObjectKey(_controllers[index]),
            controller: _controllers[index],
            actionsPadding: const EdgeInsets.only(left: 16.0),
            bottomActions: [
              CurrentPosition(),
              const SizedBox(width: 10.0),
              ProgressBar(isExpanded: true),
              const SizedBox(width: 10.0),
              RemainingDuration(),
              FullScreenButton(),
            ],
          );
        },
        itemCount: _controllers.length,
        separatorBuilder: (context, _) => const SizedBox(height: 10.0),
      ),
    );
  }
}
