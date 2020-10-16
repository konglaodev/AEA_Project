import 'package:flutter/material.dart';

class Subandgame extends StatefulWidget {
  Subandgame({Key key}) : super(key: key);

  @override
  _SubandgameState createState() => _SubandgameState();
}

class _SubandgameState extends State<Subandgame> {
  Widget firstbutton() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/menusub');
        },
        child: Image.asset(
          'images/bothien.png',
          width: 195.0,
          height: 110.0,
        ),
      ),
    );
  }

  Widget secondbutton() {
    return Container(
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/game');
          },
          child: Image.asset(
            "images/iconbtgame.png",
            width: 195.0,
            height: 110.0,
          )),
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

  Widget icon2() {
    return Container(
      child: Image.asset(
        "images/btnext.png",
        width: 50.0,
      ),
    );
  }

  Widget star() {
    return Container(
      child: Image.asset(
        "images/star.png",
        width: 50.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/bg.jpg"), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [back()],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [firstbutton(), secondbutton()],
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
