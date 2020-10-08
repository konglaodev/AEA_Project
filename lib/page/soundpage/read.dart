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
  Widget inkwell() {
    return InkWell(
      hoverColor: Colors.orange.shade600,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
            child: Text(
              'ບົດທີ1 ຫັດອ່ານ',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
            child: Icon(Icons.play_arrow),
          )
        ],
      ),
      onTap: () {
        Navigator.pushNamed(context, '/lession1');
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text(
            'ຫ້ອງຫັດອ່ານ',
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
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                InkWell(
                  hoverColor: Colors.orange.shade600,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 10, 0, 10),
                        child: Text(
                          'ບົດທີ1 ຫັດອ່ານ',
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                        child: Icon(Icons.play_arrow),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/lession1');
                  },
                ),
                Divider(),
                inkwell(),
                Divider(),
                inkwell(),
                Divider(),
                inkwell(),
                Divider(),
                inkwell(),
                Divider(),
                inkwell(),
                Divider(),
                inkwell(),
                Divider(),
                inkwell(),
                Divider(),
                inkwell(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
