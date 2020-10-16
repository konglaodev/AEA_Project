import 'package:flutter/material.dart';

class Bot35 extends StatefulWidget {
  @override
  _Bot35State createState() => _Bot35State();
}

class _Bot35State extends State<Bot35> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ35'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot36');
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
                          'images/35.1.jpg',
                        ),
                        Image.asset(
                          'images/35.2.jpg',
                        ),
                        Image.asset(
                          'images/35.3.jpg',
                        ),
                        Image.asset(
                          'images/35.6.jpg',
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
