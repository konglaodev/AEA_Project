import 'package:primaryschool/page/panel/firstpage.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/SubjectGame.dart';
import 'package:primaryschool/page/panel/game/game2.dart';
import 'package:primaryschool/page/panel/game/random.dart';
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
import 'allsubject/bot5.dart';
import 'allsubject/bot6.dart';
import 'allsubject/bot7.dart';
import 'allsubject/bot8.dart';
import 'allsubject/bot9.dart';
import 'allsubject/bot10.dart';
import 'allsubject/bot11.dart';
import 'allsubject/bot12.dart';
import 'allsubject/bot13.dart';
import 'allsubject/bot14.dart';
import 'allsubject/bot15.dart';
import 'allsubject/bot16.dart';
import 'allsubject/bot17.dart';
import 'allsubject/bot18.dart';
import 'allsubject/bot19.dart';
import 'allsubject/bot20.dart';
import 'allsubject/bot21.dart';
import 'allsubject/bot22.dart';
import 'allsubject/bot23.dart';
import 'allsubject/bot24.dart';
import 'allsubject/bot25.dart';
import 'allsubject/bot26.dart';
import 'allsubject/bot27.dart';
import 'allsubject/bot28.dart';
import 'allsubject/bot29.dart';
import 'allsubject/bot30.dart';
import 'allsubject/bot31.dart';
import 'allsubject/bot32.dart';
import 'allsubject/bot33.dart';
import 'allsubject/bot34.dart';
import 'allsubject/bot35.dart';
import 'allsubject/bot36.dart';
import 'allsubject/bot37.dart';
import 'allsubject/bot38.dart';
import 'allsubject/bot39.dart';
import 'allsubject/bot40.dart';
import 'allsubject/bot41.dart';
import 'allsubject/bot42.dart';
import 'allsubject/bot43.dart';
import 'allsubject/bot44.dart';
import 'allsubject/bot45.dart';
import 'allsubject/bot46.dart';
import 'allsubject/bot47.dart';
import 'allsubject/bot48.dart';
import 'allsubject/bot49.dart';
import 'allsubject/bot50.dart';
import 'allsubject/bot51.dart';
import 'allsubject/bot52.dart';
import 'allsubject/bot53.dart';
import 'allsubject/bot54.dart';
import 'allsubject/bot55.dart';
import 'allsubject/bot56.dart';
import 'allsubject/bot57.dart';
import 'allsubject/bot58.dart';
import 'allsubject/bot59.dart';
import 'allsubject/bot60.dart';
import 'allsubject/bot61.dart';
import 'allsubject/bot62.dart';
import 'allsubject/bot63.dart';
import 'allsubject/bot64.dart';
import 'allsubject/bot65.dart';
import 'allsubject/bot66.dart';
import 'package:primaryschool/page/panel/menusubject.dart';
import 'package:primaryschool/page/panel/menusubject2.dart';
import 'package:primaryschool/page/panel/menusubject3.dart';
import 'package:primaryschool/page/panel/menusubject4.dart';
import 'package:primaryschool/page/panel/menusubject5.dart';
import 'package:primaryschool/page/panel/menusubject6.dart';
import 'package:primaryschool/page/panel/menusubject7.dart';
import 'package:primaryschool/page/panel/game.dart';
import 'package:primaryschool/page/panel/game/gamelesson1.dart';
import 'package:primaryschool/page/panel/gamebt1.dart';


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
      theme: ThemeData(fontFamily: 'lao'),
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
        '/bot5': (context) => Bot5(),
        '/bot6': (context) => Bot6(),
        '/bot7': (context) => Bot7(),
        '/bot8': (context) => Bot8(),
        '/bot9': (context) => Bot9(),
        '/bot10': (context) => Bot10(),
        '/bot11': (context) => Bot11(),
        '/bot12': (context) => Bot12(),
        '/bot13': (context) => Bot13(),
        '/bot14': (context) => Bot14(),
        '/bot15': (context) => Bot15(),
        '/bot16': (context) => Bot16(),
        '/bot17': (context) => Bot17(),
        '/bot18': (context) => Bot18(),
        '/bot19': (context) => Bot19(),
        '/bot20': (context) => Bot20(),
        '/bot21': (context) => Bot21(),
        '/bot22': (context) => Bot22(),
        '/bot23': (context) => Bot23(),
        '/bot24': (context) => Bot24(),
        '/bot25': (context) => Bot25(),
        '/bot26': (context) => Bot26(),
        '/bot27': (context) => Bot27(),
        '/bot28': (context) => Bot28(),
        '/bot29': (context) => Bot29(),
        '/bot30': (context) => Bot30(),
        '/bot31': (context) => Bot31(),
        '/bot32': (context) => Bot32(),
        '/bot33': (context) => Bot33(),
        '/bot34': (context) => Bot34(),
        '/bot35': (context) => Bot35(),
        '/bot36': (context) => Bot36(),
        '/bot37': (context) => Bot37(),
        '/bot38': (context) => Bot38(),
        '/bot39': (context) => Bot39(),
        '/bot40': (context) => Bot40(),
        '/bot41': (context) => Bot41(),
        '/bot42': (context) => Bot42(),
        '/bot43': (context) => Bot43(),
        '/bot44': (context) => Bot44(),
        '/bot45': (context) => Bot45(),
        '/bot46': (context) => Bot46(),
        '/bot47': (context) => Bot47(),
        '/bot48': (context) => Bot48(),
        '/bot49': (context) => Bot49(),
        '/bot50': (context) => Bot50(),
        '/bot51': (context) => Bot51(),
        '/bot52': (context) => Bot52(),
        '/bot53': (context) => Bot53(),
        '/bot54': (context) => Bot54(),
        '/bot55': (context) => Bot55(),
        '/bot56': (context) => Bot56(),
        '/bot57': (context) => Bot57(),
        '/bot58': (context) => Bot58(),
        '/bot59': (context) => Bot59(),
        '/bot60': (context) => Bot60(),
        '/bot61': (context) => Bot61(),
        '/bot62': (context) => Bot62(),
        '/bot63': (context) => Bot63(),
        '/bot64': (context) => Bot64(),
        '/bot65': (context) => Bot65(),
        '/bot66': (context) => Bot66(),
        //game
         '/game': (context) => Game(), //nar game
        '/gamebt': (context) => Gamebt(), //nar game bod thrng
        '/gamefirstlesson': (context) => Gamelessonone(),
         '/Home': (context) => HomePage(),
         '/randombt': (context) => Randomimg(),
         '/randomtwo': (context) => Gametwo(),
      },
    );
  }
}
