import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  Game({Key key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  Widget gametitle() {
    return Container(
    
            decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Border2.png"), fit: BoxFit.fill)),
              width: 500,
    
         child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Text(
        "ກະລຸນາເລືອກເກມ",
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 30.0,
            color: Colors.white,
            fontWeight: FontWeight.bold),
      ),
        ])
    );
  }

  Widget back() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "images/backbt.png",
          width: 50.0,
        ),
      ),
    );
  }

  Widget g1btn() {
    return Container(
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/gamebt');
          },
          child: Image.asset(
            "images/game1.png",
            width: 300.0,
            height: 100.0,
          )),
    );
  }

  Widget g2btn() {
    return Container(
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/randombt');
          },
          child: Image.asset(
            "images/game4.png",
            width: 300.0,
            height: 100.0,
          )),
    );
  }

  Widget g3btn() {
    return Container(
      child: FlatButton(
          onPressed: () {
                        Navigator.pushNamed(context, '/bodthrngls2');
                      },
          child: Image.asset(
            "images/game3.png",
            width: 300.0,
            height: 100.0,
          )),
    );
  }

  Widget g4btn() {
    return Container(
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/imgprotitle');
          },
          child: Image.asset(
            "images/game2.png",
            width: 300.0,
            height: 100.0,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg2.jpg"), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Row(
                  children: [back()],
                ),
                gametitle(),
              ],
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [g1btn(),g4btn()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [g3btn(), g2btn()],
            )
          ],
        ),
      ),
    );
  }
}
