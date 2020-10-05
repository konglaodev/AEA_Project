import 'package:flutter/material.dart';

class ReadSound2 extends StatefulWidget {
  @override
  _ReadSound2State createState() => _ReadSound2State();
}

const mystyletext = TextStyle(
  fontSize: 50.0,
  backgroundColor: Color.fromARGB(255, 168, 135, 10),
);

class _ReadSound2State extends State<ReadSound2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            'ຫ້ອງຫັດອ່ານ ແລະ ຟັງໜັງສືສຽງ',
            style: TextStyle(
                fontSize: 30,
                fontFamily: 'lao',
                color: Color.fromARGB(255, 184, 133, 13),
                fontWeight: FontWeight.bold),
          ),
        ]),
        elevation: 0.3,
      ),
      body: Container(
        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  /////////widget
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
