import 'package:flutter/material.dart';

class Bot60 extends StatefulWidget {
  @override
  _Bot60State createState() => _Bot60State();
}

class _Bot60State extends State<Bot60> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ60'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot61');
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
                          'images/60.1.jpg',
                        ),
                        Image.asset(
                          'images/60.2.jpg',
                        ),
                        Image.asset(
                          'images/60.3.jpg',
                        ),
                        Image.asset(
                          'images/60.4.jpg',
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