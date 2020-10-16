import 'package:flutter/material.dart';

class Bot62 extends StatefulWidget {
  @override
  _Bot62State createState() => _Bot62State();
}

class _Bot62State extends State<Bot62> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade700,
        elevation: 0.0,
        title: Text('ບົດທີ62'),
        actions: <Widget>[
          IconButton(
            color: Colors.white,
            icon: Icon(Icons.arrow_forward_ios),
            onPressed: () {
              Navigator.pushNamed(context, '/bot63');
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
                          'images/62.1.jpg',
                        ),
                        Image.asset(
                          'images/62.2.jpg',
                        ),
                        Image.asset(
                          'images/62.3.jpg',
                        ),
                        Image.asset(
                          'images/62.4.jpg',
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