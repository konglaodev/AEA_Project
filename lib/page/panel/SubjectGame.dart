import 'package:flutter/material.dart';

class SubjectGame extends StatefulWidget {
  @override
  _SubjectGameState createState() => _SubjectGameState();
}

class _SubjectGameState extends State<SubjectGame> {
  Widget hint() {
    return Container(
      child: FlatButton(onPressed: () {
          Navigator.pushNamed(context, '/howtoplayapp');
        }, child: Image.asset("images/Maiy tharm.png",width: 50,)),
    );
  }

  Widget bothienandgame() {
    return SizedBox(
      width: 250,
      height: 100,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/subandjectGame');
        },
        child: Image.asset('images/btgamebothien.png'),
      ),
    );
  }

  Widget buttonaudiobook() {
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
          Navigator.pushNamed(context, '/Home');
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
            image: AssetImage('images/bg2.jpg'), fit: BoxFit.cover),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                btback(),
                hint()
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                bothienandgame(),
                buttonaudiobook(),
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
