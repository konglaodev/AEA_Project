import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audioplayer/audioplayer.dart';

class Playaudio extends StatefulWidget {
  Playaudio({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PlayaudioState createState() => _PlayaudioState();
}

enum PlayerState { stopped, playing, paused }

class _PlayaudioState extends State<Playaudio> {
  String mp3Uri = '';
  String mp32 = '';
  void _playSound() {
    AudioPlayer player = AudioPlayer();
    player.play(mp3Uri);
    //
  }

  void _playSound2() {
    AudioPlayer player = AudioPlayer();
    player.play(mp32);
  }

  void _playStop() {
    AudioPlayer player = AudioPlayer();
    player.stop();
    //
  }

  void _playpuase() {
    AudioPlayer player = AudioPlayer();
    player.pause();
    //
  }

  void _loadSound() async {
    final ByteData data = await rootBundle.load('sound/1.mp3');
    Directory tempDir = await getTemporaryDirectory();
    File tempFile = File('${tempDir.path}/1.mp3');
    await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
    mp3Uri = tempFile.uri.toString();
  }

  void _sound1() async {
    final ByteData data = await rootBundle.load('sound/2.mp3');
    Directory tempDir = await getTemporaryDirectory();
    File tempFile = File('${tempDir.path}/2.mp3');
    await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
    mp32 = tempFile.uri.toString();
  }

  @override
  void initState() {
    super.initState();
    _loadSound();
    _sound1();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg2.jpg'), fit: BoxFit.fitHeight)),
      // child: SafeArea(
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         child: Row(
      //           children: <Widget>[
      //             FlatButton(
      //                 child: Image.asset(
      //                   'sound/demobile.png',
      //                   width: 100,
      //                   height: 200,
      //                 ),
      //                 onPressed: () => _playSound()),
      //             FlatButton(
      //                 child: Image.asset(
      //                   'sound/demobile.png',
      //                   width: 100,
      //                   height: 200,
      //                 ),
      //                 onPressed: () => _playpuase()),
      //             IconButton(
      //               icon: Icon(Icons.play_arrow),
      //               iconSize: 50.0,
      //               onPressed: () {
      //                 _playStop();
      //               },
      //             )
      //           ],
      //         ),
      //       ),
      //       Row(
      //         children: <Widget>[
      //           IconButton(
      //             icon: Icon(Icons.play_arrow),
      //             iconSize: 50.0,
      //             onPressed: () {
      //               _playStop();
      //             },
      //           )
      //         ],
      //       )
      //     ],
      //   ),
      // ),

      // child: Expanded(
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: <Widget>[
      //         InkWell(
      //           enableFeedback: false,
      //           child: Container(
      //             color: Colors.blue,
      //             child: Text(
      //               'Play',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //           onTap: _playSound,
      //         ),
      //         InkWell(
      //           enableFeedback: false,
      //           child: Container(
      //             color: Colors.blue,
      //             child: Text(
      //               'Play',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //           onTap: _playSound2,
      //         ),
      //         InkWell(
      //           enableFeedback: false,
      //           child: Container(
      //             color: Colors.blue,
      //             child: Text(
      //               'Stop',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //           onTap: _playStop,
      //         ),
      //         InkWell(
      //           enableFeedback: false,
      //           child: Container(
      //             color: Colors.blue,
      //             padding: EdgeInsets.all(20.0),
      //             child: Text(
      //               'puase',
      //               style: TextStyle(color: Colors.white),
      //             ),
      //           ),
      //           onTap: _playpuase,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
