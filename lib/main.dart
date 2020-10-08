import 'package:primaryschool/page/panel/firstpage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/SubjectGame.dart';
import 'component/Playaudio.dart';
import 'package:primaryschool/page/soundpage/audiobook/lession1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.landscapeRight,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/subjectGame': (context) => SubjectGame(),
        '/Audiobook': (context) => Playaudio(),
        '/lession1': (context) => Lession1(),
      },
    );
  }
}
