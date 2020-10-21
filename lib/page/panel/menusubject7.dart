import 'package:flutter/material.dart';

class Menusub7 extends StatefulWidget {
  Menusub7({Key key}) : super(key: key);

  @override
  _Menusub7State createState() => _Menusub7State();
}

class _Menusub7State extends State<Menusub7> {
  Widget back() {
    return FlatButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Image.asset(
        "images/backbt.png",
        width: 40.0,
      ),
    );
  }

  Widget next() {
    return FlatButton(
      onPressed: () {},
      child: Image.asset(
        "images/btnext.png",
        width: 40.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bgm/menu6.png'), fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/61.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot61');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/62.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot62');
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/63.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot63');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/64.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot64');
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/65.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot65');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/66.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot66');
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                back(),
                next(),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }
}
