import 'package:flutter/material.dart';

class Subandgame extends StatefulWidget {
  Subandgame({Key key}) : super(key: key);

  @override
  _SubandgameState createState() => _SubandgameState();
}

class _SubandgameState extends State<Subandgame> {
  Widget title() {
    return Container(
       decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/Border2.png"), fit: BoxFit.fill)),
      width: 500,
     
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'ບົດຮຽນ ແລະ ເກມ',
            style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget firstbutton() {
    return Container(
      child: FlatButton(
        onPressed: () {
          Navigator.pushNamed(context, '/menusub');
        },
        child: Image.asset(
          'images/bothien.png',
          width: 180.0,
          height: 110.0,
        ),
      ),
    );
  }

  Widget secondbutton() {
    return Container(
      child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/game');
          },
          child: Image.asset(
            "images/iconbtgame.png",
            width: 200.0,
            height: 110.0,
          )),
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

  Widget icon2() {
    return Container(
      child: Image.asset(
        "images/btnext.png",
        width: 50.0,
      ),
    );
  }

  Widget star() {
    return Container(
      child: Image.asset(
        "images/star.png",
        width: 50.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/dekkapok.png"), fit: BoxFit.fill)),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Row(
              children: [back()],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [title()],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [firstbutton(), star(), secondbutton()],
            ),
            SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
