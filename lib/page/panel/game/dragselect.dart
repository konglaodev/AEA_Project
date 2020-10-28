import 'package:flutter/material.dart';

class Dragselect extends StatelessWidget {
  const Dragselect({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Dragslt(),
    );
  }
}

class Dragslt extends StatefulWidget {
  Dragslt({Key key}) : super(key: key);

  @override
  _DragsltState createState() => _DragsltState();
}

class _DragsltState extends State<Dragslt> {

  Widget gametitle() {
    return Text(
      "ເລືອກປະເພດເກມ",
      style: TextStyle(decoration: TextDecoration.none,
          fontSize: 50.0, color: Colors.white, fontWeight: FontWeight.bold),
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

  Widget g1btn() {
    return Container(
      child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context,  '/dragame');
            },
          child: Image.asset(
            "images/colorfruit.png",
            width: 300.0,
            height: 200.0,
          )),
    );
  }

  Widget g2btn() {
    return Container(
      child: FlatButton(
           onPressed: () {
              Navigator.pushNamed(context,  '/dragcar');
            },
          child: Image.asset(
            "images/colorpick.png",
            width: 300.0,
            height: 200.0,
          )),
    );
  }

  Widget g3btn() {
    return Container(
      child: FlatButton(
           onPressed: () {
              Navigator.pushNamed(context,  '/dragplant');
            },
          child: Image.asset(
            "images/colorplant.png",
            width: 300.0,
            height: 200.0,
          )),
    );
  }

  Widget g4btn() {
    return Container(
      child: FlatButton(
         onPressed: () {
              Navigator.pushNamed(context, '/draganimal');
            },
          child: Image.asset(
            "images/coloranimal.png",
            width: 300.0,
            height: 200.0,
          )),
    );
  }
  @override
  Widget build(BuildContext context) {
   return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/NarinterfacegameBG.jpg"), fit: BoxFit.cover)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [back()],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [gametitle()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [g1btn(), g2btn()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [g3btn(),g4btn()],
            )
          ],
        ),
      ),
    );
  }
}
