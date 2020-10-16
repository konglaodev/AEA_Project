import 'package:flutter/material.dart';

class Bot50 extends StatefulWidget {
  @override
  _Bot50State createState() => _Bot50State();
}

class _Bot50State extends State<Bot50> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ50'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot51');
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
                          'images/50.1.jpg',
                        ),
                        Image.asset(
                          'images/50.2.jpg',
                        ),
                        Image.asset(
                          'images/50.3.jpg',
                        ),
                        Image.asset(
                          'images/50.4.jpg',
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