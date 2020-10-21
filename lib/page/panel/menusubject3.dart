import 'package:flutter/material.dart';

class Menusub3 extends StatefulWidget {
  Menusub3({Key key}) : super(key: key);

  @override
  _Menusub3State createState() => _Menusub3State();
}

class _Menusub3State extends State<Menusub3> {
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
        Navigator.pushNamed(context, '/menusub4');
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
              image: AssetImage('images/bgm/menu3.jpg'), fit: BoxFit.cover)),
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
                        'images/21.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot21');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/22.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot22');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/23.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot23');
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
                        'images/24.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot24');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/25.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot25');
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
                        'images/26.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot26');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/27.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot27');
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/28.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot28');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/9.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot29');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/30.png',
                        width: 150.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot30');
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
