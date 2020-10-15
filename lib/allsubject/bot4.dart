import 'package:flutter/material.dart';

class Bot4 extends StatefulWidget {
  @override
  _Bot4State createState() => _Bot4State();
}

class _Bot4State extends State<Bot4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ4'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot5');
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
                          'images/4.1.jpg',
                        ),
                        Image.asset(
                          'images/4.2.jpg',
                        ),
                        Image.asset(
                          'images/4.3.jpg',
                        ),
                        Image.asset(
                          'images/4.4.jpg',
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
