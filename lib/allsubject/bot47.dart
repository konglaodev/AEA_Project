import 'package:flutter/material.dart';

class Bot47 extends StatefulWidget {
  @override
  _Bot47State createState() => _Bot47State();
}

class _Bot47State extends State<Bot47> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ47'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot48');
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
                          'images/47.1.jpg',
                        ),
                        Image.asset(
                          'images/47.2.jpg',
                        ),
                        Image.asset(
                          'images/47.3.jpg',
                        ),
                        Image.asset(
                          'images/47.4.jpg',
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