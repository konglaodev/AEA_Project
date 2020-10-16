import 'package:flutter/material.dart';

class Bot6 extends StatefulWidget {
  @override
  _Bot6State createState() => _Bot6State();
}

class _Bot6State extends State<Bot6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ6'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot7');
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
                          'images/6.1.jpg',
                        ),
                        Image.asset(
                          'images/6.2.jpg',
                        ),
                        Image.asset(
                          'images/6.3.jpg',
                        ),
                        Image.asset(
                          'images/6.4.jpg',
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
