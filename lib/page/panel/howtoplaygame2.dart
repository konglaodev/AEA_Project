import 'package:flutter/material.dart';

class HOOW2 extends StatefulWidget {
  HOOW2({Key key}) : super(key: key);

  @override
  _HOOW2State createState() => _HOOW2State();
}

class _HOOW2State extends State<HOOW2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/how222.jpg'), fit: BoxFit.fill)),
    );
  }
}