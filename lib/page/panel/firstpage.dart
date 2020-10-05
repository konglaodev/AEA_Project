import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget text() {
    return Text(
      'ຍີນດີຕ້ອນຮັບເຂົ້າສູ່ຫ້ອງຮຽນເອເລັກໂຕນີກ',
      style: TextStyle(
          decoration: TextDecoration.none,
          color: Colors.black87,
          fontSize: 30.0),
    );
  }

  Widget play() {
    return SizedBox(
        width: 200,
        height: 100,
        child: FlatButton(
            onPressed: () {
              Navigator.pushNamed(context, '/subjectGame');
            },
            child: Image.asset('images/playbt.png')));
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
          children: <Widget>[
            SizedBox(
              height: 30.0,
            ),
            text(),
            SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                play(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
