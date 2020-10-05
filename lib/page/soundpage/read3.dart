import 'package:flutter/material.dart';

class ReadSound3 extends StatefulWidget {
  @override
  _ReadSound3State createState() => _ReadSound3State();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _ReadSound3State extends State<ReadSound3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              'ນີທານ',
              style: mystyletext,
            ),
          ),
        ),
      ),
    );
  }
}
