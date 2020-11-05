import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  Game({Key key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

const textmystyle = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);

class _GameState extends State<Game> {
  Widget gametitle() {
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("images/Border2.png"), fit: BoxFit.fill)),
        width: 500,
        height: 100,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text(
            "ກະລຸນາເລືອກເກມ",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ]));
  }

  Widget back() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset(
          "images/backbt.png",
          width: 30.0,
        ),
      ),
    );
  }

  Widget g1btn() {
    return Container(
      width: 300.0,
      height: 100.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/buttonsl.png"), fit: BoxFit.fill)),
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/gamebt');
          },
          child: Text(
            'ເກມເລືອກຄວາມໝາຍຄຳອະທິບາຍສັບ',
            style: textmystyle,
          )),
    );
  }

  Widget g2btn() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/buttonsl.png"), fit: BoxFit.fill)),
      width: 300.0,
      height: 100.0,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/randombt');
        },
        // child: Image.asset(
        //   "images/game4.png",
        child: Text(
          'ເກມຈັບຄູ່ຮູບພາບ ',
          style: textmystyle,
        ),
      ),
    );
  }

  Widget g3btn() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/buttonsl.png"), fit: BoxFit.fill)),
      width: 300.0,
      height: 100.0,
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/bodthrngls2');
          },
          child: Text(
            'ເກມຕື່ມປະໂຫຍກບົດທ່ອງ',
            style: textmystyle,
          )),
    );
  }

  Widget g4btn() {
    return Container(
      width: 300.0,
      height: 100.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/buttonsl.png"), fit: BoxFit.fill)),
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/imgprotitle');
          },
          child: Text(
            'ເກມເລືອກຄວາມໝາຍຂອງຮູບ',
            style: textmystyle,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg2.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              back(),
            ],
          ),
          gametitle(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [g1btn(), g4btn()],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [g3btn(), g2btn()],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
