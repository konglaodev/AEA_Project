import 'package:flutter/material.dart';

class Menusub extends StatefulWidget {
  Menusub({Key key}) : super(key: key);

  @override
  _MenusubState createState() => _MenusubState();
}

class _MenusubState extends State<Menusub> {
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
        Navigator.pushNamed(context, '/menusub2');
      },
      child: Image.asset(
        "images/btnext.png",
        width: 40.0,
      ),
    );
  }
 Widget homebtn(){
   return FlatButton(
      onPressed: () {
        Navigator.pushNamed(context, '/subandjectGame');
      },
      child: Image.asset(
        "images/homepage.png",
        width: 180.0,
      ),
    );
 }


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bgm/menu1.jpg'), fit: BoxFit.cover)),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[   SizedBox(
                      height: 50.0,
                    ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/1.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot1');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/2.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot2');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/3.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot3');
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
                        'images/4.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot4');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/5.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot5');
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
                        'images/6.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot6');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/7.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot7');
                      },
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    FlatButton(
                      child: Image.asset(
                        'images/8.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot8');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/9.png',
                        width: 140.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot9');
                      },
                    ),
                    FlatButton(
                      child: Image.asset(
                        'images/10.png',
                        width: 150.0,
                        height: 70.0,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/bot10');
                      },
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                back(),
                homebtn(),
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
