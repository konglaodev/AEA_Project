import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  Game({Key key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  Widget gametitle() {
    return Text(
      "ກະລຸນາເລືອກເກມ",
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 50.0,
          color: Colors.white,
          fontWeight: FontWeight.bold),
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
            "images/firstgbtn.png",
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
            "images/secondgbtn.png",
            width: 300.0,
            height: 100.0,
          )),
    );
  }

  Widget g3btn() {
    return Container(
      child: FlatButton(
          onPressed: null,
          child: Image.asset(
            "images/firstgbtn.png",
            width: 300.0,
            height: 100.0,
          )),
    );
  }

  Widget g4btn() {
    return Container(
      child: FlatButton(
          onPressed: null,
          child: Image.asset(
            "images/secondgbtn.png",
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
            Row(
              children: [back()],
            ),
            gametitle(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [g1btn(), g2btn()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [g3btn(), g4btn()],
            )
          ],
        ),
      ),
    );
  }
}
