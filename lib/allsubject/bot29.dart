import 'package:flutter/material.dart';

class Bot29 extends StatefulWidget {
  @override
  _Bot29State createState() => _Bot29State();
}

class _Bot29State extends State<Bot29> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ29'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot30');
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
                          'images/5.1.jpg',
                        ),
                        Image.asset(
                          'images/5.2.jpg',
                        ),
                        Image.asset(
                          'images/5.3.jpg',
                        ),
                        Image.asset(
                          'images/5.4.jpg',
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
