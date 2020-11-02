import 'package:flutter/material.dart';
import 'package:primaryschool/page/panel/SubjectGame.dart';

class Gamebodthrng extends StatelessWidget {
  const Gamebodthrng({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Gamebtg(),
    );
  }
}

class Gamebtg extends StatefulWidget {
  Gamebtg({Key key}) : super(key: key);

  @override
  _GamebtgState createState() => _GamebtgState();
}

class _GamebtgState extends State<Gamebtg> {

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


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bgm/menu2.png'), fit: BoxFit.cover)),
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
                        'images/2.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot11');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/6.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot12');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/9.png',
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
                        'images/10.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot14');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/14.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot15');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/17.png',
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
                        'images/31.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot16');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/44.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot17');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/46.png',
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
                        'images/48.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot18');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/52.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot19');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/58.png',
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
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}