import 'package:flutter/material.dart';

class Gamebt extends StatefulWidget {
  Gamebt({Key key}) : super(key: key);

  @override
  _GamebtState createState() => _GamebtState();
}

class _GamebtState extends State<Gamebt> {
  Widget startgame() {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/start.png'), fit: BoxFit.fill)),
      width: 200.0,
      height: 100.0,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/gamefirstlesson');
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
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/hint.png'), fit: BoxFit.fill)),
      width: 200.0,
      height: 100.0,
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/game1howto');
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: [back()],
          ),
          Column(
            children: [
              startgame(),
              SizedBox(
                height: 20,
              ),
              hintgame(),
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
