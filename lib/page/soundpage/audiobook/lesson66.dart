import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audioplayer/audioplayer.dart';

class Lesson66 extends StatefulWidget {
  Lesson66({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Lesson66State createState() => _Lesson66State();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _Lesson66State extends State<Lesson66> {
  String mp3Uri = '';
  String mp32 = '';
  void _playSound() {
    AudioPlayer player = AudioPlayer();
    player.play(mp3Uri);
    //
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
    final ByteData data = await rootBundle.load('sound/lesson66.mp3');
    Directory tempDir = await getTemporaryDirectory();
    File tempFile = File('${tempDir.path}/lesson66.mp3');
    await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
    mp3Uri = tempFile.uri.toString();
  }

  @override
  void initState() {
    super.initState();
    _loadSound();
  }

  @override
  Color _iconColor1 = Colors.black;
  Color _iconColor2 = Colors.black;
  Color _iconColor3 = Colors.black;
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context);
        _playStop();
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange.shade700,
          elevation: 0.0,
          title: Text('ພະຍານາກຢາກໄດ້ຕັບກະຕ່າຍ'),
        ),
        body: Container(
          child: SafeArea(
            child: SingleChildScrollView(
              child: InteractiveViewer(
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          child: Image.asset('images/66.3.jpg'),
                          width: 700,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
       bottomNavigationBar: Container(
          color: Colors.orange.shade700,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              InkWell(
                onTap: () {
                  _playSound();
                  setState(() {
                    _iconColor2 = Colors.black;
                    _iconColor3 = Colors.black;
                    _iconColor1 = Colors.white;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.play_arrow,
                    color: _iconColor1,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _playpuase();
                  setState(() {
                    _iconColor2 = Colors.white;
                    _iconColor1 = Colors.black;
                    _iconColor3 = Colors.black;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.pause,
                    color: _iconColor2,
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _playStop();
                  setState(() {
                    _iconColor1 = Colors.black;
                    _iconColor3 = Colors.white;
                    _iconColor2 = Colors.black;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.stop,
                    color: _iconColor3,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
