import 'package:flutter/material.dart';

class ReadSound extends StatefulWidget {
  @override
  _ReadSoundState createState() => _ReadSoundState();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _ReadSoundState extends State<ReadSound> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SafeArea(
        child: Center(
          child: Container(
            child: Text(
              'ຫັດອ່ານ',
              style: mystyletext,
            ),
          ),
        ),
      ),
    );
  }
}
