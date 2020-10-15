import 'package:primaryschool/page/panel/firstpage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/SubjectGame.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson6.dart';
import 'component/Playaudio.dart';
import 'package:primaryschool/page/soundpage/audiobook/lession1.dart';
import 'package:primaryschool/page/panel/subandgame.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson2.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson3.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson4.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson5.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson7.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson8.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson9.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson10.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson11.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson12.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson14.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson17.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson18.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson19.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson20.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson34.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson37.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson38.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson39.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson40.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson41.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson43.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson44.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson45.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson46.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson47.dart';
import 'package:primaryschool/page/soundpage/audiobook/lesson48.dart';
import 'allsubject/bot1.dart';
import 'allsubject/bot2.dart';
import 'allsubject/bot3.dart';
import 'allsubject/bot4.dart';
import 'package:primaryschool/page/panel/menusubject.dart';
import 'package:primaryschool/page/panel/menusubject2.dart';
import 'package:primaryschool/page/panel/menusubject3.dart';
import 'package:primaryschool/page/panel/menusubject4.dart';
import 'package:primaryschool/page/panel/menusubject5.dart';
import 'package:primaryschool/page/panel/menusubject6.dart';
import 'package:primaryschool/page/panel/menusubject7.dart';

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
        '/subandjectGame': (context) => Subandgame(),
        '/Audiobook': (context) => Playaudio(),
        '/lession1': (context) => Lession1(),
        '/lesson2': (context) => Lession2(),
        '/lesson3': (context) => Lession3(),
        '/lesson4': (context) => Lesson4(),
        '/lesson5': (context) => Lesson5(),
        '/lesson6': (context) => Lesson6(),
        '/lesson7': (context) => Lesson7(),
        '/lesson8': (context) => Lesson8(),
        '/lesson9': (context) => Lesson9(),
        '/lesson10': (context) => Lesson10(),
        '/lesson11': (context) => Lesson11(),
        '/lesson12': (context) => Lesson12(),
        '/lesson14': (context) => Lesson14(),
        '/lesson17': (context) => Lesson17(),
        '/lesson18': (context) => Lesson18(),
        '/lesson19': (context) => Lesson19(),
        '/lesson20': (context) => Lesson20(),
        '/lesson34': (context) => Lesson34(),
        '/lesson37': (context) => Lesson37(),
        '/lesson38': (context) => Lesson38(),
        '/lesson39': (context) => Lesson39(),
        '/lesson40': (context) => Lesson40(),
        '/lesson41': (context) => Lesson41(),
        '/lesson43': (context) => Lesson43(),
        '/lesson44': (context) => Lesson44(),
        '/lesson45': (context) => Lesson45(),
        '/lesson46': (context) => Lesson46(),
        '/lesson47': (context) => Lesson47(),
        '/lesson48': (context) => Lesson48(),
        '/menusub': (context) => Menusub(),
        '/menusub2': (context) => Menusub2(),
        '/menusub3': (context) => Menusub3(),
        '/menusub4': (context) => Menusub4(),
        '/menusub5': (context) => Menusub5(),
        '/menusub6': (context) => Menusub6(),
        '/menusub7': (context) => Menusub7(),
        '/bot1': (context) => Bot1(),
        '/bot2': (context) => Bot2(),
        '/bot3': (context) => Bot3(),
        '/bot4': (context) => Bot4(),
      },
    );
  }
}
