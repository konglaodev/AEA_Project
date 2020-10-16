import 'package:flutter/material.dart';

class ReadSound4 extends StatefulWidget {
  @override
  _ReadSound4State createState() => _ReadSound4State();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
);

class _ReadSound4State extends State<ReadSound4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              'ໄວໆນີ້',
              style: mystyletext,
            ),
          ),
        ),
      ),
    );
  }
}
