import 'package:flutter/material.dart';

class Howgame3 extends StatefulWidget {
  Howgame3({Key key}) : super(key: key);

  @override
  _Howgame3State createState() => _Howgame3State();
}

class _Howgame3State extends State<Howgame3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/Nar_12.jpg'), fit: BoxFit.fill)),
    );
  }
}