// import 'dart:io';

import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:audioplayer/audioplayer.dart';
import 'package:primaryschool/page/soundpage/read.dart';
import 'package:primaryschool/page/soundpage/read2.dart';
import 'package:primaryschool/page/soundpage/read3.dart';
import 'package:primaryschool/page/soundpage/read4.dart';

class Playaudio extends StatefulWidget {
  Playaudio({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PlayaudioState createState() => _PlayaudioState();
}

// enum PlayerState { stopped, playing, paused }

class _PlayaudioState extends State<Playaudio> {
  PageController _pageController = PageController();
  List<Widget> _screen = [
    ReadSound(),
    ReadSound2(),
    ReadSound3(),
    ReadSound4(),
  ];
  int _selectedIndex = 0;
  void _onPageChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

//   String mp3Uri = '';
//   String mp32 = '';
//   void _playSound() {
//     AudioPlayer player = AudioPlayer();
//     player.play(mp3Uri);
//     //
//   }

//   void _playSound2() {
//     AudioPlayer player = AudioPlayer();
//     player.play(mp32);
//   }

//   void _playStop() {
//     AudioPlayer player = AudioPlayer();
//     player.stop();
//     //
//   }

//   void _playpuase() {
//     AudioPlayer player = AudioPlayer();
//     player.pause();
//     //
//   }

//   void _loadSound() async {
//     final ByteData data = await rootBundle.load('sound/lesson1.mp3');
//     Directory tempDir = await getTemporaryDirectory();
//     File tempFile = File('${tempDir.path}/lesson1.mp3');
//     await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
//     mp3Uri = tempFile.uri.toString();
//   }

//   void _sound1() async {
//     final ByteData data = await rootBundle.load('sound/2.mp3');
//     Directory tempDir = await getTemporaryDirectory();
//     File tempFile = File('${tempDir.path}/2.mp3');
//     await tempFile.writeAsBytes(data.buffer.asUint8List(), flush: true);
//     mp32 = tempFile.uri.toString();
//   }

//   @override
//   void initState() {
//     super.initState();
//     _loadSound();
//     _sound1();
//   }

  Widget butttonF() {
    return Container(
        child: FlatButton(
            onPressed: null,
            padding: EdgeInsets.all(0.0),
            child: Image.asset(
              'image/f.png',
              width: 300.0,
              height: 300.0,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DoubleBackToCloseApp(
        child: SafeArea(
          child: Container(
            // decoration: BoxDecoration(
            //   image: DecorationImage(
            //       image: AssetImage('images/bg2.jpg'), fit: BoxFit.fill),
            // ),
            child: PageView(
              controller: _pageController,
              children: _screen,
              onPageChanged: _onPageChanged,
              physics: NeverScrollableScrollPhysics(),
            ),
          ),

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
        ),
        snackBar: const SnackBar(
          content: Text('ກົດອີກຄັ້ງເພື່ອອອກຈາກໜັງສືສຽງ'),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 20,
        unselectedItemColor: Colors.white,
        backgroundColor: Colors.orange.shade200,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text(
              'ບົດເລື່ອງ',
              style: TextStyle(
                fontFamily: 'lao',
                fontSize: 12.0,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text(
              'ບົດກາບກອນ',
              style: TextStyle(
                fontFamily: 'lao',
                fontSize: 12.0,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text(
              'ນິທານ',
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text(
              'ໄວໆນີ້',
              style: TextStyle(
                fontFamily: 'lao',
                fontSize: 12.0,
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black87,
        onTap: _onItemTapped,
      ),
    );
  }
}
