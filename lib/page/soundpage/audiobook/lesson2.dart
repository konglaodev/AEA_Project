import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:audioplayer/audioplayer.dart';

class Lession2 extends StatefulWidget {
  Lession2({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _Lession2State createState() => _Lession2State();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _Lession2State extends State<Lession2> {
  String mp3Uri = '';

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
    final ByteData data = await rootBundle.load('sound/lesson2.mp3');
    Directory tempDir = await getTemporaryDirectory();
    File tempFile = File('${tempDir.path}/lesson2.mp3');
    await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
    mp3Uri = tempFile.uri.toString();
  }

  @override
  void initState() {
    super.initState();
    _loadSound();
  }

  @override
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
          title: Text('ບົດທີ2 ໂຮງຮຽນຂອງຂ້ອຍ'),
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
                          width: 700.0,
                          child: Image.asset(
                            'images/2.1.jpg',
                          ),
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
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.play_arrow),
                ),
              ),
              InkWell(
                onTap: () {
                  _playpuase();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.pause),
                ),
              ),
              InkWell(
                onTap: () {
                  _playStop();
                },
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Icon(Icons.stop),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
