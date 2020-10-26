import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget text() {
    return SizedBox(
      height: 70.0,
      child: Text(
        'ຍີນດີຕ້ອນຮັບເຂົ້າສູ່ຫ້ອງຮຽນເອເລັກໂຕນີກ',
        style: TextStyle(
            decoration: TextDecoration.none,
            color: Colors.black87,
            fontSize: 30.0),
      ),
    );
  }

  Widget play() {
    return CircleAvatar(
      backgroundColor: Colors.white,
      foregroundColor: Colors.orangeAccent,
      radius: 60,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, '/subjectGame');
          },
          child: Image.asset(
            'images/playbt.png',
            width: 120,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/bg.jpg'), fit: BoxFit.fill)),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            text(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                play(),
              ],
            ),
            SizedBox(
              height: 70,
            ),
          ],
        ),
      ),
    );
  }
}
