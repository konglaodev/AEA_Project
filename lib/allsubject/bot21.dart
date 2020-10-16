import 'package:flutter/material.dart';

class Bot21 extends StatefulWidget {
  @override
  _Bot21State createState() => _Bot21State();
}

class _Bot21State extends State<Bot21> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ21'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot22');
            },
          ),
        ],
      ),
      body: Container(
        child: SafeArea(
          child: SingleChildScrollView(
            child: InteractiveViewer(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/21.1.jpg',
                        ),
                        Image.asset(
                          'images/22.2.jpg',
                        ),
                        Image.asset(
                          'images/22.3.jpg',
                        ),
                        Image.asset(
                          'images/22.4.jpg',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
