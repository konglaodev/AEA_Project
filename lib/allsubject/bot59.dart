import 'package:flutter/material.dart';

class Bot59 extends StatefulWidget {
  @override
  _Bot59State createState() => _Bot59State();
}

class _Bot59State extends State<Bot59> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ59'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot60');
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
                          'images/59.1.jpg',
                        ),
                        Image.asset(
                          'images/59.2.jpg',
                        ),
                        Image.asset(
                          'images/59.3.jpg',
                        ),
                        Image.asset(
                          'images/59.4.jpg',
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