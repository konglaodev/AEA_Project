import 'package:flutter/material.dart';

class Bot33 extends StatefulWidget {
  @override
  _Bot33State createState() => _Bot33State();
}

class _Bot33State extends State<Bot33> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ33'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot34');
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
                          'images/33.1.jpg',
                        ),
                        Image.asset(
                          'images/33.2.jpg',
                        ),
                        Image.asset(
                          'images/33.3.jpg',
                        ),
                        Image.asset(
                          'images/33.4.jpg',
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
