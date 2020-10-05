import 'package:flutter/material.dart';

class SubjectGame extends StatefulWidget {
  @override
  _SubjectGameState createState() => _SubjectGameState();
}

class _SubjectGameState extends State<SubjectGame> {
  Widget buttonsubjectgame() {
    return SizedBox(
        width: 250,
        height: 150,
        child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/subject');
            },
            child: Image.asset('images/btgamebothien.png')));
  }

  Widget buttonspacial() {
    return SizedBox(
      width: 250,
      height: 150,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/Audiobook');
        },
        child: Text(
          'ໜັງສືສຽງ',
          style: TextStyle(fontSize: 50.0, backgroundColor: Colors.white),
        ),
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
            child: Image.asset('images/backbt.png')));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg.jpg'), fit: BoxFit.fill)),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                btback(),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                buttonsubjectgame(),
                SizedBox(width: 50.0),
                buttonspacial(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
