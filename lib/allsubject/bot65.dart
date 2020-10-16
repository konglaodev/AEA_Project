import 'package:flutter/material.dart';

class Bot65 extends StatefulWidget {
  @override
  _Bot65State createState() => _Bot65State();
}

class _Bot65State extends State<Bot65> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ65'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot66');
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
                          'images/65.1.jpg',
                        ),
                        Image.asset(
                          'images/65.2.jpg',
                        ),
                        Image.asset(
                          'images/65.3.jpg',
                        ),
                        Image.asset(
                          'images/65.4.jpg',
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