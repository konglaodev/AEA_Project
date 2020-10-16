import 'package:flutter/material.dart';

class Bot38 extends StatefulWidget {
  @override
  _Bot38State createState() => _Bot38State();
}

class _Bot38State extends State<Bot38> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ38'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot39');
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
                          'images/38.1.jpg',
                        ),
                        Image.asset(
                          'images/38.2.jpg',
                        ),
                        Image.asset(
                          'images/38.3.jpg',
                        ),
                        Image.asset(
                          'images/38.4.jpg',
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
