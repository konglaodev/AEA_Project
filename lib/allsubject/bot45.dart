import 'package:flutter/material.dart';

class Bot45 extends StatefulWidget {
  @override
  _Bot45State createState() => _Bot45State();
}

class _Bot45State extends State<Bot45> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ45'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot46');
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
                          'images/45.1.jpg',
                        ),
                        Image.asset(
                          'images/45.2.jpg',
                        ),
                        Image.asset(
                          'images/45.3.jpg',
                        ),
                        Image.asset(
                          'images/45.4.jpg',
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