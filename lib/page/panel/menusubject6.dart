import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/SubjectGame.dart';
import 'package:primaryschool/page/panel/subandgame.dart';

class Menusub6 extends StatefulWidget {
  Menusub6({Key key}) : super(key: key);

  @override
  _Menusub6State createState() => _Menusub6State();
}

class _Menusub6State extends State<Menusub6> {
  Widget back() {
    return FlatButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/menusub5');
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
        Navigator.pushNamed(context, '/menusub7');
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
              image: AssetImage('images/bgbh.jpg'), fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/51.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot51');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/52.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot52');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/53.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot53');
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
                        'images/54.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot54');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/55.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot55');
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
                        'images/56.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot56');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/57.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot57');
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/58.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot58');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/59.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot59');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/60.png',
                        width: 150.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot60');
                      },
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                back(),
                FlatButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Subandgame()),
                      ModalRoute.withName('/subandjectGame'),
                    );
                  },
                  child: Image.asset(
                    "images/homepage.png",
                    width: 250,
                  ),
                ),
                next(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
