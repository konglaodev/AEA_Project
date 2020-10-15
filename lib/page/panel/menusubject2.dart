import 'package:flutter/material.dart';

class Menusub2 extends StatefulWidget {
  Menusub2({Key key}) : super(key: key);

  @override
  _Menusub2State createState() => _Menusub2State();
}

class _Menusub2State extends State<Menusub2> {
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
      onPressed: () {
        Navigator.pushNamed(context, '/menusub3');
      },
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
              image: AssetImage('images/bgm/menu2.png'), fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/11.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot11');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/12.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot12');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/13.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot13');
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 70.0,
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/14.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot14');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/15.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot15');
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 70.0,
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/16.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot16');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/17.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot17');
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/18.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot18');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/19.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot19');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/20.png',
                        width: 150.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot20');
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
