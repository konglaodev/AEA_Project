import 'package:flutter/material.dart';

class Bodt2bt extends StatelessWidget {
  const Bodt2bt({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Bodt2() ,
    );
  }
}

class Bodt2 extends StatefulWidget {
  Bodt2({Key key}) : super(key: key);

  @override
  _Bodt2State createState() => _Bodt2State();
}

class _Bodt2State extends State<Bodt2> {

  Widget startgame() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/bodthrngtitle');
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
          Navigator.pushNamed(context,  '/bodthrngls17game');
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
