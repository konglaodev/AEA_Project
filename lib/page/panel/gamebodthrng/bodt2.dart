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
    return Container(
      width: 200.0,
      height: 110.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/start.png'), fit: BoxFit.fill)),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/bodthrngtitle');
        },
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
    return Container(
      width: 200.0,
      height: 100.0,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/hint.png'), fit: BoxFit.fill)),
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/game3howto');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/NarinterfacegameBG.jpg"),
              fit: BoxFit.fill)),
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
            children: [
              startgame(),
              SizedBox(
                height: 10,
              ),
              hintgame()
            ],
          ),
          SizedBox(
            height: 30.0,
          )
        ],
      ),
    );
  }
}
