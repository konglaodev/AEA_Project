import 'package:flutter/material.dart';

class BodhnF extends StatefulWidget {
  BodhnF({Key key}) : super(key: key);

  @override
  _BodhnFState createState() => _BodhnFState();
}

class _BodhnFState extends State<BodhnF> {
  Widget title() {
    return Text(
      'ບົດຮຽນ',
      style: TextStyle(
          decoration: TextDecoration.none,
          color: Colors.white,
          fontSize: 50.0,
          fontWeight: FontWeight.bold),
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

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/flesson.jpg"), fit: BoxFit.cover)),
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
              children: [],
            ),
            SizedBox(
              height: 100.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
