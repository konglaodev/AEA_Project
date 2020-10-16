import 'package:flutter/material.dart';

class Bot64 extends StatefulWidget {
  @override
  _Bot64State createState() => _Bot64State();
}

class _Bot64State extends State<Bot64> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ64'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot65');
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
                          'images/64.1.jpg',
                        ),
                        Image.asset(
                          'images/64.2.jpg',
                        ),
                        Image.asset(
                          'images/64.3.jpg',
                        ),
                        Image.asset(
                          'images/64.4.jpg',
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