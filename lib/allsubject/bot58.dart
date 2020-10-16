import 'package:flutter/material.dart';

class Bot58 extends StatefulWidget {
  @override
  _Bot58State createState() => _Bot58State();
}

class _Bot58State extends State<Bot58> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ58'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot59');
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
                          'images/58.1.jpg',
                        ),
                        Image.asset(
                          'images/58.2.jpg',
                        ),
                        Image.asset(
                          'images/58.3.jpg',
                        ),
                        Image.asset(
                          'images/58.4.jpg',
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