import 'package:flutter/material.dart';

class Howgame1 extends StatefulWidget {
  Howgame1({Key key}) : super(key: key);

  @override
  _Howgame1State createState() => _Howgame1State();
}

class _Howgame1State extends State<Howgame1> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/rthibaiy.jpg"),
              fit: BoxFit.fill)),
              
    ); 
  }
}
