import 'package:flutter/material.dart';

class Imgprotitle extends StatelessWidget {
  const Imgprotitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Drag(),
    );
  }
}

class Drag extends StatefulWidget {
  Drag({Key key}) : super(key: key);

  @override
  _DragState createState() => _DragState();
}

class _DragState extends State<Drag> {
  Widget startgame() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/imgquiz');
        },
        child: Image.asset(
          'images/start.png',
          width: 250.0,
          height: 100.0,
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
          Navigator.pushNamed(context, '/firstbodhn');
        },
        child: Image.asset(
          'images/hint.png',
          width: 250.0,
          height: 100.0,
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
          mainAxisAlignment:MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
           
            Row(
              children: [back()],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [startgame(),SizedBox(height: 50,), hintgame()],
            ),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
