import 'package:flutter/material.dart';

class Bot52 extends StatefulWidget {
  @override
  _Bot52State createState() => _Bot52State();
}

class _Bot52State extends State<Bot52> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ52'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot53');
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
                          'images/52.1.jpg',
                        ),
                        Image.asset(
                          'images/52.2.jpg',
                        ),
                        Image.asset(
                          'images/52.3.jpg',
                        ),
                        Image.asset(
                          'images/52.4.jpg',
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