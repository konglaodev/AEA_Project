import 'package:flutter/material.dart';

class Gamebt extends StatefulWidget {
  Gamebt({Key key}) : super(key: key);

  @override
  _GamebtState createState() => _GamebtState();
}

class _GamebtState extends State<Gamebt> {
  Widget startgame() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/gamefirstlesson');
        },
        child: Image.asset(
          'images/start.png',
          width: 350.0,
          height: 200.0,
        ),
      ),
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

  Widget hintgame() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/firstbodhn');
        },
        child: Image.asset(
          'images/hint.png',
          width: 350.0,
          height: 200.0,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/NarinterfacegameBG.jpg"),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [back()],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [startgame(), hintgame()],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
