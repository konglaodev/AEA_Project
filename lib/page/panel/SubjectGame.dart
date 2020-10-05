import 'package:flutter/material.dart';

class SubjectGame extends StatefulWidget {
  @override
  _SubjectGameState createState() => _SubjectGameState();
}

class _SubjectGameState extends State<SubjectGame> {
  Widget buttonsubjectgame() {
    return SizedBox(
      width: 250,
      height: 100,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/subject');
        },
        child: Image.asset('images/btgamebothien.png'),
      ),
    );
  }

  Widget buttonspacial() {
    return SizedBox(
      height: 100,
      width: 300,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Audiobook');
        },
        child: Image.asset('images/soundbt.png'),
      ),
    );
  }

  Widget btback() {
    return SizedBox(
      height: 50,
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Image.asset('images/backbt.png'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/bg2.jpg'), fit: BoxFit.fill),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                btback(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buttonsubjectgame(),
                SizedBox(width: 50.0),
                buttonspacial(),
              ],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
