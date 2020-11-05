import 'package:flutter/material.dart';

class Bodt2bt extends StatelessWidget {
  const Bodt2bt({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Bodt2(),
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
    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '/bodthrngtitle');
      },
      child: Image.asset(
        'images/start.png',
        width: 270.0,
        height: 110.0,
      ),
    );
  }

  Widget back() {
    return FlatButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Image.asset(
        "images/backbt.png",
        width: 30.0,
      ),
    );
  }

  Widget hintgame() {
    return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '/bodthrngls17game');
      },
      child: Image.asset(
        'images/hint.png',
        width: 270.0,
        height: 110.0,
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
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [back()],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [startgame(), hintgame()],
          ),
          SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }
}
